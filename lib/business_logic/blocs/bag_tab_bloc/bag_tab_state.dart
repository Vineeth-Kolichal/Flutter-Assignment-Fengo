part of 'bag_tab_bloc.dart';

@freezed
class BagTabState with _$BagTabState {
  const factory BagTabState(
      {required double? couponValue,
      required DeliveryMethod? deliveryMethod,required bool withoutCoupon}) = _Initial;
  factory BagTabState.initial() =>
      const BagTabState(couponValue: null, deliveryMethod: null,withoutCoupon: false);
}
