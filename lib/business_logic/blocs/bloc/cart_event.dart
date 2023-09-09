part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getAllCart() = GetAllCart;
  const factory CartEvent.remove(int id) = Remove;
  const factory CartEvent.add(int id) = Add;
}
