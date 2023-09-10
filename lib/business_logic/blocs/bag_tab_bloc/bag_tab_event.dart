part of 'bag_tab_bloc.dart';

@freezed
class BagTabEvent with _$BagTabEvent {
  const factory BagTabEvent.applyCoupon({required double amount}) = ApplyCoupon;
}