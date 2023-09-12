part of 'bag_tab_bloc.dart';

@freezed
class BagTabEvent with _$BagTabEvent {
  const factory BagTabEvent.getAllCartItems() = GetAllCartItems;
  const factory BagTabEvent.itemCountDecrement(int id) = ItemCountDecrement;
  const factory BagTabEvent.itemCountIncrement(int id) = ItemCountIncrement;
  const factory BagTabEvent.applyCoupon({required double amount}) = ApplyCoupon;
  const factory BagTabEvent.selectDeliveryMethod(
      {required DeliveryMethod deliveryMethod}) = SelectDeliverymethod;
  const factory BagTabEvent.withoutCoupon({required bool withoutCoupon}) =
      WithoutCoupon;
  const factory BagTabEvent.setCouponNotApplied() = SetCouponNotApplied;
  const factory BagTabEvent.selectTimeSlotEvent({required String timeSlot}) =
      SelectTimeSlotEvent;
  const factory BagTabEvent.editDeliveryMethod() = EditDeliveryMethod;
  const factory BagTabEvent.editTimeSlot() = EditTimeSlot;
  const factory BagTabEvent.showOrHideInstructionField({required bool show}) =
      ShowOrHideInstructionField;
  const factory BagTabEvent.addInstructions({required String instruction}) =
      AddInstructions;
  const factory BagTabEvent.showEditInstruction() = ShowEditInstruction;
  const factory BagTabEvent.placeOrder() = PlaceOrder;
  const factory BagTabEvent.cancelOrder() = CandelOrder;
}
