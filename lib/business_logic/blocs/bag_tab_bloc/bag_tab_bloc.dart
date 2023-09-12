import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/data/data_providers/cart_data_provider/cart_data_provider.dart';
import 'package:flutter_assignment_fengo/data/models/product_model.dart';
import 'package:flutter_assignment_fengo/data/repositories/cart_repo/cart_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bag_tab_event.dart';
part 'bag_tab_state.dart';
part 'bag_tab_bloc.freezed.dart';

class BagTabBloc extends Bloc<BagTabEvent, BagTabState> {
  CartRepo cartRepo = CartDataProvider();
  TextEditingController instructionController = TextEditingController();

  BagTabBloc() : super(BagTabState.initial()) {
    //Get all cart items
    on<GetAllCartItems>((event, emit) {
      emit(state.copyWith(isLoading: true));
      Map<ProductModel, int> cartItems = cartRepo.getCartItems();
      int count = 0;
      double totalAmount = 0.0;

      for (var x in cartItems.values) {
        count = count + x;
      }
      cartItems.forEach((key, value) {
        totalAmount = totalAmount + (key.price * value);
      });
      if (totalAmount < 300) {
        add(const SetCouponNotApplied());
      }
      //emiting cart to ui
      emit(state.copyWith(
          isLoading: false,
          cartItems: cartItems,
          itemCount: count,
          total: totalAmount));
    });

    //For changing the ui when the item count changes by the increment button click
    on<ItemCountIncrement>((event, emit) {
      cartRepo.addCount(event.id);
      add(const GetAllCartItems());
    });

    //For changing the ui when the item count changes by the decrement button click
    on<ItemCountDecrement>((event, emit) {
      cartRepo.decreseCount(event.id);
      add(const GetAllCartItems());
    });

    //To display the applied coupon value
    on<ApplyCoupon>((event, emit) {
      emit(state.copyWith(couponValue: event.amount));
    });
    //Update Ui when selecting a delivery method
    on<SelectDeliverymethod>((event, emit) {
      emit(state.copyWith(deliveryMethod: event.deliveryMethod));
    });

    // Update ui when user proceed order without coupon
    on<WithoutCoupon>((event, emit) {
      emit(state.copyWith(withoutCoupon: event.withoutCoupon));
    });

    //update ui if user decrese the item count and if the total amout fallen below 300
    on<SetCouponNotApplied>((event, emit) {
      emit(state.copyWith(couponValue: null));
    });

    //update ui when time slot selects
    on<SelectTimeSlotEvent>((event, emit) {
      emit(state.copyWith(selectedTimeSlot: event.timeSlot));
    });
    //edit delivery method
    on<EditDeliveryMethod>((event, emit) =>
        emit(state.copyWith(deliveryMethod: null, selectedTimeSlot: null)));

    //update ui when user click edit button of seleted time slot
    on<EditTimeSlot>(
        (event, emit) => emit(state.copyWith(selectedTimeSlot: null)));

    //show the textfield to add instructions
    on<ShowOrHideInstructionField>(
        (event, emit) => emit(state.copyWith(showInstructionTextField: true)));

    //udate ui when user adding instructions
    on<AddInstructions>((event, emit) => emit(state.copyWith(
        instruction: event.instruction, showInstructionTextField: false)));

    //show text field when user click edit button on the entered instruction
    on<ShowEditInstruction>((event, emit) => emit(
        state.copyWith(instruction: null, showInstructionTextField: true)));

    //udate Ui when user click on place order button
    on<PlaceOrder>((event, emit) {
      //log order details on debug console
      log("Cart Items :${state.cartItems}");
      log('Coupon value :${state.couponValue ?? 'proceed without coupon'}');
      log("Delivery method: ${state.deliveryMethod}");
      if (state.deliveryMethod == DeliveryMethod.takeDelivery) {
        log("Selected Time slot: ${state.selectedTimeSlot}");
      }
      log("instruction : ${state.instruction ?? "No instruction added"}");
      //clear the cart items
      cartRepo.placeOrder();
      //update ui to initial state
      emit(BagTabState.initial());
    });

    //update ui when user click on cance button
    on<CandelOrder>((event, emit) => emit(state.copyWith(
          couponValue: null,
          deliveryMethod: null,
          withoutCoupon: false,
          selectedTimeSlot: null,
          showInstructionTextField: false,
          instruction: null,
        )));
  }
}
