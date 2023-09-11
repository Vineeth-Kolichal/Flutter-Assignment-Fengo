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
    on<GetAllCartItems>((event, emit) {
      emit(state.copyWith(cartItems: {}, itemCount: 0, total: 0.0));
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
      emit(state.copyWith(
          cartItems: cartItems, itemCount: count, total: totalAmount));
    });
    on<ItemCountIncrement>((event, emit) {
      cartRepo.addCount(event.id);
      add(const GetAllCartItems());
    });
    on<ItemCountDecrement>((event, emit) {
      cartRepo.decreseCount(event.id);
      add(const GetAllCartItems());
    });

    on<ApplyCoupon>((event, emit) {
      emit(state.copyWith(couponValue: event.amount));
    });
    on<SelectDeliverymethod>((event, emit) {
      emit(state.copyWith(deliveryMethod: event.deliveryMethod));
    });
    on<WithoutCoupon>((event, emit) {
      emit(state.copyWith(withoutCoupon: true));
    });
    on<SetCouponNotApplied>((event, emit) {
      emit(state.copyWith(couponValue: null));
    });
  }
}
