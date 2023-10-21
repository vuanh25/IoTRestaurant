// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SalesOrderStateData {
  StatusType get status => throw _privateConstructorUsedError;
  StatusType get returnStatus => throw _privateConstructorUsedError;
  List<SellData> get sells => throw _privateConstructorUsedError;
  List<SellData> get sellsOriginal => throw _privateConstructorUsedError;
  List<SellData> get returnSells => throw _privateConstructorUsedError;
  List<SellData> get returnSellsOriginal => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  SellResponse? get response => throw _privateConstructorUsedError;
  List<ProductResponse> get product => throw _privateConstructorUsedError;
  List<VariantsResponse> get variant => throw _privateConstructorUsedError;
  int? get shippedOrder => throw _privateConstructorUsedError;
  int? get orderedOrder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesOrderStateDataCopyWith<SalesOrderStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderStateDataCopyWith<$Res> {
  factory $SalesOrderStateDataCopyWith(
          SalesOrderStateData value, $Res Function(SalesOrderStateData) then) =
      _$SalesOrderStateDataCopyWithImpl<$Res, SalesOrderStateData>;
  @useResult
  $Res call(
      {StatusType status,
      StatusType returnStatus,
      List<SellData> sells,
      List<SellData> sellsOriginal,
      List<SellData> returnSells,
      List<SellData> returnSellsOriginal,
      int? page,
      SellResponse? response,
      List<ProductResponse> product,
      List<VariantsResponse> variant,
      int? shippedOrder,
      int? orderedOrder});
}

/// @nodoc
class _$SalesOrderStateDataCopyWithImpl<$Res, $Val extends SalesOrderStateData>
    implements $SalesOrderStateDataCopyWith<$Res> {
  _$SalesOrderStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? returnStatus = null,
    Object? sells = null,
    Object? sellsOriginal = null,
    Object? returnSells = null,
    Object? returnSellsOriginal = null,
    Object? page = freezed,
    Object? response = freezed,
    Object? product = null,
    Object? variant = null,
    Object? shippedOrder = freezed,
    Object? orderedOrder = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      returnStatus: null == returnStatus
          ? _value.returnStatus
          : returnStatus // ignore: cast_nullable_to_non_nullable
              as StatusType,
      sells: null == sells
          ? _value.sells
          : sells // ignore: cast_nullable_to_non_nullable
              as List<SellData>,
      sellsOriginal: null == sellsOriginal
          ? _value.sellsOriginal
          : sellsOriginal // ignore: cast_nullable_to_non_nullable
              as List<SellData>,
      returnSells: null == returnSells
          ? _value.returnSells
          : returnSells // ignore: cast_nullable_to_non_nullable
              as List<SellData>,
      returnSellsOriginal: null == returnSellsOriginal
          ? _value.returnSellsOriginal
          : returnSellsOriginal // ignore: cast_nullable_to_non_nullable
              as List<SellData>,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SellResponse?,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as List<VariantsResponse>,
      shippedOrder: freezed == shippedOrder
          ? _value.shippedOrder
          : shippedOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      orderedOrder: freezed == orderedOrder
          ? _value.orderedOrder
          : orderedOrder // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesOrderStateDataCopyWith<$Res>
    implements $SalesOrderStateDataCopyWith<$Res> {
  factory _$$_SalesOrderStateDataCopyWith(_$_SalesOrderStateData value,
          $Res Function(_$_SalesOrderStateData) then) =
      __$$_SalesOrderStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      StatusType returnStatus,
      List<SellData> sells,
      List<SellData> sellsOriginal,
      List<SellData> returnSells,
      List<SellData> returnSellsOriginal,
      int? page,
      SellResponse? response,
      List<ProductResponse> product,
      List<VariantsResponse> variant,
      int? shippedOrder,
      int? orderedOrder});
}

/// @nodoc
class __$$_SalesOrderStateDataCopyWithImpl<$Res>
    extends _$SalesOrderStateDataCopyWithImpl<$Res, _$_SalesOrderStateData>
    implements _$$_SalesOrderStateDataCopyWith<$Res> {
  __$$_SalesOrderStateDataCopyWithImpl(_$_SalesOrderStateData _value,
      $Res Function(_$_SalesOrderStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? returnStatus = null,
    Object? sells = null,
    Object? sellsOriginal = null,
    Object? returnSells = null,
    Object? returnSellsOriginal = null,
    Object? page = freezed,
    Object? response = freezed,
    Object? product = null,
    Object? variant = null,
    Object? shippedOrder = freezed,
    Object? orderedOrder = freezed,
  }) {
    return _then(_$_SalesOrderStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      returnStatus: null == returnStatus
          ? _value.returnStatus
          : returnStatus // ignore: cast_nullable_to_non_nullable
              as StatusType,
      sells: null == sells
          ? _value._sells
          : sells // ignore: cast_nullable_to_non_nullable
              as List<SellData>,
      sellsOriginal: null == sellsOriginal
          ? _value._sellsOriginal
          : sellsOriginal // ignore: cast_nullable_to_non_nullable
              as List<SellData>,
      returnSells: null == returnSells
          ? _value._returnSells
          : returnSells // ignore: cast_nullable_to_non_nullable
              as List<SellData>,
      returnSellsOriginal: null == returnSellsOriginal
          ? _value._returnSellsOriginal
          : returnSellsOriginal // ignore: cast_nullable_to_non_nullable
              as List<SellData>,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SellResponse?,
      product: null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>,
      variant: null == variant
          ? _value._variant
          : variant // ignore: cast_nullable_to_non_nullable
              as List<VariantsResponse>,
      shippedOrder: freezed == shippedOrder
          ? _value.shippedOrder
          : shippedOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      orderedOrder: freezed == orderedOrder
          ? _value.orderedOrder
          : orderedOrder // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SalesOrderStateData implements _SalesOrderStateData {
  const _$_SalesOrderStateData(
      {this.status = StatusType.init,
      this.returnStatus = StatusType.init,
      final List<SellData> sells = const [],
      final List<SellData> sellsOriginal = const [],
      final List<SellData> returnSells = const [],
      final List<SellData> returnSellsOriginal = const [],
      this.page = 0,
      this.response,
      final List<ProductResponse> product = const [],
      final List<VariantsResponse> variant = const [],
      this.shippedOrder = 0,
      this.orderedOrder = 0})
      : _sells = sells,
        _sellsOriginal = sellsOriginal,
        _returnSells = returnSells,
        _returnSellsOriginal = returnSellsOriginal,
        _product = product,
        _variant = variant;

  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final StatusType returnStatus;
  final List<SellData> _sells;
  @override
  @JsonKey()
  List<SellData> get sells {
    if (_sells is EqualUnmodifiableListView) return _sells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sells);
  }

  final List<SellData> _sellsOriginal;
  @override
  @JsonKey()
  List<SellData> get sellsOriginal {
    if (_sellsOriginal is EqualUnmodifiableListView) return _sellsOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sellsOriginal);
  }

  final List<SellData> _returnSells;
  @override
  @JsonKey()
  List<SellData> get returnSells {
    if (_returnSells is EqualUnmodifiableListView) return _returnSells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_returnSells);
  }

  final List<SellData> _returnSellsOriginal;
  @override
  @JsonKey()
  List<SellData> get returnSellsOriginal {
    if (_returnSellsOriginal is EqualUnmodifiableListView)
      return _returnSellsOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_returnSellsOriginal);
  }

  @override
  @JsonKey()
  final int? page;
  @override
  final SellResponse? response;
  final List<ProductResponse> _product;
  @override
  @JsonKey()
  List<ProductResponse> get product {
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product);
  }

  final List<VariantsResponse> _variant;
  @override
  @JsonKey()
  List<VariantsResponse> get variant {
    if (_variant is EqualUnmodifiableListView) return _variant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variant);
  }

  @override
  @JsonKey()
  final int? shippedOrder;
  @override
  @JsonKey()
  final int? orderedOrder;

  @override
  String toString() {
    return 'SalesOrderStateData(status: $status, returnStatus: $returnStatus, sells: $sells, sellsOriginal: $sellsOriginal, returnSells: $returnSells, returnSellsOriginal: $returnSellsOriginal, page: $page, response: $response, product: $product, variant: $variant, shippedOrder: $shippedOrder, orderedOrder: $orderedOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesOrderStateData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.returnStatus, returnStatus) ||
                other.returnStatus == returnStatus) &&
            const DeepCollectionEquality().equals(other._sells, _sells) &&
            const DeepCollectionEquality()
                .equals(other._sellsOriginal, _sellsOriginal) &&
            const DeepCollectionEquality()
                .equals(other._returnSells, _returnSells) &&
            const DeepCollectionEquality()
                .equals(other._returnSellsOriginal, _returnSellsOriginal) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.response, response) ||
                other.response == response) &&
            const DeepCollectionEquality().equals(other._product, _product) &&
            const DeepCollectionEquality().equals(other._variant, _variant) &&
            (identical(other.shippedOrder, shippedOrder) ||
                other.shippedOrder == shippedOrder) &&
            (identical(other.orderedOrder, orderedOrder) ||
                other.orderedOrder == orderedOrder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      returnStatus,
      const DeepCollectionEquality().hash(_sells),
      const DeepCollectionEquality().hash(_sellsOriginal),
      const DeepCollectionEquality().hash(_returnSells),
      const DeepCollectionEquality().hash(_returnSellsOriginal),
      page,
      response,
      const DeepCollectionEquality().hash(_product),
      const DeepCollectionEquality().hash(_variant),
      shippedOrder,
      orderedOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesOrderStateDataCopyWith<_$_SalesOrderStateData> get copyWith =>
      __$$_SalesOrderStateDataCopyWithImpl<_$_SalesOrderStateData>(
          this, _$identity);
}

abstract class _SalesOrderStateData implements SalesOrderStateData {
  const factory _SalesOrderStateData(
      {final StatusType status,
      final StatusType returnStatus,
      final List<SellData> sells,
      final List<SellData> sellsOriginal,
      final List<SellData> returnSells,
      final List<SellData> returnSellsOriginal,
      final int? page,
      final SellResponse? response,
      final List<ProductResponse> product,
      final List<VariantsResponse> variant,
      final int? shippedOrder,
      final int? orderedOrder}) = _$_SalesOrderStateData;

  @override
  StatusType get status;
  @override
  StatusType get returnStatus;
  @override
  List<SellData> get sells;
  @override
  List<SellData> get sellsOriginal;
  @override
  List<SellData> get returnSells;
  @override
  List<SellData> get returnSellsOriginal;
  @override
  int? get page;
  @override
  SellResponse? get response;
  @override
  List<ProductResponse> get product;
  @override
  List<VariantsResponse> get variant;
  @override
  int? get shippedOrder;
  @override
  int? get orderedOrder;
  @override
  @JsonKey(ignore: true)
  _$$_SalesOrderStateDataCopyWith<_$_SalesOrderStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SalesOrderState {
  SalesOrderStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalesOrderStateData? data) initial,
    required TResult Function(SalesOrderStateData? data) status,
    required TResult Function(SalesOrderStateData? data) returnStatus,
    required TResult Function(SalesOrderStateData? data) getSell,
    required TResult Function(SalesOrderStateData? data) getReturnSell,
    required TResult Function(SalesOrderStateData? data) addSell,
    required TResult Function(SalesOrderStateData? data) getProduct,
    required TResult Function(SalesOrderStateData? data) getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderStateData? data)? initial,
    TResult? Function(SalesOrderStateData? data)? status,
    TResult? Function(SalesOrderStateData? data)? returnStatus,
    TResult? Function(SalesOrderStateData? data)? getSell,
    TResult? Function(SalesOrderStateData? data)? getReturnSell,
    TResult? Function(SalesOrderStateData? data)? addSell,
    TResult? Function(SalesOrderStateData? data)? getProduct,
    TResult? Function(SalesOrderStateData? data)? getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrderStateData? data)? initial,
    TResult Function(SalesOrderStateData? data)? status,
    TResult Function(SalesOrderStateData? data)? returnStatus,
    TResult Function(SalesOrderStateData? data)? getSell,
    TResult Function(SalesOrderStateData? data)? getReturnSell,
    TResult Function(SalesOrderStateData? data)? addSell,
    TResult Function(SalesOrderStateData? data)? getProduct,
    TResult Function(SalesOrderStateData? data)? getProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(ReturnStatus value) returnStatus,
    required TResult Function(GetSell value) getSell,
    required TResult Function(GetReturnSell value) getReturnSell,
    required TResult Function(AddSell value) addSell,
    required TResult Function(GetProductById value) getProduct,
    required TResult Function(GetProducts value) getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(ReturnStatus value)? returnStatus,
    TResult? Function(GetSell value)? getSell,
    TResult? Function(GetReturnSell value)? getReturnSell,
    TResult? Function(AddSell value)? addSell,
    TResult? Function(GetProductById value)? getProduct,
    TResult? Function(GetProducts value)? getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(ReturnStatus value)? returnStatus,
    TResult Function(GetSell value)? getSell,
    TResult Function(GetReturnSell value)? getReturnSell,
    TResult Function(AddSell value)? addSell,
    TResult Function(GetProductById value)? getProduct,
    TResult Function(GetProducts value)? getProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesOrderStateCopyWith<SalesOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderStateCopyWith<$Res> {
  factory $SalesOrderStateCopyWith(
          SalesOrderState value, $Res Function(SalesOrderState) then) =
      _$SalesOrderStateCopyWithImpl<$Res, SalesOrderState>;
  @useResult
  $Res call({SalesOrderStateData? data});

  $SalesOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SalesOrderStateCopyWithImpl<$Res, $Val extends SalesOrderState>
    implements $SalesOrderStateCopyWith<$Res> {
  _$SalesOrderStateCopyWithImpl(this._value, this._then);

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
              as SalesOrderStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SalesOrderStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SalesOrderStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $SalesOrderStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SalesOrderStateData? data});

  @override
  $SalesOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$SalesOrderStateCopyWithImpl<$Res, _$Initial>
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
              as SalesOrderStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final SalesOrderStateData? data;

  @override
  String toString() {
    return 'SalesOrderState.initial(data: $data)';
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
    required TResult Function(SalesOrderStateData? data) initial,
    required TResult Function(SalesOrderStateData? data) status,
    required TResult Function(SalesOrderStateData? data) returnStatus,
    required TResult Function(SalesOrderStateData? data) getSell,
    required TResult Function(SalesOrderStateData? data) getReturnSell,
    required TResult Function(SalesOrderStateData? data) addSell,
    required TResult Function(SalesOrderStateData? data) getProduct,
    required TResult Function(SalesOrderStateData? data) getProducts,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderStateData? data)? initial,
    TResult? Function(SalesOrderStateData? data)? status,
    TResult? Function(SalesOrderStateData? data)? returnStatus,
    TResult? Function(SalesOrderStateData? data)? getSell,
    TResult? Function(SalesOrderStateData? data)? getReturnSell,
    TResult? Function(SalesOrderStateData? data)? addSell,
    TResult? Function(SalesOrderStateData? data)? getProduct,
    TResult? Function(SalesOrderStateData? data)? getProducts,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrderStateData? data)? initial,
    TResult Function(SalesOrderStateData? data)? status,
    TResult Function(SalesOrderStateData? data)? returnStatus,
    TResult Function(SalesOrderStateData? data)? getSell,
    TResult Function(SalesOrderStateData? data)? getReturnSell,
    TResult Function(SalesOrderStateData? data)? addSell,
    TResult Function(SalesOrderStateData? data)? getProduct,
    TResult Function(SalesOrderStateData? data)? getProducts,
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
    required TResult Function(ReturnStatus value) returnStatus,
    required TResult Function(GetSell value) getSell,
    required TResult Function(GetReturnSell value) getReturnSell,
    required TResult Function(AddSell value) addSell,
    required TResult Function(GetProductById value) getProduct,
    required TResult Function(GetProducts value) getProducts,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(ReturnStatus value)? returnStatus,
    TResult? Function(GetSell value)? getSell,
    TResult? Function(GetReturnSell value)? getReturnSell,
    TResult? Function(AddSell value)? addSell,
    TResult? Function(GetProductById value)? getProduct,
    TResult? Function(GetProducts value)? getProducts,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(ReturnStatus value)? returnStatus,
    TResult Function(GetSell value)? getSell,
    TResult Function(GetReturnSell value)? getReturnSell,
    TResult Function(AddSell value)? addSell,
    TResult Function(GetProductById value)? getProduct,
    TResult Function(GetProducts value)? getProducts,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SalesOrderState {
  const factory Initial({final SalesOrderStateData? data}) = _$Initial;

  @override
  SalesOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $SalesOrderStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SalesOrderStateData? data});

  @override
  $SalesOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$SalesOrderStateCopyWithImpl<$Res, _$Status>
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
              as SalesOrderStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final SalesOrderStateData? data;

  @override
  String toString() {
    return 'SalesOrderState.status(data: $data)';
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
    required TResult Function(SalesOrderStateData? data) initial,
    required TResult Function(SalesOrderStateData? data) status,
    required TResult Function(SalesOrderStateData? data) returnStatus,
    required TResult Function(SalesOrderStateData? data) getSell,
    required TResult Function(SalesOrderStateData? data) getReturnSell,
    required TResult Function(SalesOrderStateData? data) addSell,
    required TResult Function(SalesOrderStateData? data) getProduct,
    required TResult Function(SalesOrderStateData? data) getProducts,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderStateData? data)? initial,
    TResult? Function(SalesOrderStateData? data)? status,
    TResult? Function(SalesOrderStateData? data)? returnStatus,
    TResult? Function(SalesOrderStateData? data)? getSell,
    TResult? Function(SalesOrderStateData? data)? getReturnSell,
    TResult? Function(SalesOrderStateData? data)? addSell,
    TResult? Function(SalesOrderStateData? data)? getProduct,
    TResult? Function(SalesOrderStateData? data)? getProducts,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrderStateData? data)? initial,
    TResult Function(SalesOrderStateData? data)? status,
    TResult Function(SalesOrderStateData? data)? returnStatus,
    TResult Function(SalesOrderStateData? data)? getSell,
    TResult Function(SalesOrderStateData? data)? getReturnSell,
    TResult Function(SalesOrderStateData? data)? addSell,
    TResult Function(SalesOrderStateData? data)? getProduct,
    TResult Function(SalesOrderStateData? data)? getProducts,
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
    required TResult Function(ReturnStatus value) returnStatus,
    required TResult Function(GetSell value) getSell,
    required TResult Function(GetReturnSell value) getReturnSell,
    required TResult Function(AddSell value) addSell,
    required TResult Function(GetProductById value) getProduct,
    required TResult Function(GetProducts value) getProducts,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(ReturnStatus value)? returnStatus,
    TResult? Function(GetSell value)? getSell,
    TResult? Function(GetReturnSell value)? getReturnSell,
    TResult? Function(AddSell value)? addSell,
    TResult? Function(GetProductById value)? getProduct,
    TResult? Function(GetProducts value)? getProducts,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(ReturnStatus value)? returnStatus,
    TResult Function(GetSell value)? getSell,
    TResult Function(GetReturnSell value)? getReturnSell,
    TResult Function(AddSell value)? addSell,
    TResult Function(GetProductById value)? getProduct,
    TResult Function(GetProducts value)? getProducts,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements SalesOrderState {
  const factory Status({final SalesOrderStateData? data}) = _$Status;

  @override
  SalesOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReturnStatusCopyWith<$Res>
    implements $SalesOrderStateCopyWith<$Res> {
  factory _$$ReturnStatusCopyWith(
          _$ReturnStatus value, $Res Function(_$ReturnStatus) then) =
      __$$ReturnStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SalesOrderStateData? data});

  @override
  $SalesOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ReturnStatusCopyWithImpl<$Res>
    extends _$SalesOrderStateCopyWithImpl<$Res, _$ReturnStatus>
    implements _$$ReturnStatusCopyWith<$Res> {
  __$$ReturnStatusCopyWithImpl(
      _$ReturnStatus _value, $Res Function(_$ReturnStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ReturnStatus(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SalesOrderStateData?,
    ));
  }
}

/// @nodoc

class _$ReturnStatus implements ReturnStatus {
  const _$ReturnStatus({this.data});

  @override
  final SalesOrderStateData? data;

  @override
  String toString() {
    return 'SalesOrderState.returnStatus(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnStatus &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnStatusCopyWith<_$ReturnStatus> get copyWith =>
      __$$ReturnStatusCopyWithImpl<_$ReturnStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalesOrderStateData? data) initial,
    required TResult Function(SalesOrderStateData? data) status,
    required TResult Function(SalesOrderStateData? data) returnStatus,
    required TResult Function(SalesOrderStateData? data) getSell,
    required TResult Function(SalesOrderStateData? data) getReturnSell,
    required TResult Function(SalesOrderStateData? data) addSell,
    required TResult Function(SalesOrderStateData? data) getProduct,
    required TResult Function(SalesOrderStateData? data) getProducts,
  }) {
    return returnStatus(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderStateData? data)? initial,
    TResult? Function(SalesOrderStateData? data)? status,
    TResult? Function(SalesOrderStateData? data)? returnStatus,
    TResult? Function(SalesOrderStateData? data)? getSell,
    TResult? Function(SalesOrderStateData? data)? getReturnSell,
    TResult? Function(SalesOrderStateData? data)? addSell,
    TResult? Function(SalesOrderStateData? data)? getProduct,
    TResult? Function(SalesOrderStateData? data)? getProducts,
  }) {
    return returnStatus?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrderStateData? data)? initial,
    TResult Function(SalesOrderStateData? data)? status,
    TResult Function(SalesOrderStateData? data)? returnStatus,
    TResult Function(SalesOrderStateData? data)? getSell,
    TResult Function(SalesOrderStateData? data)? getReturnSell,
    TResult Function(SalesOrderStateData? data)? addSell,
    TResult Function(SalesOrderStateData? data)? getProduct,
    TResult Function(SalesOrderStateData? data)? getProducts,
    required TResult orElse(),
  }) {
    if (returnStatus != null) {
      return returnStatus(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(ReturnStatus value) returnStatus,
    required TResult Function(GetSell value) getSell,
    required TResult Function(GetReturnSell value) getReturnSell,
    required TResult Function(AddSell value) addSell,
    required TResult Function(GetProductById value) getProduct,
    required TResult Function(GetProducts value) getProducts,
  }) {
    return returnStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(ReturnStatus value)? returnStatus,
    TResult? Function(GetSell value)? getSell,
    TResult? Function(GetReturnSell value)? getReturnSell,
    TResult? Function(AddSell value)? addSell,
    TResult? Function(GetProductById value)? getProduct,
    TResult? Function(GetProducts value)? getProducts,
  }) {
    return returnStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(ReturnStatus value)? returnStatus,
    TResult Function(GetSell value)? getSell,
    TResult Function(GetReturnSell value)? getReturnSell,
    TResult Function(AddSell value)? addSell,
    TResult Function(GetProductById value)? getProduct,
    TResult Function(GetProducts value)? getProducts,
    required TResult orElse(),
  }) {
    if (returnStatus != null) {
      return returnStatus(this);
    }
    return orElse();
  }
}

abstract class ReturnStatus implements SalesOrderState {
  const factory ReturnStatus({final SalesOrderStateData? data}) =
      _$ReturnStatus;

  @override
  SalesOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ReturnStatusCopyWith<_$ReturnStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSellCopyWith<$Res>
    implements $SalesOrderStateCopyWith<$Res> {
  factory _$$GetSellCopyWith(_$GetSell value, $Res Function(_$GetSell) then) =
      __$$GetSellCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SalesOrderStateData? data});

  @override
  $SalesOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetSellCopyWithImpl<$Res>
    extends _$SalesOrderStateCopyWithImpl<$Res, _$GetSell>
    implements _$$GetSellCopyWith<$Res> {
  __$$GetSellCopyWithImpl(_$GetSell _value, $Res Function(_$GetSell) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetSell(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SalesOrderStateData?,
    ));
  }
}

/// @nodoc

class _$GetSell implements GetSell {
  const _$GetSell({this.data});

  @override
  final SalesOrderStateData? data;

  @override
  String toString() {
    return 'SalesOrderState.getSell(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSell &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSellCopyWith<_$GetSell> get copyWith =>
      __$$GetSellCopyWithImpl<_$GetSell>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalesOrderStateData? data) initial,
    required TResult Function(SalesOrderStateData? data) status,
    required TResult Function(SalesOrderStateData? data) returnStatus,
    required TResult Function(SalesOrderStateData? data) getSell,
    required TResult Function(SalesOrderStateData? data) getReturnSell,
    required TResult Function(SalesOrderStateData? data) addSell,
    required TResult Function(SalesOrderStateData? data) getProduct,
    required TResult Function(SalesOrderStateData? data) getProducts,
  }) {
    return getSell(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderStateData? data)? initial,
    TResult? Function(SalesOrderStateData? data)? status,
    TResult? Function(SalesOrderStateData? data)? returnStatus,
    TResult? Function(SalesOrderStateData? data)? getSell,
    TResult? Function(SalesOrderStateData? data)? getReturnSell,
    TResult? Function(SalesOrderStateData? data)? addSell,
    TResult? Function(SalesOrderStateData? data)? getProduct,
    TResult? Function(SalesOrderStateData? data)? getProducts,
  }) {
    return getSell?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrderStateData? data)? initial,
    TResult Function(SalesOrderStateData? data)? status,
    TResult Function(SalesOrderStateData? data)? returnStatus,
    TResult Function(SalesOrderStateData? data)? getSell,
    TResult Function(SalesOrderStateData? data)? getReturnSell,
    TResult Function(SalesOrderStateData? data)? addSell,
    TResult Function(SalesOrderStateData? data)? getProduct,
    TResult Function(SalesOrderStateData? data)? getProducts,
    required TResult orElse(),
  }) {
    if (getSell != null) {
      return getSell(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(ReturnStatus value) returnStatus,
    required TResult Function(GetSell value) getSell,
    required TResult Function(GetReturnSell value) getReturnSell,
    required TResult Function(AddSell value) addSell,
    required TResult Function(GetProductById value) getProduct,
    required TResult Function(GetProducts value) getProducts,
  }) {
    return getSell(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(ReturnStatus value)? returnStatus,
    TResult? Function(GetSell value)? getSell,
    TResult? Function(GetReturnSell value)? getReturnSell,
    TResult? Function(AddSell value)? addSell,
    TResult? Function(GetProductById value)? getProduct,
    TResult? Function(GetProducts value)? getProducts,
  }) {
    return getSell?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(ReturnStatus value)? returnStatus,
    TResult Function(GetSell value)? getSell,
    TResult Function(GetReturnSell value)? getReturnSell,
    TResult Function(AddSell value)? addSell,
    TResult Function(GetProductById value)? getProduct,
    TResult Function(GetProducts value)? getProducts,
    required TResult orElse(),
  }) {
    if (getSell != null) {
      return getSell(this);
    }
    return orElse();
  }
}

abstract class GetSell implements SalesOrderState {
  const factory GetSell({final SalesOrderStateData? data}) = _$GetSell;

  @override
  SalesOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetSellCopyWith<_$GetSell> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetReturnSellCopyWith<$Res>
    implements $SalesOrderStateCopyWith<$Res> {
  factory _$$GetReturnSellCopyWith(
          _$GetReturnSell value, $Res Function(_$GetReturnSell) then) =
      __$$GetReturnSellCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SalesOrderStateData? data});

  @override
  $SalesOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetReturnSellCopyWithImpl<$Res>
    extends _$SalesOrderStateCopyWithImpl<$Res, _$GetReturnSell>
    implements _$$GetReturnSellCopyWith<$Res> {
  __$$GetReturnSellCopyWithImpl(
      _$GetReturnSell _value, $Res Function(_$GetReturnSell) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetReturnSell(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SalesOrderStateData?,
    ));
  }
}

/// @nodoc

class _$GetReturnSell implements GetReturnSell {
  const _$GetReturnSell({this.data});

  @override
  final SalesOrderStateData? data;

  @override
  String toString() {
    return 'SalesOrderState.getReturnSell(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReturnSell &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReturnSellCopyWith<_$GetReturnSell> get copyWith =>
      __$$GetReturnSellCopyWithImpl<_$GetReturnSell>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalesOrderStateData? data) initial,
    required TResult Function(SalesOrderStateData? data) status,
    required TResult Function(SalesOrderStateData? data) returnStatus,
    required TResult Function(SalesOrderStateData? data) getSell,
    required TResult Function(SalesOrderStateData? data) getReturnSell,
    required TResult Function(SalesOrderStateData? data) addSell,
    required TResult Function(SalesOrderStateData? data) getProduct,
    required TResult Function(SalesOrderStateData? data) getProducts,
  }) {
    return getReturnSell(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderStateData? data)? initial,
    TResult? Function(SalesOrderStateData? data)? status,
    TResult? Function(SalesOrderStateData? data)? returnStatus,
    TResult? Function(SalesOrderStateData? data)? getSell,
    TResult? Function(SalesOrderStateData? data)? getReturnSell,
    TResult? Function(SalesOrderStateData? data)? addSell,
    TResult? Function(SalesOrderStateData? data)? getProduct,
    TResult? Function(SalesOrderStateData? data)? getProducts,
  }) {
    return getReturnSell?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrderStateData? data)? initial,
    TResult Function(SalesOrderStateData? data)? status,
    TResult Function(SalesOrderStateData? data)? returnStatus,
    TResult Function(SalesOrderStateData? data)? getSell,
    TResult Function(SalesOrderStateData? data)? getReturnSell,
    TResult Function(SalesOrderStateData? data)? addSell,
    TResult Function(SalesOrderStateData? data)? getProduct,
    TResult Function(SalesOrderStateData? data)? getProducts,
    required TResult orElse(),
  }) {
    if (getReturnSell != null) {
      return getReturnSell(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(ReturnStatus value) returnStatus,
    required TResult Function(GetSell value) getSell,
    required TResult Function(GetReturnSell value) getReturnSell,
    required TResult Function(AddSell value) addSell,
    required TResult Function(GetProductById value) getProduct,
    required TResult Function(GetProducts value) getProducts,
  }) {
    return getReturnSell(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(ReturnStatus value)? returnStatus,
    TResult? Function(GetSell value)? getSell,
    TResult? Function(GetReturnSell value)? getReturnSell,
    TResult? Function(AddSell value)? addSell,
    TResult? Function(GetProductById value)? getProduct,
    TResult? Function(GetProducts value)? getProducts,
  }) {
    return getReturnSell?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(ReturnStatus value)? returnStatus,
    TResult Function(GetSell value)? getSell,
    TResult Function(GetReturnSell value)? getReturnSell,
    TResult Function(AddSell value)? addSell,
    TResult Function(GetProductById value)? getProduct,
    TResult Function(GetProducts value)? getProducts,
    required TResult orElse(),
  }) {
    if (getReturnSell != null) {
      return getReturnSell(this);
    }
    return orElse();
  }
}

abstract class GetReturnSell implements SalesOrderState {
  const factory GetReturnSell({final SalesOrderStateData? data}) =
      _$GetReturnSell;

  @override
  SalesOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetReturnSellCopyWith<_$GetReturnSell> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSellCopyWith<$Res>
    implements $SalesOrderStateCopyWith<$Res> {
  factory _$$AddSellCopyWith(_$AddSell value, $Res Function(_$AddSell) then) =
      __$$AddSellCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SalesOrderStateData? data});

  @override
  $SalesOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AddSellCopyWithImpl<$Res>
    extends _$SalesOrderStateCopyWithImpl<$Res, _$AddSell>
    implements _$$AddSellCopyWith<$Res> {
  __$$AddSellCopyWithImpl(_$AddSell _value, $Res Function(_$AddSell) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AddSell(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SalesOrderStateData?,
    ));
  }
}

/// @nodoc

class _$AddSell implements AddSell {
  const _$AddSell({this.data});

  @override
  final SalesOrderStateData? data;

  @override
  String toString() {
    return 'SalesOrderState.addSell(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSell &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSellCopyWith<_$AddSell> get copyWith =>
      __$$AddSellCopyWithImpl<_$AddSell>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalesOrderStateData? data) initial,
    required TResult Function(SalesOrderStateData? data) status,
    required TResult Function(SalesOrderStateData? data) returnStatus,
    required TResult Function(SalesOrderStateData? data) getSell,
    required TResult Function(SalesOrderStateData? data) getReturnSell,
    required TResult Function(SalesOrderStateData? data) addSell,
    required TResult Function(SalesOrderStateData? data) getProduct,
    required TResult Function(SalesOrderStateData? data) getProducts,
  }) {
    return addSell(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderStateData? data)? initial,
    TResult? Function(SalesOrderStateData? data)? status,
    TResult? Function(SalesOrderStateData? data)? returnStatus,
    TResult? Function(SalesOrderStateData? data)? getSell,
    TResult? Function(SalesOrderStateData? data)? getReturnSell,
    TResult? Function(SalesOrderStateData? data)? addSell,
    TResult? Function(SalesOrderStateData? data)? getProduct,
    TResult? Function(SalesOrderStateData? data)? getProducts,
  }) {
    return addSell?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrderStateData? data)? initial,
    TResult Function(SalesOrderStateData? data)? status,
    TResult Function(SalesOrderStateData? data)? returnStatus,
    TResult Function(SalesOrderStateData? data)? getSell,
    TResult Function(SalesOrderStateData? data)? getReturnSell,
    TResult Function(SalesOrderStateData? data)? addSell,
    TResult Function(SalesOrderStateData? data)? getProduct,
    TResult Function(SalesOrderStateData? data)? getProducts,
    required TResult orElse(),
  }) {
    if (addSell != null) {
      return addSell(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(ReturnStatus value) returnStatus,
    required TResult Function(GetSell value) getSell,
    required TResult Function(GetReturnSell value) getReturnSell,
    required TResult Function(AddSell value) addSell,
    required TResult Function(GetProductById value) getProduct,
    required TResult Function(GetProducts value) getProducts,
  }) {
    return addSell(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(ReturnStatus value)? returnStatus,
    TResult? Function(GetSell value)? getSell,
    TResult? Function(GetReturnSell value)? getReturnSell,
    TResult? Function(AddSell value)? addSell,
    TResult? Function(GetProductById value)? getProduct,
    TResult? Function(GetProducts value)? getProducts,
  }) {
    return addSell?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(ReturnStatus value)? returnStatus,
    TResult Function(GetSell value)? getSell,
    TResult Function(GetReturnSell value)? getReturnSell,
    TResult Function(AddSell value)? addSell,
    TResult Function(GetProductById value)? getProduct,
    TResult Function(GetProducts value)? getProducts,
    required TResult orElse(),
  }) {
    if (addSell != null) {
      return addSell(this);
    }
    return orElse();
  }
}

abstract class AddSell implements SalesOrderState {
  const factory AddSell({final SalesOrderStateData? data}) = _$AddSell;

  @override
  SalesOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$AddSellCopyWith<_$AddSell> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductByIdCopyWith<$Res>
    implements $SalesOrderStateCopyWith<$Res> {
  factory _$$GetProductByIdCopyWith(
          _$GetProductById value, $Res Function(_$GetProductById) then) =
      __$$GetProductByIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SalesOrderStateData? data});

  @override
  $SalesOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetProductByIdCopyWithImpl<$Res>
    extends _$SalesOrderStateCopyWithImpl<$Res, _$GetProductById>
    implements _$$GetProductByIdCopyWith<$Res> {
  __$$GetProductByIdCopyWithImpl(
      _$GetProductById _value, $Res Function(_$GetProductById) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetProductById(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SalesOrderStateData?,
    ));
  }
}

/// @nodoc

class _$GetProductById implements GetProductById {
  const _$GetProductById({this.data});

  @override
  final SalesOrderStateData? data;

  @override
  String toString() {
    return 'SalesOrderState.getProduct(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductById &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductByIdCopyWith<_$GetProductById> get copyWith =>
      __$$GetProductByIdCopyWithImpl<_$GetProductById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalesOrderStateData? data) initial,
    required TResult Function(SalesOrderStateData? data) status,
    required TResult Function(SalesOrderStateData? data) returnStatus,
    required TResult Function(SalesOrderStateData? data) getSell,
    required TResult Function(SalesOrderStateData? data) getReturnSell,
    required TResult Function(SalesOrderStateData? data) addSell,
    required TResult Function(SalesOrderStateData? data) getProduct,
    required TResult Function(SalesOrderStateData? data) getProducts,
  }) {
    return getProduct(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderStateData? data)? initial,
    TResult? Function(SalesOrderStateData? data)? status,
    TResult? Function(SalesOrderStateData? data)? returnStatus,
    TResult? Function(SalesOrderStateData? data)? getSell,
    TResult? Function(SalesOrderStateData? data)? getReturnSell,
    TResult? Function(SalesOrderStateData? data)? addSell,
    TResult? Function(SalesOrderStateData? data)? getProduct,
    TResult? Function(SalesOrderStateData? data)? getProducts,
  }) {
    return getProduct?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrderStateData? data)? initial,
    TResult Function(SalesOrderStateData? data)? status,
    TResult Function(SalesOrderStateData? data)? returnStatus,
    TResult Function(SalesOrderStateData? data)? getSell,
    TResult Function(SalesOrderStateData? data)? getReturnSell,
    TResult Function(SalesOrderStateData? data)? addSell,
    TResult Function(SalesOrderStateData? data)? getProduct,
    TResult Function(SalesOrderStateData? data)? getProducts,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(ReturnStatus value) returnStatus,
    required TResult Function(GetSell value) getSell,
    required TResult Function(GetReturnSell value) getReturnSell,
    required TResult Function(AddSell value) addSell,
    required TResult Function(GetProductById value) getProduct,
    required TResult Function(GetProducts value) getProducts,
  }) {
    return getProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(ReturnStatus value)? returnStatus,
    TResult? Function(GetSell value)? getSell,
    TResult? Function(GetReturnSell value)? getReturnSell,
    TResult? Function(AddSell value)? addSell,
    TResult? Function(GetProductById value)? getProduct,
    TResult? Function(GetProducts value)? getProducts,
  }) {
    return getProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(ReturnStatus value)? returnStatus,
    TResult Function(GetSell value)? getSell,
    TResult Function(GetReturnSell value)? getReturnSell,
    TResult Function(AddSell value)? addSell,
    TResult Function(GetProductById value)? getProduct,
    TResult Function(GetProducts value)? getProducts,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(this);
    }
    return orElse();
  }
}

abstract class GetProductById implements SalesOrderState {
  const factory GetProductById({final SalesOrderStateData? data}) =
      _$GetProductById;

  @override
  SalesOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetProductByIdCopyWith<_$GetProductById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsCopyWith<$Res>
    implements $SalesOrderStateCopyWith<$Res> {
  factory _$$GetProductsCopyWith(
          _$GetProducts value, $Res Function(_$GetProducts) then) =
      __$$GetProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SalesOrderStateData? data});

  @override
  $SalesOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetProductsCopyWithImpl<$Res>
    extends _$SalesOrderStateCopyWithImpl<$Res, _$GetProducts>
    implements _$$GetProductsCopyWith<$Res> {
  __$$GetProductsCopyWithImpl(
      _$GetProducts _value, $Res Function(_$GetProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetProducts(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SalesOrderStateData?,
    ));
  }
}

/// @nodoc

class _$GetProducts implements GetProducts {
  const _$GetProducts({this.data});

  @override
  final SalesOrderStateData? data;

  @override
  String toString() {
    return 'SalesOrderState.getProducts(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProducts &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsCopyWith<_$GetProducts> get copyWith =>
      __$$GetProductsCopyWithImpl<_$GetProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalesOrderStateData? data) initial,
    required TResult Function(SalesOrderStateData? data) status,
    required TResult Function(SalesOrderStateData? data) returnStatus,
    required TResult Function(SalesOrderStateData? data) getSell,
    required TResult Function(SalesOrderStateData? data) getReturnSell,
    required TResult Function(SalesOrderStateData? data) addSell,
    required TResult Function(SalesOrderStateData? data) getProduct,
    required TResult Function(SalesOrderStateData? data) getProducts,
  }) {
    return getProducts(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderStateData? data)? initial,
    TResult? Function(SalesOrderStateData? data)? status,
    TResult? Function(SalesOrderStateData? data)? returnStatus,
    TResult? Function(SalesOrderStateData? data)? getSell,
    TResult? Function(SalesOrderStateData? data)? getReturnSell,
    TResult? Function(SalesOrderStateData? data)? addSell,
    TResult? Function(SalesOrderStateData? data)? getProduct,
    TResult? Function(SalesOrderStateData? data)? getProducts,
  }) {
    return getProducts?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrderStateData? data)? initial,
    TResult Function(SalesOrderStateData? data)? status,
    TResult Function(SalesOrderStateData? data)? returnStatus,
    TResult Function(SalesOrderStateData? data)? getSell,
    TResult Function(SalesOrderStateData? data)? getReturnSell,
    TResult Function(SalesOrderStateData? data)? addSell,
    TResult Function(SalesOrderStateData? data)? getProduct,
    TResult Function(SalesOrderStateData? data)? getProducts,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(ReturnStatus value) returnStatus,
    required TResult Function(GetSell value) getSell,
    required TResult Function(GetReturnSell value) getReturnSell,
    required TResult Function(AddSell value) addSell,
    required TResult Function(GetProductById value) getProduct,
    required TResult Function(GetProducts value) getProducts,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(ReturnStatus value)? returnStatus,
    TResult? Function(GetSell value)? getSell,
    TResult? Function(GetReturnSell value)? getReturnSell,
    TResult? Function(AddSell value)? addSell,
    TResult? Function(GetProductById value)? getProduct,
    TResult? Function(GetProducts value)? getProducts,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(ReturnStatus value)? returnStatus,
    TResult Function(GetSell value)? getSell,
    TResult Function(GetReturnSell value)? getReturnSell,
    TResult Function(AddSell value)? addSell,
    TResult Function(GetProductById value)? getProduct,
    TResult Function(GetProducts value)? getProducts,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class GetProducts implements SalesOrderState {
  const factory GetProducts({final SalesOrderStateData? data}) = _$GetProducts;

  @override
  SalesOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetProductsCopyWith<_$GetProducts> get copyWith =>
      throw _privateConstructorUsedError;
}
