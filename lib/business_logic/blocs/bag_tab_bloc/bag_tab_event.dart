part of 'bag_tab_bloc.dart';

@freezed
class BagTabEvent with _$BagTabEvent {
  const factory BagTabEvent.getAllCartItems() = GetAllCartItems;
  const factory BagTabEvent.itemCountDecrement(int id) = ItemCountDecrement;
  const factory BagTabEvent.itemCountIncrement(int id) = ItemCountIncrement;
  const factory BagTabEvent.applyCoupon({required double amount}) = ApplyCoupon;
  const factory BagTabEvent.selectDeliveryMethod(
      {required DeliveryMethod deliveryMethod}) = SelectDeliverymethod;
  const factory BagTabEvent.withoutCoupon() = WithoutCoupon;
  const factory BagTabEvent.setCouponNotApplied() = SetCouponNotApplied;
}
