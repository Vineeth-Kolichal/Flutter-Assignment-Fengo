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
  double get amount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? applyCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplyCoupon value) applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplyCoupon value)? applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BagTabEventCopyWith<BagTabEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BagTabEventCopyWith<$Res> {
  factory $BagTabEventCopyWith(
          BagTabEvent value, $Res Function(BagTabEvent) then) =
      _$BagTabEventCopyWithImpl<$Res, BagTabEvent>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class _$BagTabEventCopyWithImpl<$Res, $Val extends BagTabEvent>
    implements $BagTabEventCopyWith<$Res> {
  _$BagTabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplyCouponCopyWith<$Res>
    implements $BagTabEventCopyWith<$Res> {
  factory _$$ApplyCouponCopyWith(
          _$ApplyCoupon value, $Res Function(_$ApplyCoupon) then) =
      __$$ApplyCouponCopyWithImpl<$Res>;
  @override
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
  }) {
    return applyCoupon(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? applyCoupon,
  }) {
    return applyCoupon?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? applyCoupon,
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
  }) {
    return applyCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplyCoupon value)? applyCoupon,
  }) {
    return applyCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplyCoupon value)? applyCoupon,
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

  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$ApplyCouponCopyWith<_$ApplyCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BagTabState {
  double? get couponValue => throw _privateConstructorUsedError;

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
  $Res call({double? couponValue});
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
  }) {
    return _then(_value.copyWith(
      couponValue: freezed == couponValue
          ? _value.couponValue
          : couponValue // ignore: cast_nullable_to_non_nullable
              as double?,
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
  $Res call({double? couponValue});
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
  }) {
    return _then(_$_Initial(
      couponValue: freezed == couponValue
          ? _value.couponValue
          : couponValue // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.couponValue});

  @override
  final double? couponValue;

  @override
  String toString() {
    return 'BagTabState(couponValue: $couponValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.couponValue, couponValue) ||
                other.couponValue == couponValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, couponValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements BagTabState {
  const factory _Initial({required final double? couponValue}) = _$_Initial;

  @override
  double? get couponValue;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
