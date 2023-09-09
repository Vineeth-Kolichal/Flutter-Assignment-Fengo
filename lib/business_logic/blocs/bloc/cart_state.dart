part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState(
      {required Map<ProductModel, int> cartItems,
      required bool isLoading,required double total,required int itemCount}) = _Initial;
  factory CartState.initial() =>const  CartState(cartItems: {}, isLoading: false,itemCount: 0,total: 0.0);
}
