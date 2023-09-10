import 'package:flutter_assignment_fengo/data/models/coupon_model.dart';

abstract class CouponRepo {
  List<CouponModel> getCouponData();
}
