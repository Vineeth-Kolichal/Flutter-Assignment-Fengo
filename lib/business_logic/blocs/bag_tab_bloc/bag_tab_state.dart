part of 'bag_tab_bloc.dart';

@freezed
class BagTabState with _$BagTabState {
  const factory BagTabState(
      {required bool isLoading,
      required Map<ProductModel, int> cartItems,
      required double total,
      required int itemCount,
      required double? couponValue,
      required DeliveryMethod? deliveryMethod,
      required bool withoutCoupon,
      required String? selectedTimeSlot,
      required bool showInstructionTextField,
      required String? instruction}) = _Initial;

  //Set initial value of each state
  factory BagTabState.initial() => const BagTabState(
        isLoading: true,
        couponValue: null,
        deliveryMethod: null,
        withoutCoupon: false,
        cartItems: {},
        itemCount: 0,
        total: 0,
        selectedTimeSlot: null,
        showInstructionTextField: false,
        instruction: null,
      );
}
