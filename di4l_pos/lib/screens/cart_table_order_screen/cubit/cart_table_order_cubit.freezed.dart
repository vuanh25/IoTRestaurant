// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_table_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<ItemProduct> get listItemProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateDataCopyWith<CartStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateDataCopyWith<$Res> {
  factory $CartStateDataCopyWith(
          CartStateData value, $Res Function(CartStateData) then) =
      _$CartStateDataCopyWithImpl<$Res, CartStateData>;
  @useResult
  $Res call({StatusType status, List<ItemProduct> listItemProduct});
}

/// @nodoc
class _$CartStateDataCopyWithImpl<$Res, $Val extends CartStateData>
    implements $CartStateDataCopyWith<$Res> {
  _$CartStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listItemProduct = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      listItemProduct: null == listItemProduct
          ? _value.listItemProduct
          : listItemProduct // ignore: cast_nullable_to_non_nullable
              as List<ItemProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartStateDataCopyWith<$Res>
    implements $CartStateDataCopyWith<$Res> {
  factory _$$_CartStateDataCopyWith(
          _$_CartStateData value, $Res Function(_$_CartStateData) then) =
      __$$_CartStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusType status, List<ItemProduct> listItemProduct});
}

/// @nodoc
class __$$_CartStateDataCopyWithImpl<$Res>
    extends _$CartStateDataCopyWithImpl<$Res, _$_CartStateData>
    implements _$$_CartStateDataCopyWith<$Res> {
  __$$_CartStateDataCopyWithImpl(
      _$_CartStateData _value, $Res Function(_$_CartStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listItemProduct = null,
  }) {
    return _then(_$_CartStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      listItemProduct: null == listItemProduct
          ? _value._listItemProduct
          : listItemProduct // ignore: cast_nullable_to_non_nullable
              as List<ItemProduct>,
    ));
  }
}

/// @nodoc

class _$_CartStateData implements _CartStateData {
  const _$_CartStateData(
      {this.status = StatusType.init,
      final List<ItemProduct> listItemProduct = const <ItemProduct>[]})
      : _listItemProduct = listItemProduct;

  @override
  @JsonKey()
  final StatusType status;
  final List<ItemProduct> _listItemProduct;
  @override
  @JsonKey()
  List<ItemProduct> get listItemProduct {
    if (_listItemProduct is EqualUnmodifiableListView) return _listItemProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listItemProduct);
  }

  @override
  String toString() {
    return 'CartStateData(status: $status, listItemProduct: $listItemProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._listItemProduct, _listItemProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_listItemProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartStateDataCopyWith<_$_CartStateData> get copyWith =>
      __$$_CartStateDataCopyWithImpl<_$_CartStateData>(this, _$identity);
}

abstract class _CartStateData implements CartStateData {
  const factory _CartStateData(
      {final StatusType status,
      final List<ItemProduct> listItemProduct}) = _$_CartStateData;

  @override
  StatusType get status;
  @override
  List<ItemProduct> get listItemProduct;
  @override
  @JsonKey(ignore: true)
  _$$_CartStateDataCopyWith<_$_CartStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  CartStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartStateData? data) initial,
    required TResult Function(CartStateData? data) status,
    required TResult Function(CartStateData? data) getCart,
    required TResult Function(CartStateData? data) addCart,
    required TResult Function(CartStateData? data) removeAll,
    required TResult Function(CartStateData? data) removeProductAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateData? data)? initial,
    TResult? Function(CartStateData? data)? status,
    TResult? Function(CartStateData? data)? getCart,
    TResult? Function(CartStateData? data)? addCart,
    TResult? Function(CartStateData? data)? removeAll,
    TResult? Function(CartStateData? data)? removeProductAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateData? data)? initial,
    TResult Function(CartStateData? data)? status,
    TResult Function(CartStateData? data)? getCart,
    TResult Function(CartStateData? data)? addCart,
    TResult Function(CartStateData? data)? removeAll,
    TResult Function(CartStateData? data)? removeProductAt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddCart value) addCart,
    required TResult Function(RemoveAll value) removeAll,
    required TResult Function(RemoveProductAt value) removeProductAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddCart value)? addCart,
    TResult? Function(RemoveAll value)? removeAll,
    TResult? Function(RemoveProductAt value)? removeProductAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddCart value)? addCart,
    TResult Function(RemoveAll value)? removeAll,
    TResult Function(RemoveProductAt value)? removeProductAt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({CartStateData? data});

  $CartStateDataCopyWith<$Res>? get data;
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
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CartStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStateData? data});

  @override
  $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Initial(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final CartStateData? data;

  @override
  String toString() {
    return 'CartState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartStateData? data) initial,
    required TResult Function(CartStateData? data) status,
    required TResult Function(CartStateData? data) getCart,
    required TResult Function(CartStateData? data) addCart,
    required TResult Function(CartStateData? data) removeAll,
    required TResult Function(CartStateData? data) removeProductAt,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateData? data)? initial,
    TResult? Function(CartStateData? data)? status,
    TResult? Function(CartStateData? data)? getCart,
    TResult? Function(CartStateData? data)? addCart,
    TResult? Function(CartStateData? data)? removeAll,
    TResult? Function(CartStateData? data)? removeProductAt,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateData? data)? initial,
    TResult Function(CartStateData? data)? status,
    TResult Function(CartStateData? data)? getCart,
    TResult Function(CartStateData? data)? addCart,
    TResult Function(CartStateData? data)? removeAll,
    TResult Function(CartStateData? data)? removeProductAt,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddCart value) addCart,
    required TResult Function(RemoveAll value) removeAll,
    required TResult Function(RemoveProductAt value) removeProductAt,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddCart value)? addCart,
    TResult? Function(RemoveAll value)? removeAll,
    TResult? Function(RemoveProductAt value)? removeProductAt,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddCart value)? addCart,
    TResult Function(RemoveAll value)? removeAll,
    TResult Function(RemoveProductAt value)? removeProductAt,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CartState {
  const factory Initial({final CartStateData? data}) = _$Initial;

  @override
  CartStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStateData? data});

  @override
  $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$Status>
    implements _$$StatusCopyWith<$Res> {
  __$$StatusCopyWithImpl(_$Status _value, $Res Function(_$Status) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Status(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final CartStateData? data;

  @override
  String toString() {
    return 'CartState.status(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Status &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusCopyWith<_$Status> get copyWith =>
      __$$StatusCopyWithImpl<_$Status>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartStateData? data) initial,
    required TResult Function(CartStateData? data) status,
    required TResult Function(CartStateData? data) getCart,
    required TResult Function(CartStateData? data) addCart,
    required TResult Function(CartStateData? data) removeAll,
    required TResult Function(CartStateData? data) removeProductAt,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateData? data)? initial,
    TResult? Function(CartStateData? data)? status,
    TResult? Function(CartStateData? data)? getCart,
    TResult? Function(CartStateData? data)? addCart,
    TResult? Function(CartStateData? data)? removeAll,
    TResult? Function(CartStateData? data)? removeProductAt,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateData? data)? initial,
    TResult Function(CartStateData? data)? status,
    TResult Function(CartStateData? data)? getCart,
    TResult Function(CartStateData? data)? addCart,
    TResult Function(CartStateData? data)? removeAll,
    TResult Function(CartStateData? data)? removeProductAt,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddCart value) addCart,
    required TResult Function(RemoveAll value) removeAll,
    required TResult Function(RemoveProductAt value) removeProductAt,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddCart value)? addCart,
    TResult? Function(RemoveAll value)? removeAll,
    TResult? Function(RemoveProductAt value)? removeProductAt,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddCart value)? addCart,
    TResult Function(RemoveAll value)? removeAll,
    TResult Function(RemoveProductAt value)? removeProductAt,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements CartState {
  const factory Status({final CartStateData? data}) = _$Status;

  @override
  CartStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCartCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$GetCartCopyWith(_$GetCart value, $Res Function(_$GetCart) then) =
      __$$GetCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStateData? data});

  @override
  $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetCartCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$GetCart>
    implements _$$GetCartCopyWith<$Res> {
  __$$GetCartCopyWithImpl(_$GetCart _value, $Res Function(_$GetCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCart(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartStateData?,
    ));
  }
}

/// @nodoc

class _$GetCart implements GetCart {
  const _$GetCart({this.data});

  @override
  final CartStateData? data;

  @override
  String toString() {
    return 'CartState.getCart(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCart &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartCopyWith<_$GetCart> get copyWith =>
      __$$GetCartCopyWithImpl<_$GetCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartStateData? data) initial,
    required TResult Function(CartStateData? data) status,
    required TResult Function(CartStateData? data) getCart,
    required TResult Function(CartStateData? data) addCart,
    required TResult Function(CartStateData? data) removeAll,
    required TResult Function(CartStateData? data) removeProductAt,
  }) {
    return getCart(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateData? data)? initial,
    TResult? Function(CartStateData? data)? status,
    TResult? Function(CartStateData? data)? getCart,
    TResult? Function(CartStateData? data)? addCart,
    TResult? Function(CartStateData? data)? removeAll,
    TResult? Function(CartStateData? data)? removeProductAt,
  }) {
    return getCart?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateData? data)? initial,
    TResult Function(CartStateData? data)? status,
    TResult Function(CartStateData? data)? getCart,
    TResult Function(CartStateData? data)? addCart,
    TResult Function(CartStateData? data)? removeAll,
    TResult Function(CartStateData? data)? removeProductAt,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddCart value) addCart,
    required TResult Function(RemoveAll value) removeAll,
    required TResult Function(RemoveProductAt value) removeProductAt,
  }) {
    return getCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddCart value)? addCart,
    TResult? Function(RemoveAll value)? removeAll,
    TResult? Function(RemoveProductAt value)? removeProductAt,
  }) {
    return getCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddCart value)? addCart,
    TResult Function(RemoveAll value)? removeAll,
    TResult Function(RemoveProductAt value)? removeProductAt,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(this);
    }
    return orElse();
  }
}

abstract class GetCart implements CartState {
  const factory GetCart({final CartStateData? data}) = _$GetCart;

  @override
  CartStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetCartCopyWith<_$GetCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCartCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$AddCartCopyWith(_$AddCart value, $Res Function(_$AddCart) then) =
      __$$AddCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStateData? data});

  @override
  $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AddCartCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$AddCart>
    implements _$$AddCartCopyWith<$Res> {
  __$$AddCartCopyWithImpl(_$AddCart _value, $Res Function(_$AddCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AddCart(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartStateData?,
    ));
  }
}

/// @nodoc

class _$AddCart implements AddCart {
  const _$AddCart({this.data});

  @override
  final CartStateData? data;

  @override
  String toString() {
    return 'CartState.addCart(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCart &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCartCopyWith<_$AddCart> get copyWith =>
      __$$AddCartCopyWithImpl<_$AddCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartStateData? data) initial,
    required TResult Function(CartStateData? data) status,
    required TResult Function(CartStateData? data) getCart,
    required TResult Function(CartStateData? data) addCart,
    required TResult Function(CartStateData? data) removeAll,
    required TResult Function(CartStateData? data) removeProductAt,
  }) {
    return addCart(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateData? data)? initial,
    TResult? Function(CartStateData? data)? status,
    TResult? Function(CartStateData? data)? getCart,
    TResult? Function(CartStateData? data)? addCart,
    TResult? Function(CartStateData? data)? removeAll,
    TResult? Function(CartStateData? data)? removeProductAt,
  }) {
    return addCart?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateData? data)? initial,
    TResult Function(CartStateData? data)? status,
    TResult Function(CartStateData? data)? getCart,
    TResult Function(CartStateData? data)? addCart,
    TResult Function(CartStateData? data)? removeAll,
    TResult Function(CartStateData? data)? removeProductAt,
    required TResult orElse(),
  }) {
    if (addCart != null) {
      return addCart(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddCart value) addCart,
    required TResult Function(RemoveAll value) removeAll,
    required TResult Function(RemoveProductAt value) removeProductAt,
  }) {
    return addCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddCart value)? addCart,
    TResult? Function(RemoveAll value)? removeAll,
    TResult? Function(RemoveProductAt value)? removeProductAt,
  }) {
    return addCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddCart value)? addCart,
    TResult Function(RemoveAll value)? removeAll,
    TResult Function(RemoveProductAt value)? removeProductAt,
    required TResult orElse(),
  }) {
    if (addCart != null) {
      return addCart(this);
    }
    return orElse();
  }
}

abstract class AddCart implements CartState {
  const factory AddCart({final CartStateData? data}) = _$AddCart;

  @override
  CartStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$AddCartCopyWith<_$AddCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAllCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$RemoveAllCopyWith(
          _$RemoveAll value, $Res Function(_$RemoveAll) then) =
      __$$RemoveAllCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStateData? data});

  @override
  $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RemoveAllCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$RemoveAll>
    implements _$$RemoveAllCopyWith<$Res> {
  __$$RemoveAllCopyWithImpl(
      _$RemoveAll _value, $Res Function(_$RemoveAll) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RemoveAll(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartStateData?,
    ));
  }
}

/// @nodoc

class _$RemoveAll implements RemoveAll {
  const _$RemoveAll({this.data});

  @override
  final CartStateData? data;

  @override
  String toString() {
    return 'CartState.removeAll(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveAll &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveAllCopyWith<_$RemoveAll> get copyWith =>
      __$$RemoveAllCopyWithImpl<_$RemoveAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartStateData? data) initial,
    required TResult Function(CartStateData? data) status,
    required TResult Function(CartStateData? data) getCart,
    required TResult Function(CartStateData? data) addCart,
    required TResult Function(CartStateData? data) removeAll,
    required TResult Function(CartStateData? data) removeProductAt,
  }) {
    return removeAll(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateData? data)? initial,
    TResult? Function(CartStateData? data)? status,
    TResult? Function(CartStateData? data)? getCart,
    TResult? Function(CartStateData? data)? addCart,
    TResult? Function(CartStateData? data)? removeAll,
    TResult? Function(CartStateData? data)? removeProductAt,
  }) {
    return removeAll?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateData? data)? initial,
    TResult Function(CartStateData? data)? status,
    TResult Function(CartStateData? data)? getCart,
    TResult Function(CartStateData? data)? addCart,
    TResult Function(CartStateData? data)? removeAll,
    TResult Function(CartStateData? data)? removeProductAt,
    required TResult orElse(),
  }) {
    if (removeAll != null) {
      return removeAll(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddCart value) addCart,
    required TResult Function(RemoveAll value) removeAll,
    required TResult Function(RemoveProductAt value) removeProductAt,
  }) {
    return removeAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddCart value)? addCart,
    TResult? Function(RemoveAll value)? removeAll,
    TResult? Function(RemoveProductAt value)? removeProductAt,
  }) {
    return removeAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddCart value)? addCart,
    TResult Function(RemoveAll value)? removeAll,
    TResult Function(RemoveProductAt value)? removeProductAt,
    required TResult orElse(),
  }) {
    if (removeAll != null) {
      return removeAll(this);
    }
    return orElse();
  }
}

abstract class RemoveAll implements CartState {
  const factory RemoveAll({final CartStateData? data}) = _$RemoveAll;

  @override
  CartStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$RemoveAllCopyWith<_$RemoveAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProductAtCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$RemoveProductAtCopyWith(
          _$RemoveProductAt value, $Res Function(_$RemoveProductAt) then) =
      __$$RemoveProductAtCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStateData? data});

  @override
  $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RemoveProductAtCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$RemoveProductAt>
    implements _$$RemoveProductAtCopyWith<$Res> {
  __$$RemoveProductAtCopyWithImpl(
      _$RemoveProductAt _value, $Res Function(_$RemoveProductAt) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RemoveProductAt(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartStateData?,
    ));
  }
}

/// @nodoc

class _$RemoveProductAt implements RemoveProductAt {
  const _$RemoveProductAt({this.data});

  @override
  final CartStateData? data;

  @override
  String toString() {
    return 'CartState.removeProductAt(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveProductAt &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveProductAtCopyWith<_$RemoveProductAt> get copyWith =>
      __$$RemoveProductAtCopyWithImpl<_$RemoveProductAt>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartStateData? data) initial,
    required TResult Function(CartStateData? data) status,
    required TResult Function(CartStateData? data) getCart,
    required TResult Function(CartStateData? data) addCart,
    required TResult Function(CartStateData? data) removeAll,
    required TResult Function(CartStateData? data) removeProductAt,
  }) {
    return removeProductAt(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateData? data)? initial,
    TResult? Function(CartStateData? data)? status,
    TResult? Function(CartStateData? data)? getCart,
    TResult? Function(CartStateData? data)? addCart,
    TResult? Function(CartStateData? data)? removeAll,
    TResult? Function(CartStateData? data)? removeProductAt,
  }) {
    return removeProductAt?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateData? data)? initial,
    TResult Function(CartStateData? data)? status,
    TResult Function(CartStateData? data)? getCart,
    TResult Function(CartStateData? data)? addCart,
    TResult Function(CartStateData? data)? removeAll,
    TResult Function(CartStateData? data)? removeProductAt,
    required TResult orElse(),
  }) {
    if (removeProductAt != null) {
      return removeProductAt(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddCart value) addCart,
    required TResult Function(RemoveAll value) removeAll,
    required TResult Function(RemoveProductAt value) removeProductAt,
  }) {
    return removeProductAt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddCart value)? addCart,
    TResult? Function(RemoveAll value)? removeAll,
    TResult? Function(RemoveProductAt value)? removeProductAt,
  }) {
    return removeProductAt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddCart value)? addCart,
    TResult Function(RemoveAll value)? removeAll,
    TResult Function(RemoveProductAt value)? removeProductAt,
    required TResult orElse(),
  }) {
    if (removeProductAt != null) {
      return removeProductAt(this);
    }
    return orElse();
  }
}

abstract class RemoveProductAt implements CartState {
  const factory RemoveProductAt({final CartStateData? data}) =
      _$RemoveProductAt;

  @override
  CartStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$RemoveProductAtCopyWith<_$RemoveProductAt> get copyWith =>
      throw _privateConstructorUsedError;
}
