// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bag_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BagTabEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(int id) itemCountDecrement,
    required TResult Function(int id) itemCountIncrement,
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function(bool withoutCoupon) withoutCoupon,
    required TResult Function() setCouponNotApplied,
    required TResult Function(String timeSlot) selectTimeSlotEvent,
    required TResult Function() editDeliveryMethod,
    required TResult Function() editTimeSlot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(int id)? itemCountDecrement,
    TResult? Function(int id)? itemCountIncrement,
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function(bool withoutCoupon)? withoutCoupon,
    TResult? Function()? setCouponNotApplied,
    TResult? Function(String timeSlot)? selectTimeSlotEvent,
    TResult? Function()? editDeliveryMethod,
    TResult? Function()? editTimeSlot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(int id)? itemCountDecrement,
    TResult Function(int id)? itemCountIncrement,
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function(bool withoutCoupon)? withoutCoupon,
    TResult Function()? setCouponNotApplied,
    TResult Function(String timeSlot)? selectTimeSlotEvent,
    TResult Function()? editDeliveryMethod,
    TResult Function()? editTimeSlot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(ItemCountDecrement value) itemCountDecrement,
    required TResult Function(ItemCountIncrement value) itemCountIncrement,
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
    required TResult Function(SetCouponNotApplied value) setCouponNotApplied,
    required TResult Function(SelectTimeSlotEvent value) selectTimeSlotEvent,
    required TResult Function(EditDeliveryMethod value) editDeliveryMethod,
    required TResult Function(EditTimeSlot value) editTimeSlot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(ItemCountDecrement value)? itemCountDecrement,
    TResult? Function(ItemCountIncrement value)? itemCountIncrement,
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
    TResult? Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult? Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult? Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult? Function(EditTimeSlot value)? editTimeSlot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(ItemCountDecrement value)? itemCountDecrement,
    TResult Function(ItemCountIncrement value)? itemCountIncrement,
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
    TResult Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult Function(EditTimeSlot value)? editTimeSlot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BagTabEventCopyWith<$Res> {
  factory $BagTabEventCopyWith(
          BagTabEvent value, $Res Function(BagTabEvent) then) =
      _$BagTabEventCopyWithImpl<$Res, BagTabEvent>;
}

/// @nodoc
class _$BagTabEventCopyWithImpl<$Res, $Val extends BagTabEvent>
    implements $BagTabEventCopyWith<$Res> {
  _$BagTabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllCartItemsCopyWith<$Res> {
  factory _$$GetAllCartItemsCopyWith(
          _$GetAllCartItems value, $Res Function(_$GetAllCartItems) then) =
      __$$GetAllCartItemsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllCartItemsCopyWithImpl<$Res>
    extends _$BagTabEventCopyWithImpl<$Res, _$GetAllCartItems>
    implements _$$GetAllCartItemsCopyWith<$Res> {
  __$$GetAllCartItemsCopyWithImpl(
      _$GetAllCartItems _value, $Res Function(_$GetAllCartItems) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllCartItems implements GetAllCartItems {
  const _$GetAllCartItems();

  @override
  String toString() {
    return 'BagTabEvent.getAllCartItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllCartItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(int id) itemCountDecrement,
    required TResult Function(int id) itemCountIncrement,
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function(bool withoutCoupon) withoutCoupon,
    required TResult Function() setCouponNotApplied,
    required TResult Function(String timeSlot) selectTimeSlotEvent,
    required TResult Function() editDeliveryMethod,
    required TResult Function() editTimeSlot,
  }) {
    return getAllCartItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(int id)? itemCountDecrement,
    TResult? Function(int id)? itemCountIncrement,
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function(bool withoutCoupon)? withoutCoupon,
    TResult? Function()? setCouponNotApplied,
    TResult? Function(String timeSlot)? selectTimeSlotEvent,
    TResult? Function()? editDeliveryMethod,
    TResult? Function()? editTimeSlot,
  }) {
    return getAllCartItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(int id)? itemCountDecrement,
    TResult Function(int id)? itemCountIncrement,
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function(bool withoutCoupon)? withoutCoupon,
    TResult Function()? setCouponNotApplied,
    TResult Function(String timeSlot)? selectTimeSlotEvent,
    TResult Function()? editDeliveryMethod,
    TResult Function()? editTimeSlot,
    required TResult orElse(),
  }) {
    if (getAllCartItems != null) {
      return getAllCartItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(ItemCountDecrement value) itemCountDecrement,
    required TResult Function(ItemCountIncrement value) itemCountIncrement,
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
    required TResult Function(SetCouponNotApplied value) setCouponNotApplied,
    required TResult Function(SelectTimeSlotEvent value) selectTimeSlotEvent,
    required TResult Function(EditDeliveryMethod value) editDeliveryMethod,
    required TResult Function(EditTimeSlot value) editTimeSlot,
  }) {
    return getAllCartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(ItemCountDecrement value)? itemCountDecrement,
    TResult? Function(ItemCountIncrement value)? itemCountIncrement,
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
    TResult? Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult? Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult? Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult? Function(EditTimeSlot value)? editTimeSlot,
  }) {
    return getAllCartItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(ItemCountDecrement value)? itemCountDecrement,
    TResult Function(ItemCountIncrement value)? itemCountIncrement,
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
    TResult Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult Function(EditTimeSlot value)? editTimeSlot,
    required TResult orElse(),
  }) {
    if (getAllCartItems != null) {
      return getAllCartItems(this);
    }
    return orElse();
  }
}

abstract class GetAllCartItems implements BagTabEvent {
  const factory GetAllCartItems() = _$GetAllCartItems;
}

/// @nodoc
abstract class _$$ItemCountDecrementCopyWith<$Res> {
  factory _$$ItemCountDecrementCopyWith(_$ItemCountDecrement value,
          $Res Function(_$ItemCountDecrement) then) =
      __$$ItemCountDecrementCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ItemCountDecrementCopyWithImpl<$Res>
    extends _$BagTabEventCopyWithImpl<$Res, _$ItemCountDecrement>
    implements _$$ItemCountDecrementCopyWith<$Res> {
  __$$ItemCountDecrementCopyWithImpl(
      _$ItemCountDecrement _value, $Res Function(_$ItemCountDecrement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ItemCountDecrement(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ItemCountDecrement implements ItemCountDecrement {
  const _$ItemCountDecrement(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'BagTabEvent.itemCountDecrement(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemCountDecrement &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemCountDecrementCopyWith<_$ItemCountDecrement> get copyWith =>
      __$$ItemCountDecrementCopyWithImpl<_$ItemCountDecrement>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(int id) itemCountDecrement,
    required TResult Function(int id) itemCountIncrement,
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function(bool withoutCoupon) withoutCoupon,
    required TResult Function() setCouponNotApplied,
    required TResult Function(String timeSlot) selectTimeSlotEvent,
    required TResult Function() editDeliveryMethod,
    required TResult Function() editTimeSlot,
  }) {
    return itemCountDecrement(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(int id)? itemCountDecrement,
    TResult? Function(int id)? itemCountIncrement,
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function(bool withoutCoupon)? withoutCoupon,
    TResult? Function()? setCouponNotApplied,
    TResult? Function(String timeSlot)? selectTimeSlotEvent,
    TResult? Function()? editDeliveryMethod,
    TResult? Function()? editTimeSlot,
  }) {
    return itemCountDecrement?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(int id)? itemCountDecrement,
    TResult Function(int id)? itemCountIncrement,
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function(bool withoutCoupon)? withoutCoupon,
    TResult Function()? setCouponNotApplied,
    TResult Function(String timeSlot)? selectTimeSlotEvent,
    TResult Function()? editDeliveryMethod,
    TResult Function()? editTimeSlot,
    required TResult orElse(),
  }) {
    if (itemCountDecrement != null) {
      return itemCountDecrement(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(ItemCountDecrement value) itemCountDecrement,
    required TResult Function(ItemCountIncrement value) itemCountIncrement,
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
    required TResult Function(SetCouponNotApplied value) setCouponNotApplied,
    required TResult Function(SelectTimeSlotEvent value) selectTimeSlotEvent,
    required TResult Function(EditDeliveryMethod value) editDeliveryMethod,
    required TResult Function(EditTimeSlot value) editTimeSlot,
  }) {
    return itemCountDecrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(ItemCountDecrement value)? itemCountDecrement,
    TResult? Function(ItemCountIncrement value)? itemCountIncrement,
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
    TResult? Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult? Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult? Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult? Function(EditTimeSlot value)? editTimeSlot,
  }) {
    return itemCountDecrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(ItemCountDecrement value)? itemCountDecrement,
    TResult Function(ItemCountIncrement value)? itemCountIncrement,
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
    TResult Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult Function(EditTimeSlot value)? editTimeSlot,
    required TResult orElse(),
  }) {
    if (itemCountDecrement != null) {
      return itemCountDecrement(this);
    }
    return orElse();
  }
}

abstract class ItemCountDecrement implements BagTabEvent {
  const factory ItemCountDecrement(final int id) = _$ItemCountDecrement;

  int get id;
  @JsonKey(ignore: true)
  _$$ItemCountDecrementCopyWith<_$ItemCountDecrement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemCountIncrementCopyWith<$Res> {
  factory _$$ItemCountIncrementCopyWith(_$ItemCountIncrement value,
          $Res Function(_$ItemCountIncrement) then) =
      __$$ItemCountIncrementCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ItemCountIncrementCopyWithImpl<$Res>
    extends _$BagTabEventCopyWithImpl<$Res, _$ItemCountIncrement>
    implements _$$ItemCountIncrementCopyWith<$Res> {
  __$$ItemCountIncrementCopyWithImpl(
      _$ItemCountIncrement _value, $Res Function(_$ItemCountIncrement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ItemCountIncrement(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ItemCountIncrement implements ItemCountIncrement {
  const _$ItemCountIncrement(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'BagTabEvent.itemCountIncrement(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemCountIncrement &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemCountIncrementCopyWith<_$ItemCountIncrement> get copyWith =>
      __$$ItemCountIncrementCopyWithImpl<_$ItemCountIncrement>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(int id) itemCountDecrement,
    required TResult Function(int id) itemCountIncrement,
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function(bool withoutCoupon) withoutCoupon,
    required TResult Function() setCouponNotApplied,
    required TResult Function(String timeSlot) selectTimeSlotEvent,
    required TResult Function() editDeliveryMethod,
    required TResult Function() editTimeSlot,
  }) {
    return itemCountIncrement(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(int id)? itemCountDecrement,
    TResult? Function(int id)? itemCountIncrement,
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function(bool withoutCoupon)? withoutCoupon,
    TResult? Function()? setCouponNotApplied,
    TResult? Function(String timeSlot)? selectTimeSlotEvent,
    TResult? Function()? editDeliveryMethod,
    TResult? Function()? editTimeSlot,
  }) {
    return itemCountIncrement?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(int id)? itemCountDecrement,
    TResult Function(int id)? itemCountIncrement,
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function(bool withoutCoupon)? withoutCoupon,
    TResult Function()? setCouponNotApplied,
    TResult Function(String timeSlot)? selectTimeSlotEvent,
    TResult Function()? editDeliveryMethod,
    TResult Function()? editTimeSlot,
    required TResult orElse(),
  }) {
    if (itemCountIncrement != null) {
      return itemCountIncrement(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(ItemCountDecrement value) itemCountDecrement,
    required TResult Function(ItemCountIncrement value) itemCountIncrement,
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
    required TResult Function(SetCouponNotApplied value) setCouponNotApplied,
    required TResult Function(SelectTimeSlotEvent value) selectTimeSlotEvent,
    required TResult Function(EditDeliveryMethod value) editDeliveryMethod,
    required TResult Function(EditTimeSlot value) editTimeSlot,
  }) {
    return itemCountIncrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(ItemCountDecrement value)? itemCountDecrement,
    TResult? Function(ItemCountIncrement value)? itemCountIncrement,
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
    TResult? Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult? Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult? Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult? Function(EditTimeSlot value)? editTimeSlot,
  }) {
    return itemCountIncrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(ItemCountDecrement value)? itemCountDecrement,
    TResult Function(ItemCountIncrement value)? itemCountIncrement,
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
    TResult Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult Function(EditTimeSlot value)? editTimeSlot,
    required TResult orElse(),
  }) {
    if (itemCountIncrement != null) {
      return itemCountIncrement(this);
    }
    return orElse();
  }
}

abstract class ItemCountIncrement implements BagTabEvent {
  const factory ItemCountIncrement(final int id) = _$ItemCountIncrement;

  int get id;
  @JsonKey(ignore: true)
  _$$ItemCountIncrementCopyWith<_$ItemCountIncrement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplyCouponCopyWith<$Res> {
  factory _$$ApplyCouponCopyWith(
          _$ApplyCoupon value, $Res Function(_$ApplyCoupon) then) =
      __$$ApplyCouponCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$ApplyCouponCopyWithImpl<$Res>
    extends _$BagTabEventCopyWithImpl<$Res, _$ApplyCoupon>
    implements _$$ApplyCouponCopyWith<$Res> {
  __$$ApplyCouponCopyWithImpl(
      _$ApplyCoupon _value, $Res Function(_$ApplyCoupon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$ApplyCoupon(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ApplyCoupon implements ApplyCoupon {
  const _$ApplyCoupon({required this.amount});

  @override
  final double amount;

  @override
  String toString() {
    return 'BagTabEvent.applyCoupon(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyCoupon &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyCouponCopyWith<_$ApplyCoupon> get copyWith =>
      __$$ApplyCouponCopyWithImpl<_$ApplyCoupon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(int id) itemCountDecrement,
    required TResult Function(int id) itemCountIncrement,
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function(bool withoutCoupon) withoutCoupon,
    required TResult Function() setCouponNotApplied,
    required TResult Function(String timeSlot) selectTimeSlotEvent,
    required TResult Function() editDeliveryMethod,
    required TResult Function() editTimeSlot,
  }) {
    return applyCoupon(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(int id)? itemCountDecrement,
    TResult? Function(int id)? itemCountIncrement,
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function(bool withoutCoupon)? withoutCoupon,
    TResult? Function()? setCouponNotApplied,
    TResult? Function(String timeSlot)? selectTimeSlotEvent,
    TResult? Function()? editDeliveryMethod,
    TResult? Function()? editTimeSlot,
  }) {
    return applyCoupon?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(int id)? itemCountDecrement,
    TResult Function(int id)? itemCountIncrement,
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function(bool withoutCoupon)? withoutCoupon,
    TResult Function()? setCouponNotApplied,
    TResult Function(String timeSlot)? selectTimeSlotEvent,
    TResult Function()? editDeliveryMethod,
    TResult Function()? editTimeSlot,
    required TResult orElse(),
  }) {
    if (applyCoupon != null) {
      return applyCoupon(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(ItemCountDecrement value) itemCountDecrement,
    required TResult Function(ItemCountIncrement value) itemCountIncrement,
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
    required TResult Function(SetCouponNotApplied value) setCouponNotApplied,
    required TResult Function(SelectTimeSlotEvent value) selectTimeSlotEvent,
    required TResult Function(EditDeliveryMethod value) editDeliveryMethod,
    required TResult Function(EditTimeSlot value) editTimeSlot,
  }) {
    return applyCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(ItemCountDecrement value)? itemCountDecrement,
    TResult? Function(ItemCountIncrement value)? itemCountIncrement,
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
    TResult? Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult? Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult? Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult? Function(EditTimeSlot value)? editTimeSlot,
  }) {
    return applyCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(ItemCountDecrement value)? itemCountDecrement,
    TResult Function(ItemCountIncrement value)? itemCountIncrement,
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
    TResult Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult Function(EditTimeSlot value)? editTimeSlot,
    required TResult orElse(),
  }) {
    if (applyCoupon != null) {
      return applyCoupon(this);
    }
    return orElse();
  }
}

abstract class ApplyCoupon implements BagTabEvent {
  const factory ApplyCoupon({required final double amount}) = _$ApplyCoupon;

  double get amount;
  @JsonKey(ignore: true)
  _$$ApplyCouponCopyWith<_$ApplyCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectDeliverymethodCopyWith<$Res> {
  factory _$$SelectDeliverymethodCopyWith(_$SelectDeliverymethod value,
          $Res Function(_$SelectDeliverymethod) then) =
      __$$SelectDeliverymethodCopyWithImpl<$Res>;
  @useResult
  $Res call({DeliveryMethod deliveryMethod});
}

/// @nodoc
class __$$SelectDeliverymethodCopyWithImpl<$Res>
    extends _$BagTabEventCopyWithImpl<$Res, _$SelectDeliverymethod>
    implements _$$SelectDeliverymethodCopyWith<$Res> {
  __$$SelectDeliverymethodCopyWithImpl(_$SelectDeliverymethod _value,
      $Res Function(_$SelectDeliverymethod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryMethod = null,
  }) {
    return _then(_$SelectDeliverymethod(
      deliveryMethod: null == deliveryMethod
          ? _value.deliveryMethod
          : deliveryMethod // ignore: cast_nullable_to_non_nullable
              as DeliveryMethod,
    ));
  }
}

/// @nodoc

class _$SelectDeliverymethod implements SelectDeliverymethod {
  const _$SelectDeliverymethod({required this.deliveryMethod});

  @override
  final DeliveryMethod deliveryMethod;

  @override
  String toString() {
    return 'BagTabEvent.selectDeliveryMethod(deliveryMethod: $deliveryMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDeliverymethod &&
            (identical(other.deliveryMethod, deliveryMethod) ||
                other.deliveryMethod == deliveryMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deliveryMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDeliverymethodCopyWith<_$SelectDeliverymethod> get copyWith =>
      __$$SelectDeliverymethodCopyWithImpl<_$SelectDeliverymethod>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(int id) itemCountDecrement,
    required TResult Function(int id) itemCountIncrement,
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function(bool withoutCoupon) withoutCoupon,
    required TResult Function() setCouponNotApplied,
    required TResult Function(String timeSlot) selectTimeSlotEvent,
    required TResult Function() editDeliveryMethod,
    required TResult Function() editTimeSlot,
  }) {
    return selectDeliveryMethod(deliveryMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(int id)? itemCountDecrement,
    TResult? Function(int id)? itemCountIncrement,
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function(bool withoutCoupon)? withoutCoupon,
    TResult? Function()? setCouponNotApplied,
    TResult? Function(String timeSlot)? selectTimeSlotEvent,
    TResult? Function()? editDeliveryMethod,
    TResult? Function()? editTimeSlot,
  }) {
    return selectDeliveryMethod?.call(deliveryMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(int id)? itemCountDecrement,
    TResult Function(int id)? itemCountIncrement,
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function(bool withoutCoupon)? withoutCoupon,
    TResult Function()? setCouponNotApplied,
    TResult Function(String timeSlot)? selectTimeSlotEvent,
    TResult Function()? editDeliveryMethod,
    TResult Function()? editTimeSlot,
    required TResult orElse(),
  }) {
    if (selectDeliveryMethod != null) {
      return selectDeliveryMethod(deliveryMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(ItemCountDecrement value) itemCountDecrement,
    required TResult Function(ItemCountIncrement value) itemCountIncrement,
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
    required TResult Function(SetCouponNotApplied value) setCouponNotApplied,
    required TResult Function(SelectTimeSlotEvent value) selectTimeSlotEvent,
    required TResult Function(EditDeliveryMethod value) editDeliveryMethod,
    required TResult Function(EditTimeSlot value) editTimeSlot,
  }) {
    return selectDeliveryMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(ItemCountDecrement value)? itemCountDecrement,
    TResult? Function(ItemCountIncrement value)? itemCountIncrement,
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
    TResult? Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult? Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult? Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult? Function(EditTimeSlot value)? editTimeSlot,
  }) {
    return selectDeliveryMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(ItemCountDecrement value)? itemCountDecrement,
    TResult Function(ItemCountIncrement value)? itemCountIncrement,
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
    TResult Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult Function(EditTimeSlot value)? editTimeSlot,
    required TResult orElse(),
  }) {
    if (selectDeliveryMethod != null) {
      return selectDeliveryMethod(this);
    }
    return orElse();
  }
}

abstract class SelectDeliverymethod implements BagTabEvent {
  const factory SelectDeliverymethod(
      {required final DeliveryMethod deliveryMethod}) = _$SelectDeliverymethod;

  DeliveryMethod get deliveryMethod;
  @JsonKey(ignore: true)
  _$$SelectDeliverymethodCopyWith<_$SelectDeliverymethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WithoutCouponCopyWith<$Res> {
  factory _$$WithoutCouponCopyWith(
          _$WithoutCoupon value, $Res Function(_$WithoutCoupon) then) =
      __$$WithoutCouponCopyWithImpl<$Res>;
  @useResult
  $Res call({bool withoutCoupon});
}

/// @nodoc
class __$$WithoutCouponCopyWithImpl<$Res>
    extends _$BagTabEventCopyWithImpl<$Res, _$WithoutCoupon>
    implements _$$WithoutCouponCopyWith<$Res> {
  __$$WithoutCouponCopyWithImpl(
      _$WithoutCoupon _value, $Res Function(_$WithoutCoupon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withoutCoupon = null,
  }) {
    return _then(_$WithoutCoupon(
      withoutCoupon: null == withoutCoupon
          ? _value.withoutCoupon
          : withoutCoupon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WithoutCoupon implements WithoutCoupon {
  const _$WithoutCoupon({required this.withoutCoupon});

  @override
  final bool withoutCoupon;

  @override
  String toString() {
    return 'BagTabEvent.withoutCoupon(withoutCoupon: $withoutCoupon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithoutCoupon &&
            (identical(other.withoutCoupon, withoutCoupon) ||
                other.withoutCoupon == withoutCoupon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, withoutCoupon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithoutCouponCopyWith<_$WithoutCoupon> get copyWith =>
      __$$WithoutCouponCopyWithImpl<_$WithoutCoupon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(int id) itemCountDecrement,
    required TResult Function(int id) itemCountIncrement,
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function(bool withoutCoupon) withoutCoupon,
    required TResult Function() setCouponNotApplied,
    required TResult Function(String timeSlot) selectTimeSlotEvent,
    required TResult Function() editDeliveryMethod,
    required TResult Function() editTimeSlot,
  }) {
    return withoutCoupon(this.withoutCoupon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(int id)? itemCountDecrement,
    TResult? Function(int id)? itemCountIncrement,
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function(bool withoutCoupon)? withoutCoupon,
    TResult? Function()? setCouponNotApplied,
    TResult? Function(String timeSlot)? selectTimeSlotEvent,
    TResult? Function()? editDeliveryMethod,
    TResult? Function()? editTimeSlot,
  }) {
    return withoutCoupon?.call(this.withoutCoupon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(int id)? itemCountDecrement,
    TResult Function(int id)? itemCountIncrement,
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function(bool withoutCoupon)? withoutCoupon,
    TResult Function()? setCouponNotApplied,
    TResult Function(String timeSlot)? selectTimeSlotEvent,
    TResult Function()? editDeliveryMethod,
    TResult Function()? editTimeSlot,
    required TResult orElse(),
  }) {
    if (withoutCoupon != null) {
      return withoutCoupon(this.withoutCoupon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(ItemCountDecrement value) itemCountDecrement,
    required TResult Function(ItemCountIncrement value) itemCountIncrement,
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
    required TResult Function(SetCouponNotApplied value) setCouponNotApplied,
    required TResult Function(SelectTimeSlotEvent value) selectTimeSlotEvent,
    required TResult Function(EditDeliveryMethod value) editDeliveryMethod,
    required TResult Function(EditTimeSlot value) editTimeSlot,
  }) {
    return withoutCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(ItemCountDecrement value)? itemCountDecrement,
    TResult? Function(ItemCountIncrement value)? itemCountIncrement,
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
    TResult? Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult? Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult? Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult? Function(EditTimeSlot value)? editTimeSlot,
  }) {
    return withoutCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(ItemCountDecrement value)? itemCountDecrement,
    TResult Function(ItemCountIncrement value)? itemCountIncrement,
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
    TResult Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult Function(EditTimeSlot value)? editTimeSlot,
    required TResult orElse(),
  }) {
    if (withoutCoupon != null) {
      return withoutCoupon(this);
    }
    return orElse();
  }
}

abstract class WithoutCoupon implements BagTabEvent {
  const factory WithoutCoupon({required final bool withoutCoupon}) =
      _$WithoutCoupon;

  bool get withoutCoupon;
  @JsonKey(ignore: true)
  _$$WithoutCouponCopyWith<_$WithoutCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCouponNotAppliedCopyWith<$Res> {
  factory _$$SetCouponNotAppliedCopyWith(_$SetCouponNotApplied value,
          $Res Function(_$SetCouponNotApplied) then) =
      __$$SetCouponNotAppliedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetCouponNotAppliedCopyWithImpl<$Res>
    extends _$BagTabEventCopyWithImpl<$Res, _$SetCouponNotApplied>
    implements _$$SetCouponNotAppliedCopyWith<$Res> {
  __$$SetCouponNotAppliedCopyWithImpl(
      _$SetCouponNotApplied _value, $Res Function(_$SetCouponNotApplied) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetCouponNotApplied implements SetCouponNotApplied {
  const _$SetCouponNotApplied();

  @override
  String toString() {
    return 'BagTabEvent.setCouponNotApplied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetCouponNotApplied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(int id) itemCountDecrement,
    required TResult Function(int id) itemCountIncrement,
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function(bool withoutCoupon) withoutCoupon,
    required TResult Function() setCouponNotApplied,
    required TResult Function(String timeSlot) selectTimeSlotEvent,
    required TResult Function() editDeliveryMethod,
    required TResult Function() editTimeSlot,
  }) {
    return setCouponNotApplied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(int id)? itemCountDecrement,
    TResult? Function(int id)? itemCountIncrement,
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function(bool withoutCoupon)? withoutCoupon,
    TResult? Function()? setCouponNotApplied,
    TResult? Function(String timeSlot)? selectTimeSlotEvent,
    TResult? Function()? editDeliveryMethod,
    TResult? Function()? editTimeSlot,
  }) {
    return setCouponNotApplied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(int id)? itemCountDecrement,
    TResult Function(int id)? itemCountIncrement,
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function(bool withoutCoupon)? withoutCoupon,
    TResult Function()? setCouponNotApplied,
    TResult Function(String timeSlot)? selectTimeSlotEvent,
    TResult Function()? editDeliveryMethod,
    TResult Function()? editTimeSlot,
    required TResult orElse(),
  }) {
    if (setCouponNotApplied != null) {
      return setCouponNotApplied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(ItemCountDecrement value) itemCountDecrement,
    required TResult Function(ItemCountIncrement value) itemCountIncrement,
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
    required TResult Function(SetCouponNotApplied value) setCouponNotApplied,
    required TResult Function(SelectTimeSlotEvent value) selectTimeSlotEvent,
    required TResult Function(EditDeliveryMethod value) editDeliveryMethod,
    required TResult Function(EditTimeSlot value) editTimeSlot,
  }) {
    return setCouponNotApplied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(ItemCountDecrement value)? itemCountDecrement,
    TResult? Function(ItemCountIncrement value)? itemCountIncrement,
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
    TResult? Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult? Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult? Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult? Function(EditTimeSlot value)? editTimeSlot,
  }) {
    return setCouponNotApplied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(ItemCountDecrement value)? itemCountDecrement,
    TResult Function(ItemCountIncrement value)? itemCountIncrement,
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
    TResult Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult Function(EditTimeSlot value)? editTimeSlot,
    required TResult orElse(),
  }) {
    if (setCouponNotApplied != null) {
      return setCouponNotApplied(this);
    }
    return orElse();
  }
}

abstract class SetCouponNotApplied implements BagTabEvent {
  const factory SetCouponNotApplied() = _$SetCouponNotApplied;
}

/// @nodoc
abstract class _$$SelectTimeSlotEventCopyWith<$Res> {
  factory _$$SelectTimeSlotEventCopyWith(_$SelectTimeSlotEvent value,
          $Res Function(_$SelectTimeSlotEvent) then) =
      __$$SelectTimeSlotEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String timeSlot});
}

/// @nodoc
class __$$SelectTimeSlotEventCopyWithImpl<$Res>
    extends _$BagTabEventCopyWithImpl<$Res, _$SelectTimeSlotEvent>
    implements _$$SelectTimeSlotEventCopyWith<$Res> {
  __$$SelectTimeSlotEventCopyWithImpl(
      _$SelectTimeSlotEvent _value, $Res Function(_$SelectTimeSlotEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlot = null,
  }) {
    return _then(_$SelectTimeSlotEvent(
      timeSlot: null == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectTimeSlotEvent implements SelectTimeSlotEvent {
  const _$SelectTimeSlotEvent({required this.timeSlot});

  @override
  final String timeSlot;

  @override
  String toString() {
    return 'BagTabEvent.selectTimeSlotEvent(timeSlot: $timeSlot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTimeSlotEvent &&
            (identical(other.timeSlot, timeSlot) ||
                other.timeSlot == timeSlot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSlot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTimeSlotEventCopyWith<_$SelectTimeSlotEvent> get copyWith =>
      __$$SelectTimeSlotEventCopyWithImpl<_$SelectTimeSlotEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(int id) itemCountDecrement,
    required TResult Function(int id) itemCountIncrement,
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function(bool withoutCoupon) withoutCoupon,
    required TResult Function() setCouponNotApplied,
    required TResult Function(String timeSlot) selectTimeSlotEvent,
    required TResult Function() editDeliveryMethod,
    required TResult Function() editTimeSlot,
  }) {
    return selectTimeSlotEvent(timeSlot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(int id)? itemCountDecrement,
    TResult? Function(int id)? itemCountIncrement,
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function(bool withoutCoupon)? withoutCoupon,
    TResult? Function()? setCouponNotApplied,
    TResult? Function(String timeSlot)? selectTimeSlotEvent,
    TResult? Function()? editDeliveryMethod,
    TResult? Function()? editTimeSlot,
  }) {
    return selectTimeSlotEvent?.call(timeSlot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(int id)? itemCountDecrement,
    TResult Function(int id)? itemCountIncrement,
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function(bool withoutCoupon)? withoutCoupon,
    TResult Function()? setCouponNotApplied,
    TResult Function(String timeSlot)? selectTimeSlotEvent,
    TResult Function()? editDeliveryMethod,
    TResult Function()? editTimeSlot,
    required TResult orElse(),
  }) {
    if (selectTimeSlotEvent != null) {
      return selectTimeSlotEvent(timeSlot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(ItemCountDecrement value) itemCountDecrement,
    required TResult Function(ItemCountIncrement value) itemCountIncrement,
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
    required TResult Function(SetCouponNotApplied value) setCouponNotApplied,
    required TResult Function(SelectTimeSlotEvent value) selectTimeSlotEvent,
    required TResult Function(EditDeliveryMethod value) editDeliveryMethod,
    required TResult Function(EditTimeSlot value) editTimeSlot,
  }) {
    return selectTimeSlotEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(ItemCountDecrement value)? itemCountDecrement,
    TResult? Function(ItemCountIncrement value)? itemCountIncrement,
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
    TResult? Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult? Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult? Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult? Function(EditTimeSlot value)? editTimeSlot,
  }) {
    return selectTimeSlotEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(ItemCountDecrement value)? itemCountDecrement,
    TResult Function(ItemCountIncrement value)? itemCountIncrement,
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
    TResult Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult Function(EditTimeSlot value)? editTimeSlot,
    required TResult orElse(),
  }) {
    if (selectTimeSlotEvent != null) {
      return selectTimeSlotEvent(this);
    }
    return orElse();
  }
}

abstract class SelectTimeSlotEvent implements BagTabEvent {
  const factory SelectTimeSlotEvent({required final String timeSlot}) =
      _$SelectTimeSlotEvent;

  String get timeSlot;
  @JsonKey(ignore: true)
  _$$SelectTimeSlotEventCopyWith<_$SelectTimeSlotEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditDeliveryMethodCopyWith<$Res> {
  factory _$$EditDeliveryMethodCopyWith(_$EditDeliveryMethod value,
          $Res Function(_$EditDeliveryMethod) then) =
      __$$EditDeliveryMethodCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditDeliveryMethodCopyWithImpl<$Res>
    extends _$BagTabEventCopyWithImpl<$Res, _$EditDeliveryMethod>
    implements _$$EditDeliveryMethodCopyWith<$Res> {
  __$$EditDeliveryMethodCopyWithImpl(
      _$EditDeliveryMethod _value, $Res Function(_$EditDeliveryMethod) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditDeliveryMethod implements EditDeliveryMethod {
  const _$EditDeliveryMethod();

  @override
  String toString() {
    return 'BagTabEvent.editDeliveryMethod()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditDeliveryMethod);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(int id) itemCountDecrement,
    required TResult Function(int id) itemCountIncrement,
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function(bool withoutCoupon) withoutCoupon,
    required TResult Function() setCouponNotApplied,
    required TResult Function(String timeSlot) selectTimeSlotEvent,
    required TResult Function() editDeliveryMethod,
    required TResult Function() editTimeSlot,
  }) {
    return editDeliveryMethod();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(int id)? itemCountDecrement,
    TResult? Function(int id)? itemCountIncrement,
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function(bool withoutCoupon)? withoutCoupon,
    TResult? Function()? setCouponNotApplied,
    TResult? Function(String timeSlot)? selectTimeSlotEvent,
    TResult? Function()? editDeliveryMethod,
    TResult? Function()? editTimeSlot,
  }) {
    return editDeliveryMethod?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(int id)? itemCountDecrement,
    TResult Function(int id)? itemCountIncrement,
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function(bool withoutCoupon)? withoutCoupon,
    TResult Function()? setCouponNotApplied,
    TResult Function(String timeSlot)? selectTimeSlotEvent,
    TResult Function()? editDeliveryMethod,
    TResult Function()? editTimeSlot,
    required TResult orElse(),
  }) {
    if (editDeliveryMethod != null) {
      return editDeliveryMethod();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(ItemCountDecrement value) itemCountDecrement,
    required TResult Function(ItemCountIncrement value) itemCountIncrement,
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
    required TResult Function(SetCouponNotApplied value) setCouponNotApplied,
    required TResult Function(SelectTimeSlotEvent value) selectTimeSlotEvent,
    required TResult Function(EditDeliveryMethod value) editDeliveryMethod,
    required TResult Function(EditTimeSlot value) editTimeSlot,
  }) {
    return editDeliveryMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(ItemCountDecrement value)? itemCountDecrement,
    TResult? Function(ItemCountIncrement value)? itemCountIncrement,
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
    TResult? Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult? Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult? Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult? Function(EditTimeSlot value)? editTimeSlot,
  }) {
    return editDeliveryMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(ItemCountDecrement value)? itemCountDecrement,
    TResult Function(ItemCountIncrement value)? itemCountIncrement,
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
    TResult Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult Function(EditTimeSlot value)? editTimeSlot,
    required TResult orElse(),
  }) {
    if (editDeliveryMethod != null) {
      return editDeliveryMethod(this);
    }
    return orElse();
  }
}

abstract class EditDeliveryMethod implements BagTabEvent {
  const factory EditDeliveryMethod() = _$EditDeliveryMethod;
}

/// @nodoc
abstract class _$$EditTimeSlotCopyWith<$Res> {
  factory _$$EditTimeSlotCopyWith(
          _$EditTimeSlot value, $Res Function(_$EditTimeSlot) then) =
      __$$EditTimeSlotCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditTimeSlotCopyWithImpl<$Res>
    extends _$BagTabEventCopyWithImpl<$Res, _$EditTimeSlot>
    implements _$$EditTimeSlotCopyWith<$Res> {
  __$$EditTimeSlotCopyWithImpl(
      _$EditTimeSlot _value, $Res Function(_$EditTimeSlot) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditTimeSlot implements EditTimeSlot {
  const _$EditTimeSlot();

  @override
  String toString() {
    return 'BagTabEvent.editTimeSlot()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditTimeSlot);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(int id) itemCountDecrement,
    required TResult Function(int id) itemCountIncrement,
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function(bool withoutCoupon) withoutCoupon,
    required TResult Function() setCouponNotApplied,
    required TResult Function(String timeSlot) selectTimeSlotEvent,
    required TResult Function() editDeliveryMethod,
    required TResult Function() editTimeSlot,
  }) {
    return editTimeSlot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(int id)? itemCountDecrement,
    TResult? Function(int id)? itemCountIncrement,
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function(bool withoutCoupon)? withoutCoupon,
    TResult? Function()? setCouponNotApplied,
    TResult? Function(String timeSlot)? selectTimeSlotEvent,
    TResult? Function()? editDeliveryMethod,
    TResult? Function()? editTimeSlot,
  }) {
    return editTimeSlot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(int id)? itemCountDecrement,
    TResult Function(int id)? itemCountIncrement,
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function(bool withoutCoupon)? withoutCoupon,
    TResult Function()? setCouponNotApplied,
    TResult Function(String timeSlot)? selectTimeSlotEvent,
    TResult Function()? editDeliveryMethod,
    TResult Function()? editTimeSlot,
    required TResult orElse(),
  }) {
    if (editTimeSlot != null) {
      return editTimeSlot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(ItemCountDecrement value) itemCountDecrement,
    required TResult Function(ItemCountIncrement value) itemCountIncrement,
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
    required TResult Function(SetCouponNotApplied value) setCouponNotApplied,
    required TResult Function(SelectTimeSlotEvent value) selectTimeSlotEvent,
    required TResult Function(EditDeliveryMethod value) editDeliveryMethod,
    required TResult Function(EditTimeSlot value) editTimeSlot,
  }) {
    return editTimeSlot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(ItemCountDecrement value)? itemCountDecrement,
    TResult? Function(ItemCountIncrement value)? itemCountIncrement,
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
    TResult? Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult? Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult? Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult? Function(EditTimeSlot value)? editTimeSlot,
  }) {
    return editTimeSlot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(ItemCountDecrement value)? itemCountDecrement,
    TResult Function(ItemCountIncrement value)? itemCountIncrement,
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
    TResult Function(SetCouponNotApplied value)? setCouponNotApplied,
    TResult Function(SelectTimeSlotEvent value)? selectTimeSlotEvent,
    TResult Function(EditDeliveryMethod value)? editDeliveryMethod,
    TResult Function(EditTimeSlot value)? editTimeSlot,
    required TResult orElse(),
  }) {
    if (editTimeSlot != null) {
      return editTimeSlot(this);
    }
    return orElse();
  }
}

abstract class EditTimeSlot implements BagTabEvent {
  const factory EditTimeSlot() = _$EditTimeSlot;
}

/// @nodoc
mixin _$BagTabState {
  Map<ProductModel, int> get cartItems => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  int get itemCount => throw _privateConstructorUsedError;
  double? get couponValue => throw _privateConstructorUsedError;
  DeliveryMethod? get deliveryMethod => throw _privateConstructorUsedError;
  bool get withoutCoupon => throw _privateConstructorUsedError;
  String? get selectedTimeSlot => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BagTabStateCopyWith<BagTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BagTabStateCopyWith<$Res> {
  factory $BagTabStateCopyWith(
          BagTabState value, $Res Function(BagTabState) then) =
      _$BagTabStateCopyWithImpl<$Res, BagTabState>;
  @useResult
  $Res call(
      {Map<ProductModel, int> cartItems,
      double total,
      int itemCount,
      double? couponValue,
      DeliveryMethod? deliveryMethod,
      bool withoutCoupon,
      String? selectedTimeSlot});
}

/// @nodoc
class _$BagTabStateCopyWithImpl<$Res, $Val extends BagTabState>
    implements $BagTabStateCopyWith<$Res> {
  _$BagTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
    Object? total = null,
    Object? itemCount = null,
    Object? couponValue = freezed,
    Object? deliveryMethod = freezed,
    Object? withoutCoupon = null,
    Object? selectedTimeSlot = freezed,
  }) {
    return _then(_value.copyWith(
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<ProductModel, int>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      couponValue: freezed == couponValue
          ? _value.couponValue
          : couponValue // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryMethod: freezed == deliveryMethod
          ? _value.deliveryMethod
          : deliveryMethod // ignore: cast_nullable_to_non_nullable
              as DeliveryMethod?,
      withoutCoupon: null == withoutCoupon
          ? _value.withoutCoupon
          : withoutCoupon // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedTimeSlot: freezed == selectedTimeSlot
          ? _value.selectedTimeSlot
          : selectedTimeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $BagTabStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<ProductModel, int> cartItems,
      double total,
      int itemCount,
      double? couponValue,
      DeliveryMethod? deliveryMethod,
      bool withoutCoupon,
      String? selectedTimeSlot});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$BagTabStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
    Object? total = null,
    Object? itemCount = null,
    Object? couponValue = freezed,
    Object? deliveryMethod = freezed,
    Object? withoutCoupon = null,
    Object? selectedTimeSlot = freezed,
  }) {
    return _then(_$_Initial(
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<ProductModel, int>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      couponValue: freezed == couponValue
          ? _value.couponValue
          : couponValue // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryMethod: freezed == deliveryMethod
          ? _value.deliveryMethod
          : deliveryMethod // ignore: cast_nullable_to_non_nullable
              as DeliveryMethod?,
      withoutCoupon: null == withoutCoupon
          ? _value.withoutCoupon
          : withoutCoupon // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedTimeSlot: freezed == selectedTimeSlot
          ? _value.selectedTimeSlot
          : selectedTimeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final Map<ProductModel, int> cartItems,
      required this.total,
      required this.itemCount,
      required this.couponValue,
      required this.deliveryMethod,
      required this.withoutCoupon,
      required this.selectedTimeSlot})
      : _cartItems = cartItems;

  final Map<ProductModel, int> _cartItems;
  @override
  Map<ProductModel, int> get cartItems {
    if (_cartItems is EqualUnmodifiableMapView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cartItems);
  }

  @override
  final double total;
  @override
  final int itemCount;
  @override
  final double? couponValue;
  @override
  final DeliveryMethod? deliveryMethod;
  @override
  final bool withoutCoupon;
  @override
  final String? selectedTimeSlot;

  @override
  String toString() {
    return 'BagTabState(cartItems: $cartItems, total: $total, itemCount: $itemCount, couponValue: $couponValue, deliveryMethod: $deliveryMethod, withoutCoupon: $withoutCoupon, selectedTimeSlot: $selectedTimeSlot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount) &&
            (identical(other.couponValue, couponValue) ||
                other.couponValue == couponValue) &&
            (identical(other.deliveryMethod, deliveryMethod) ||
                other.deliveryMethod == deliveryMethod) &&
            (identical(other.withoutCoupon, withoutCoupon) ||
                other.withoutCoupon == withoutCoupon) &&
            (identical(other.selectedTimeSlot, selectedTimeSlot) ||
                other.selectedTimeSlot == selectedTimeSlot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cartItems),
      total,
      itemCount,
      couponValue,
      deliveryMethod,
      withoutCoupon,
      selectedTimeSlot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements BagTabState {
  const factory _Initial(
      {required final Map<ProductModel, int> cartItems,
      required final double total,
      required final int itemCount,
      required final double? couponValue,
      required final DeliveryMethod? deliveryMethod,
      required final bool withoutCoupon,
      required final String? selectedTimeSlot}) = _$_Initial;

  @override
  Map<ProductModel, int> get cartItems;
  @override
  double get total;
  @override
  int get itemCount;
  @override
  double? get couponValue;
  @override
  DeliveryMethod? get deliveryMethod;
  @override
  bool get withoutCoupon;
  @override
  String? get selectedTimeSlot;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
