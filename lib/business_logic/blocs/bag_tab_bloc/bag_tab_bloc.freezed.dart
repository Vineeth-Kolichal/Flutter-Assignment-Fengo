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
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function() withoutCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function()? withoutCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function()? withoutCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
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
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function() withoutCoupon,
  }) {
    return applyCoupon(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function()? withoutCoupon,
  }) {
    return applyCoupon?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function()? withoutCoupon,
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
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
  }) {
    return applyCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
  }) {
    return applyCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
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
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function() withoutCoupon,
  }) {
    return selectDeliveryMethod(deliveryMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function()? withoutCoupon,
  }) {
    return selectDeliveryMethod?.call(deliveryMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function()? withoutCoupon,
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
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
  }) {
    return selectDeliveryMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
  }) {
    return selectDeliveryMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
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
}

/// @nodoc
class __$$WithoutCouponCopyWithImpl<$Res>
    extends _$BagTabEventCopyWithImpl<$Res, _$WithoutCoupon>
    implements _$$WithoutCouponCopyWith<$Res> {
  __$$WithoutCouponCopyWithImpl(
      _$WithoutCoupon _value, $Res Function(_$WithoutCoupon) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WithoutCoupon implements WithoutCoupon {
  const _$WithoutCoupon();

  @override
  String toString() {
    return 'BagTabEvent.withoutCoupon()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WithoutCoupon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) applyCoupon,
    required TResult Function(DeliveryMethod deliveryMethod)
        selectDeliveryMethod,
    required TResult Function() withoutCoupon,
  }) {
    return withoutCoupon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? applyCoupon,
    TResult? Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult? Function()? withoutCoupon,
  }) {
    return withoutCoupon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? applyCoupon,
    TResult Function(DeliveryMethod deliveryMethod)? selectDeliveryMethod,
    TResult Function()? withoutCoupon,
    required TResult orElse(),
  }) {
    if (withoutCoupon != null) {
      return withoutCoupon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplyCoupon value) applyCoupon,
    required TResult Function(SelectDeliverymethod value) selectDeliveryMethod,
    required TResult Function(WithoutCoupon value) withoutCoupon,
  }) {
    return withoutCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplyCoupon value)? applyCoupon,
    TResult? Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult? Function(WithoutCoupon value)? withoutCoupon,
  }) {
    return withoutCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplyCoupon value)? applyCoupon,
    TResult Function(SelectDeliverymethod value)? selectDeliveryMethod,
    TResult Function(WithoutCoupon value)? withoutCoupon,
    required TResult orElse(),
  }) {
    if (withoutCoupon != null) {
      return withoutCoupon(this);
    }
    return orElse();
  }
}

abstract class WithoutCoupon implements BagTabEvent {
  const factory WithoutCoupon() = _$WithoutCoupon;
}

/// @nodoc
mixin _$BagTabState {
  double? get couponValue => throw _privateConstructorUsedError;
  DeliveryMethod? get deliveryMethod => throw _privateConstructorUsedError;
  bool get withoutCoupon => throw _privateConstructorUsedError;

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
      {double? couponValue,
      DeliveryMethod? deliveryMethod,
      bool withoutCoupon});
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
    Object? couponValue = freezed,
    Object? deliveryMethod = freezed,
    Object? withoutCoupon = null,
  }) {
    return _then(_value.copyWith(
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
      {double? couponValue,
      DeliveryMethod? deliveryMethod,
      bool withoutCoupon});
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
    Object? couponValue = freezed,
    Object? deliveryMethod = freezed,
    Object? withoutCoupon = null,
  }) {
    return _then(_$_Initial(
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
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.couponValue,
      required this.deliveryMethod,
      required this.withoutCoupon});

  @override
  final double? couponValue;
  @override
  final DeliveryMethod? deliveryMethod;
  @override
  final bool withoutCoupon;

  @override
  String toString() {
    return 'BagTabState(couponValue: $couponValue, deliveryMethod: $deliveryMethod, withoutCoupon: $withoutCoupon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.couponValue, couponValue) ||
                other.couponValue == couponValue) &&
            (identical(other.deliveryMethod, deliveryMethod) ||
                other.deliveryMethod == deliveryMethod) &&
            (identical(other.withoutCoupon, withoutCoupon) ||
                other.withoutCoupon == withoutCoupon));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, couponValue, deliveryMethod, withoutCoupon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements BagTabState {
  const factory _Initial(
      {required final double? couponValue,
      required final DeliveryMethod? deliveryMethod,
      required final bool withoutCoupon}) = _$_Initial;

  @override
  double? get couponValue;
  @override
  DeliveryMethod? get deliveryMethod;
  @override
  bool get withoutCoupon;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
