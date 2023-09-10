part of 'coupon_cubit.dart';

@freezed
class CouponState with _$CouponState {
  const factory CouponState({required List<CouponModel> coupons}) = _Initial;
  factory CouponState.initial() =>const  CouponState(coupons: []);
}
