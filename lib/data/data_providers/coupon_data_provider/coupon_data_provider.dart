import 'package:flutter_assignment_fengo/data/data_providers/coupon_data_provider/coupons.dart';
import 'package:flutter_assignment_fengo/data/models/coupon_model.dart';
import 'package:flutter_assignment_fengo/data/repositories/coupon_repo/coupon_repo.dart';

class CouponDataProvider implements CouponRepo {
  @override
  List<CouponModel> getCouponData() {
    final Coupons coupons = Coupons.fromJson(couponJson);
    return coupons.couponList;
  }
}
