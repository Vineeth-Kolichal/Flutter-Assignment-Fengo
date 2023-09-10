import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bag_tab_event.dart';
part 'bag_tab_state.dart';
part 'bag_tab_bloc.freezed.dart';

class BagTabBloc extends Bloc<BagTabEvent, BagTabState> {
  BagTabBloc() : super(BagTabState.initial()) {
    on<ApplyCoupon>((event, emit) {
      emit(state.copyWith(couponValue: event.amount));
    });
    on<SelectDeliverymethod>((event, emit) {
      emit(state.copyWith(deliveryMethod: event.deliveryMethod));
    });
    on<WithoutCoupon>((event, emit) {
      emit(state.copyWith(withoutCoupon: true));
    });
  }
}
