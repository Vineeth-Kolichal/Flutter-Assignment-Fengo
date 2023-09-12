import 'dart:async';
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

  BagTabBloc() : super(BagTabState.initial()) {
    //Get all cart items
    on<GetAllCartItems>((event, emit) {
      //  emit(state.copyWith(cartItems: {}, itemCount: 0, total: 0.0));
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
          cartItems: cartItems, itemCount: count, total: totalAmount));
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

    on<EditTimeSlot>(
        (event, emit) => emit(state.copyWith(selectedTimeSlot: null)));
  }
}
