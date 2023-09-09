// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCart,
    required TResult Function(int id) remove,
    required TResult Function(int id) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCart,
    TResult? Function(int id)? remove,
    TResult? Function(int id)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCart,
    TResult Function(int id)? remove,
    TResult Function(int id)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCart value) getAllCart,
    required TResult Function(Remove value) remove,
    required TResult Function(Add value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCart value)? getAllCart,
    TResult? Function(Remove value)? remove,
    TResult? Function(Add value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCart value)? getAllCart,
    TResult Function(Remove value)? remove,
    TResult Function(Add value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllCartCopyWith<$Res> {
  factory _$$GetAllCartCopyWith(
          _$GetAllCart value, $Res Function(_$GetAllCart) then) =
      __$$GetAllCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetAllCart>
    implements _$$GetAllCartCopyWith<$Res> {
  __$$GetAllCartCopyWithImpl(
      _$GetAllCart _value, $Res Function(_$GetAllCart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllCart implements GetAllCart {
  const _$GetAllCart();

  @override
  String toString() {
    return 'CartEvent.getAllCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCart,
    required TResult Function(int id) remove,
    required TResult Function(int id) add,
  }) {
    return getAllCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCart,
    TResult? Function(int id)? remove,
    TResult? Function(int id)? add,
  }) {
    return getAllCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCart,
    TResult Function(int id)? remove,
    TResult Function(int id)? add,
    required TResult orElse(),
  }) {
    if (getAllCart != null) {
      return getAllCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCart value) getAllCart,
    required TResult Function(Remove value) remove,
    required TResult Function(Add value) add,
  }) {
    return getAllCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCart value)? getAllCart,
    TResult? Function(Remove value)? remove,
    TResult? Function(Add value)? add,
  }) {
    return getAllCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCart value)? getAllCart,
    TResult Function(Remove value)? remove,
    TResult Function(Add value)? add,
    required TResult orElse(),
  }) {
    if (getAllCart != null) {
      return getAllCart(this);
    }
    return orElse();
  }
}

abstract class GetAllCart implements CartEvent {
  const factory GetAllCart() = _$GetAllCart;
}

/// @nodoc
abstract class _$$RemoveCopyWith<$Res> {
  factory _$$RemoveCopyWith(_$Remove value, $Res Function(_$Remove) then) =
      __$$RemoveCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RemoveCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$Remove>
    implements _$$RemoveCopyWith<$Res> {
  __$$RemoveCopyWithImpl(_$Remove _value, $Res Function(_$Remove) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$Remove(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Remove implements Remove {
  const _$Remove(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'CartEvent.remove(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Remove &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCopyWith<_$Remove> get copyWith =>
      __$$RemoveCopyWithImpl<_$Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCart,
    required TResult Function(int id) remove,
    required TResult Function(int id) add,
  }) {
    return remove(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCart,
    TResult? Function(int id)? remove,
    TResult? Function(int id)? add,
  }) {
    return remove?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCart,
    TResult Function(int id)? remove,
    TResult Function(int id)? add,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCart value) getAllCart,
    required TResult Function(Remove value) remove,
    required TResult Function(Add value) add,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCart value)? getAllCart,
    TResult? Function(Remove value)? remove,
    TResult? Function(Add value)? add,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCart value)? getAllCart,
    TResult Function(Remove value)? remove,
    TResult Function(Add value)? add,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class Remove implements CartEvent {
  const factory Remove(final int id) = _$Remove;

  int get id;
  @JsonKey(ignore: true)
  _$$RemoveCopyWith<_$Remove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCopyWith<$Res> {
  factory _$$AddCopyWith(_$Add value, $Res Function(_$Add) then) =
      __$$AddCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$AddCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res, _$Add>
    implements _$$AddCopyWith<$Res> {
  __$$AddCopyWithImpl(_$Add _value, $Res Function(_$Add) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$Add(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Add implements Add {
  const _$Add(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'CartEvent.add(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Add &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCopyWith<_$Add> get copyWith =>
      __$$AddCopyWithImpl<_$Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCart,
    required TResult Function(int id) remove,
    required TResult Function(int id) add,
  }) {
    return add(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCart,
    TResult? Function(int id)? remove,
    TResult? Function(int id)? add,
  }) {
    return add?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCart,
    TResult Function(int id)? remove,
    TResult Function(int id)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCart value) getAllCart,
    required TResult Function(Remove value) remove,
    required TResult Function(Add value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCart value)? getAllCart,
    TResult? Function(Remove value)? remove,
    TResult? Function(Add value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCart value)? getAllCart,
    TResult Function(Remove value)? remove,
    TResult Function(Add value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class Add implements CartEvent {
  const factory Add(final int id) = _$Add;

  int get id;
  @JsonKey(ignore: true)
  _$$AddCopyWith<_$Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  Map<ProductModel, int> get cartItems => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  int get itemCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {Map<ProductModel, int> cartItems,
      bool isLoading,
      double total,
      int itemCount});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
    Object? isLoading = null,
    Object? total = null,
    Object? itemCount = null,
  }) {
    return _then(_value.copyWith(
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<ProductModel, int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<ProductModel, int> cartItems,
      bool isLoading,
      double total,
      int itemCount});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
    Object? isLoading = null,
    Object? total = null,
    Object? itemCount = null,
  }) {
    return _then(_$_Initial(
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<ProductModel, int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final Map<ProductModel, int> cartItems,
      required this.isLoading,
      required this.total,
      required this.itemCount})
      : _cartItems = cartItems;

  final Map<ProductModel, int> _cartItems;
  @override
  Map<ProductModel, int> get cartItems {
    if (_cartItems is EqualUnmodifiableMapView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cartItems);
  }

  @override
  final bool isLoading;
  @override
  final double total;
  @override
  final int itemCount;

  @override
  String toString() {
    return 'CartState(cartItems: $cartItems, isLoading: $isLoading, total: $total, itemCount: $itemCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cartItems),
      isLoading,
      total,
      itemCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements CartState {
  const factory _Initial(
      {required final Map<ProductModel, int> cartItems,
      required final bool isLoading,
      required final double total,
      required final int itemCount}) = _$_Initial;

  @override
  Map<ProductModel, int> get cartItems;
  @override
  bool get isLoading;
  @override
  double get total;
  @override
  int get itemCount;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
