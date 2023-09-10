import 'package:flutter_assignment_fengo/data/data_providers/cart_data_provider/cart_data_provider.dart';
import 'package:flutter_assignment_fengo/data/repositories/cart_repo/cart_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_assignment_fengo/data/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartRepo cartRepo = CartDataProvider();
  CartBloc() : super(CartState.initial()) {
    on<CartEvent>((event, emit) {
      emit(state
          .copyWith(cartItems: {}, isLoading: true, itemCount: 0, total: 0.0));
      Map<ProductModel, int> cartItems = cartRepo.getCartItems();
      int count = 0;
      double totalAmount = 0.0;
      for (var x in cartItems.values) {
        count = count + x;
      }
      cartItems.forEach((key, value) {
        totalAmount = totalAmount + (key.price * value);
      });
      emit(state.copyWith(
          cartItems: cartItems,
          isLoading: false,
          itemCount: count,
          total: totalAmount));
    });
    on<Add>((event, emit) {
      cartRepo.addCount(event.id);
      add(const GetAllCart());
    });
    on<Remove>((event, emit) {
      cartRepo.decreseCount(event.id);
      add(const GetAllCart());
    });
  }
}
