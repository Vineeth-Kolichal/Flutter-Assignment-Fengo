import 'package:flutter_assignment_fengo/data/data_providers/coupon_data_provider/coupon_data_provider.dart';
import 'package:flutter_assignment_fengo/data/models/coupon_model.dart';
import 'package:flutter_assignment_fengo/data/repositories/coupon_repo/coupon_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_state.dart';
part 'coupon_cubit.freezed.dart';

class CouponCubit extends Cubit<CouponState> {
  CouponRepo couponRepo = CouponDataProvider();
  CouponCubit() : super(CouponState.initial());
  void getCoupons() {
    final List<CouponModel> couponList = couponRepo.getCouponData();
    emit(state.copyWith(coupons: couponList));
  }
}
