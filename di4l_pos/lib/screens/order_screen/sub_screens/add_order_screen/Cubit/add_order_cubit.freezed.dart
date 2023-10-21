// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddOrderStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<Product> get productsSelected => throw _privateConstructorUsedError;
  num get totalAmount => throw _privateConstructorUsedError;
  int get countProductSelect => throw _privateConstructorUsedError;
  double get shipping => throw _privateConstructorUsedError;
  String get shippingMethod => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  String get discountType => throw _privateConstructorUsedError;
  DateTime? get transactionDate => throw _privateConstructorUsedError;
  ContactModel? get customerSelect => throw _privateConstructorUsedError;
  int? get businessID => throw _privateConstructorUsedError;
  List<SellProductRequest> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddOrderStateDataCopyWith<AddOrderStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOrderStateDataCopyWith<$Res> {
  factory $AddOrderStateDataCopyWith(
          AddOrderStateData value, $Res Function(AddOrderStateData) then) =
      _$AddOrderStateDataCopyWithImpl<$Res, AddOrderStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<Product> productsSelected,
      num totalAmount,
      int countProductSelect,
      double shipping,
      String shippingMethod,
      double discount,
      String discountType,
      DateTime? transactionDate,
      ContactModel? customerSelect,
      int? businessID,
      List<SellProductRequest> products});
}

/// @nodoc
class _$AddOrderStateDataCopyWithImpl<$Res, $Val extends AddOrderStateData>
    implements $AddOrderStateDataCopyWith<$Res> {
  _$AddOrderStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? productsSelected = null,
    Object? totalAmount = null,
    Object? countProductSelect = null,
    Object? shipping = null,
    Object? shippingMethod = null,
    Object? discount = null,
    Object? discountType = null,
    Object? transactionDate = freezed,
    Object? customerSelect = freezed,
    Object? businessID = freezed,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      productsSelected: null == productsSelected
          ? _value.productsSelected
          : productsSelected // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as num,
      countProductSelect: null == countProductSelect
          ? _value.countProductSelect
          : countProductSelect // ignore: cast_nullable_to_non_nullable
              as int,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as double,
      shippingMethod: null == shippingMethod
          ? _value.shippingMethod
          : shippingMethod // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: freezed == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerSelect: freezed == customerSelect
          ? _value.customerSelect
          : customerSelect // ignore: cast_nullable_to_non_nullable
              as ContactModel?,
      businessID: freezed == businessID
          ? _value.businessID
          : businessID // ignore: cast_nullable_to_non_nullable
              as int?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<SellProductRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddOrderStateDataCopyWith<$Res>
    implements $AddOrderStateDataCopyWith<$Res> {
  factory _$$_AddOrderStateDataCopyWith(_$_AddOrderStateData value,
          $Res Function(_$_AddOrderStateData) then) =
      __$$_AddOrderStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<Product> productsSelected,
      num totalAmount,
      int countProductSelect,
      double shipping,
      String shippingMethod,
      double discount,
      String discountType,
      DateTime? transactionDate,
      ContactModel? customerSelect,
      int? businessID,
      List<SellProductRequest> products});
}

/// @nodoc
class __$$_AddOrderStateDataCopyWithImpl<$Res>
    extends _$AddOrderStateDataCopyWithImpl<$Res, _$_AddOrderStateData>
    implements _$$_AddOrderStateDataCopyWith<$Res> {
  __$$_AddOrderStateDataCopyWithImpl(
      _$_AddOrderStateData _value, $Res Function(_$_AddOrderStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? productsSelected = null,
    Object? totalAmount = null,
    Object? countProductSelect = null,
    Object? shipping = null,
    Object? shippingMethod = null,
    Object? discount = null,
    Object? discountType = null,
    Object? transactionDate = freezed,
    Object? customerSelect = freezed,
    Object? businessID = freezed,
    Object? products = null,
  }) {
    return _then(_$_AddOrderStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      productsSelected: null == productsSelected
          ? _value._productsSelected
          : productsSelected // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as num,
      countProductSelect: null == countProductSelect
          ? _value.countProductSelect
          : countProductSelect // ignore: cast_nullable_to_non_nullable
              as int,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as double,
      shippingMethod: null == shippingMethod
          ? _value.shippingMethod
          : shippingMethod // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: freezed == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerSelect: freezed == customerSelect
          ? _value.customerSelect
          : customerSelect // ignore: cast_nullable_to_non_nullable
              as ContactModel?,
      businessID: freezed == businessID
          ? _value.businessID
          : businessID // ignore: cast_nullable_to_non_nullable
              as int?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<SellProductRequest>,
    ));
  }
}

/// @nodoc

class _$_AddOrderStateData implements _AddOrderStateData {
  const _$_AddOrderStateData(
      {this.status = StatusType.init,
      final List<Product> productsSelected = const [],
      this.totalAmount = 0,
      this.countProductSelect = 0,
      this.shipping = 0,
      this.shippingMethod = "pos",
      this.discount = 0,
      this.discountType = "fixed",
      this.transactionDate,
      this.customerSelect,
      this.businessID,
      final List<SellProductRequest> products = const []})
      : _productsSelected = productsSelected,
        _products = products;

  @override
  @JsonKey()
  final StatusType status;
  final List<Product> _productsSelected;
  @override
  @JsonKey()
  List<Product> get productsSelected {
    if (_productsSelected is EqualUnmodifiableListView)
      return _productsSelected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsSelected);
  }

  @override
  @JsonKey()
  final num totalAmount;
  @override
  @JsonKey()
  final int countProductSelect;
  @override
  @JsonKey()
  final double shipping;
  @override
  @JsonKey()
  final String shippingMethod;
  @override
  @JsonKey()
  final double discount;
  @override
  @JsonKey()
  final String discountType;
  @override
  final DateTime? transactionDate;
  @override
  final ContactModel? customerSelect;
  @override
  final int? businessID;
  final List<SellProductRequest> _products;
  @override
  @JsonKey()
  List<SellProductRequest> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'AddOrderStateData(status: $status, productsSelected: $productsSelected, totalAmount: $totalAmount, countProductSelect: $countProductSelect, shipping: $shipping, shippingMethod: $shippingMethod, discount: $discount, discountType: $discountType, transactionDate: $transactionDate, customerSelect: $customerSelect, businessID: $businessID, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddOrderStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._productsSelected, _productsSelected) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.countProductSelect, countProductSelect) ||
                other.countProductSelect == countProductSelect) &&
            (identical(other.shipping, shipping) ||
                other.shipping == shipping) &&
            (identical(other.shippingMethod, shippingMethod) ||
                other.shippingMethod == shippingMethod) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.customerSelect, customerSelect) ||
                other.customerSelect == customerSelect) &&
            (identical(other.businessID, businessID) ||
                other.businessID == businessID) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_productsSelected),
      totalAmount,
      countProductSelect,
      shipping,
      shippingMethod,
      discount,
      discountType,
      transactionDate,
      customerSelect,
      businessID,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddOrderStateDataCopyWith<_$_AddOrderStateData> get copyWith =>
      __$$_AddOrderStateDataCopyWithImpl<_$_AddOrderStateData>(
          this, _$identity);
}

abstract class _AddOrderStateData implements AddOrderStateData {
  const factory _AddOrderStateData(
      {final StatusType status,
      final List<Product> productsSelected,
      final num totalAmount,
      final int countProductSelect,
      final double shipping,
      final String shippingMethod,
      final double discount,
      final String discountType,
      final DateTime? transactionDate,
      final ContactModel? customerSelect,
      final int? businessID,
      final List<SellProductRequest> products}) = _$_AddOrderStateData;

  @override
  StatusType get status;
  @override
  List<Product> get productsSelected;
  @override
  num get totalAmount;
  @override
  int get countProductSelect;
  @override
  double get shipping;
  @override
  String get shippingMethod;
  @override
  double get discount;
  @override
  String get discountType;
  @override
  DateTime? get transactionDate;
  @override
  ContactModel? get customerSelect;
  @override
  int? get businessID;
  @override
  List<SellProductRequest> get products;
  @override
  @JsonKey(ignore: true)
  _$$_AddOrderStateDataCopyWith<_$_AddOrderStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddOrderState {
  AddOrderStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddOrderStateData? data) initial,
    required TResult Function(AddOrderStateData? data) status,
    required TResult Function(AddOrderStateData? data) getOrder,
    required TResult Function(AddOrderStateData? data) setProductSelected,
    required TResult Function(AddOrderStateData? data) setProductSelectedAll,
    required TResult Function(AddOrderStateData? data) setShipping,
    required TResult Function(AddOrderStateData? data) setDiscount,
    required TResult Function(AddOrderStateData? data) setShippingMethod,
    required TResult Function(AddOrderStateData? data) setTransactionDate,
    required TResult Function(AddOrderStateData? data) setSustomerSelect,
    required TResult Function(AddOrderStateData? data) setBusinessID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddOrderStateData? data)? initial,
    TResult? Function(AddOrderStateData? data)? status,
    TResult? Function(AddOrderStateData? data)? getOrder,
    TResult? Function(AddOrderStateData? data)? setProductSelected,
    TResult? Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult? Function(AddOrderStateData? data)? setShipping,
    TResult? Function(AddOrderStateData? data)? setDiscount,
    TResult? Function(AddOrderStateData? data)? setShippingMethod,
    TResult? Function(AddOrderStateData? data)? setTransactionDate,
    TResult? Function(AddOrderStateData? data)? setSustomerSelect,
    TResult? Function(AddOrderStateData? data)? setBusinessID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddOrderStateData? data)? initial,
    TResult Function(AddOrderStateData? data)? status,
    TResult Function(AddOrderStateData? data)? getOrder,
    TResult Function(AddOrderStateData? data)? setProductSelected,
    TResult Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult Function(AddOrderStateData? data)? setShipping,
    TResult Function(AddOrderStateData? data)? setDiscount,
    TResult Function(AddOrderStateData? data)? setShippingMethod,
    TResult Function(AddOrderStateData? data)? setTransactionDate,
    TResult Function(AddOrderStateData? data)? setSustomerSelect,
    TResult Function(AddOrderStateData? data)? setBusinessID,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(SetProductSelected value) setProductSelected,
    required TResult Function(SetProductSelectedAll value)
        setProductSelectedAll,
    required TResult Function(SetShipping value) setShipping,
    required TResult Function(SetDiscount value) setDiscount,
    required TResult Function(SetShippingMethod value) setShippingMethod,
    required TResult Function(SetTransactionDate value) setTransactionDate,
    required TResult Function(SetSustomerSelect value) setSustomerSelect,
    required TResult Function(SetBusinessID value) setBusinessID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(SetProductSelected value)? setProductSelected,
    TResult? Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult? Function(SetShipping value)? setShipping,
    TResult? Function(SetDiscount value)? setDiscount,
    TResult? Function(SetShippingMethod value)? setShippingMethod,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
    TResult? Function(SetSustomerSelect value)? setSustomerSelect,
    TResult? Function(SetBusinessID value)? setBusinessID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetOrder value)? getOrder,
    TResult Function(SetProductSelected value)? setProductSelected,
    TResult Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult Function(SetShipping value)? setShipping,
    TResult Function(SetDiscount value)? setDiscount,
    TResult Function(SetShippingMethod value)? setShippingMethod,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    TResult Function(SetSustomerSelect value)? setSustomerSelect,
    TResult Function(SetBusinessID value)? setBusinessID,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddOrderStateCopyWith<AddOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOrderStateCopyWith<$Res> {
  factory $AddOrderStateCopyWith(
          AddOrderState value, $Res Function(AddOrderState) then) =
      _$AddOrderStateCopyWithImpl<$Res, AddOrderState>;
  @useResult
  $Res call({AddOrderStateData? data});

  $AddOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddOrderStateCopyWithImpl<$Res, $Val extends AddOrderState>
    implements $AddOrderStateCopyWith<$Res> {
  _$AddOrderStateCopyWithImpl(this._value, this._then);

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
              as AddOrderStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddOrderStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddOrderStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddOrderStateData? data});

  @override
  $AddOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$Initial>
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
              as AddOrderStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final AddOrderStateData? data;

  @override
  String toString() {
    return 'AddOrderState.initial(data: $data)';
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
    required TResult Function(AddOrderStateData? data) initial,
    required TResult Function(AddOrderStateData? data) status,
    required TResult Function(AddOrderStateData? data) getOrder,
    required TResult Function(AddOrderStateData? data) setProductSelected,
    required TResult Function(AddOrderStateData? data) setProductSelectedAll,
    required TResult Function(AddOrderStateData? data) setShipping,
    required TResult Function(AddOrderStateData? data) setDiscount,
    required TResult Function(AddOrderStateData? data) setShippingMethod,
    required TResult Function(AddOrderStateData? data) setTransactionDate,
    required TResult Function(AddOrderStateData? data) setSustomerSelect,
    required TResult Function(AddOrderStateData? data) setBusinessID,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddOrderStateData? data)? initial,
    TResult? Function(AddOrderStateData? data)? status,
    TResult? Function(AddOrderStateData? data)? getOrder,
    TResult? Function(AddOrderStateData? data)? setProductSelected,
    TResult? Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult? Function(AddOrderStateData? data)? setShipping,
    TResult? Function(AddOrderStateData? data)? setDiscount,
    TResult? Function(AddOrderStateData? data)? setShippingMethod,
    TResult? Function(AddOrderStateData? data)? setTransactionDate,
    TResult? Function(AddOrderStateData? data)? setSustomerSelect,
    TResult? Function(AddOrderStateData? data)? setBusinessID,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddOrderStateData? data)? initial,
    TResult Function(AddOrderStateData? data)? status,
    TResult Function(AddOrderStateData? data)? getOrder,
    TResult Function(AddOrderStateData? data)? setProductSelected,
    TResult Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult Function(AddOrderStateData? data)? setShipping,
    TResult Function(AddOrderStateData? data)? setDiscount,
    TResult Function(AddOrderStateData? data)? setShippingMethod,
    TResult Function(AddOrderStateData? data)? setTransactionDate,
    TResult Function(AddOrderStateData? data)? setSustomerSelect,
    TResult Function(AddOrderStateData? data)? setBusinessID,
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
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(SetProductSelected value) setProductSelected,
    required TResult Function(SetProductSelectedAll value)
        setProductSelectedAll,
    required TResult Function(SetShipping value) setShipping,
    required TResult Function(SetDiscount value) setDiscount,
    required TResult Function(SetShippingMethod value) setShippingMethod,
    required TResult Function(SetTransactionDate value) setTransactionDate,
    required TResult Function(SetSustomerSelect value) setSustomerSelect,
    required TResult Function(SetBusinessID value) setBusinessID,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(SetProductSelected value)? setProductSelected,
    TResult? Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult? Function(SetShipping value)? setShipping,
    TResult? Function(SetDiscount value)? setDiscount,
    TResult? Function(SetShippingMethod value)? setShippingMethod,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
    TResult? Function(SetSustomerSelect value)? setSustomerSelect,
    TResult? Function(SetBusinessID value)? setBusinessID,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetOrder value)? getOrder,
    TResult Function(SetProductSelected value)? setProductSelected,
    TResult Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult Function(SetShipping value)? setShipping,
    TResult Function(SetDiscount value)? setDiscount,
    TResult Function(SetShippingMethod value)? setShippingMethod,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    TResult Function(SetSustomerSelect value)? setSustomerSelect,
    TResult Function(SetBusinessID value)? setBusinessID,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddOrderState {
  const factory Initial({final AddOrderStateData? data}) = _$Initial;

  @override
  AddOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $AddOrderStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddOrderStateData? data});

  @override
  $AddOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$Status>
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
              as AddOrderStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final AddOrderStateData? data;

  @override
  String toString() {
    return 'AddOrderState.status(data: $data)';
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
    required TResult Function(AddOrderStateData? data) initial,
    required TResult Function(AddOrderStateData? data) status,
    required TResult Function(AddOrderStateData? data) getOrder,
    required TResult Function(AddOrderStateData? data) setProductSelected,
    required TResult Function(AddOrderStateData? data) setProductSelectedAll,
    required TResult Function(AddOrderStateData? data) setShipping,
    required TResult Function(AddOrderStateData? data) setDiscount,
    required TResult Function(AddOrderStateData? data) setShippingMethod,
    required TResult Function(AddOrderStateData? data) setTransactionDate,
    required TResult Function(AddOrderStateData? data) setSustomerSelect,
    required TResult Function(AddOrderStateData? data) setBusinessID,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddOrderStateData? data)? initial,
    TResult? Function(AddOrderStateData? data)? status,
    TResult? Function(AddOrderStateData? data)? getOrder,
    TResult? Function(AddOrderStateData? data)? setProductSelected,
    TResult? Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult? Function(AddOrderStateData? data)? setShipping,
    TResult? Function(AddOrderStateData? data)? setDiscount,
    TResult? Function(AddOrderStateData? data)? setShippingMethod,
    TResult? Function(AddOrderStateData? data)? setTransactionDate,
    TResult? Function(AddOrderStateData? data)? setSustomerSelect,
    TResult? Function(AddOrderStateData? data)? setBusinessID,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddOrderStateData? data)? initial,
    TResult Function(AddOrderStateData? data)? status,
    TResult Function(AddOrderStateData? data)? getOrder,
    TResult Function(AddOrderStateData? data)? setProductSelected,
    TResult Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult Function(AddOrderStateData? data)? setShipping,
    TResult Function(AddOrderStateData? data)? setDiscount,
    TResult Function(AddOrderStateData? data)? setShippingMethod,
    TResult Function(AddOrderStateData? data)? setTransactionDate,
    TResult Function(AddOrderStateData? data)? setSustomerSelect,
    TResult Function(AddOrderStateData? data)? setBusinessID,
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
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(SetProductSelected value) setProductSelected,
    required TResult Function(SetProductSelectedAll value)
        setProductSelectedAll,
    required TResult Function(SetShipping value) setShipping,
    required TResult Function(SetDiscount value) setDiscount,
    required TResult Function(SetShippingMethod value) setShippingMethod,
    required TResult Function(SetTransactionDate value) setTransactionDate,
    required TResult Function(SetSustomerSelect value) setSustomerSelect,
    required TResult Function(SetBusinessID value) setBusinessID,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(SetProductSelected value)? setProductSelected,
    TResult? Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult? Function(SetShipping value)? setShipping,
    TResult? Function(SetDiscount value)? setDiscount,
    TResult? Function(SetShippingMethod value)? setShippingMethod,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
    TResult? Function(SetSustomerSelect value)? setSustomerSelect,
    TResult? Function(SetBusinessID value)? setBusinessID,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetOrder value)? getOrder,
    TResult Function(SetProductSelected value)? setProductSelected,
    TResult Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult Function(SetShipping value)? setShipping,
    TResult Function(SetDiscount value)? setDiscount,
    TResult Function(SetShippingMethod value)? setShippingMethod,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    TResult Function(SetSustomerSelect value)? setSustomerSelect,
    TResult Function(SetBusinessID value)? setBusinessID,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements AddOrderState {
  const factory Status({final AddOrderStateData? data}) = _$Status;

  @override
  AddOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOrderCopyWith<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  factory _$$GetOrderCopyWith(
          _$GetOrder value, $Res Function(_$GetOrder) then) =
      __$$GetOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddOrderStateData? data});

  @override
  $AddOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetOrderCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$GetOrder>
    implements _$$GetOrderCopyWith<$Res> {
  __$$GetOrderCopyWithImpl(_$GetOrder _value, $Res Function(_$GetOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetOrder(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddOrderStateData?,
    ));
  }
}

/// @nodoc

class _$GetOrder implements GetOrder {
  const _$GetOrder({this.data});

  @override
  final AddOrderStateData? data;

  @override
  String toString() {
    return 'AddOrderState.getOrder(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrder &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderCopyWith<_$GetOrder> get copyWith =>
      __$$GetOrderCopyWithImpl<_$GetOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddOrderStateData? data) initial,
    required TResult Function(AddOrderStateData? data) status,
    required TResult Function(AddOrderStateData? data) getOrder,
    required TResult Function(AddOrderStateData? data) setProductSelected,
    required TResult Function(AddOrderStateData? data) setProductSelectedAll,
    required TResult Function(AddOrderStateData? data) setShipping,
    required TResult Function(AddOrderStateData? data) setDiscount,
    required TResult Function(AddOrderStateData? data) setShippingMethod,
    required TResult Function(AddOrderStateData? data) setTransactionDate,
    required TResult Function(AddOrderStateData? data) setSustomerSelect,
    required TResult Function(AddOrderStateData? data) setBusinessID,
  }) {
    return getOrder(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddOrderStateData? data)? initial,
    TResult? Function(AddOrderStateData? data)? status,
    TResult? Function(AddOrderStateData? data)? getOrder,
    TResult? Function(AddOrderStateData? data)? setProductSelected,
    TResult? Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult? Function(AddOrderStateData? data)? setShipping,
    TResult? Function(AddOrderStateData? data)? setDiscount,
    TResult? Function(AddOrderStateData? data)? setShippingMethod,
    TResult? Function(AddOrderStateData? data)? setTransactionDate,
    TResult? Function(AddOrderStateData? data)? setSustomerSelect,
    TResult? Function(AddOrderStateData? data)? setBusinessID,
  }) {
    return getOrder?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddOrderStateData? data)? initial,
    TResult Function(AddOrderStateData? data)? status,
    TResult Function(AddOrderStateData? data)? getOrder,
    TResult Function(AddOrderStateData? data)? setProductSelected,
    TResult Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult Function(AddOrderStateData? data)? setShipping,
    TResult Function(AddOrderStateData? data)? setDiscount,
    TResult Function(AddOrderStateData? data)? setShippingMethod,
    TResult Function(AddOrderStateData? data)? setTransactionDate,
    TResult Function(AddOrderStateData? data)? setSustomerSelect,
    TResult Function(AddOrderStateData? data)? setBusinessID,
    required TResult orElse(),
  }) {
    if (getOrder != null) {
      return getOrder(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(SetProductSelected value) setProductSelected,
    required TResult Function(SetProductSelectedAll value)
        setProductSelectedAll,
    required TResult Function(SetShipping value) setShipping,
    required TResult Function(SetDiscount value) setDiscount,
    required TResult Function(SetShippingMethod value) setShippingMethod,
    required TResult Function(SetTransactionDate value) setTransactionDate,
    required TResult Function(SetSustomerSelect value) setSustomerSelect,
    required TResult Function(SetBusinessID value) setBusinessID,
  }) {
    return getOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(SetProductSelected value)? setProductSelected,
    TResult? Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult? Function(SetShipping value)? setShipping,
    TResult? Function(SetDiscount value)? setDiscount,
    TResult? Function(SetShippingMethod value)? setShippingMethod,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
    TResult? Function(SetSustomerSelect value)? setSustomerSelect,
    TResult? Function(SetBusinessID value)? setBusinessID,
  }) {
    return getOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetOrder value)? getOrder,
    TResult Function(SetProductSelected value)? setProductSelected,
    TResult Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult Function(SetShipping value)? setShipping,
    TResult Function(SetDiscount value)? setDiscount,
    TResult Function(SetShippingMethod value)? setShippingMethod,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    TResult Function(SetSustomerSelect value)? setSustomerSelect,
    TResult Function(SetBusinessID value)? setBusinessID,
    required TResult orElse(),
  }) {
    if (getOrder != null) {
      return getOrder(this);
    }
    return orElse();
  }
}

abstract class GetOrder implements AddOrderState {
  const factory GetOrder({final AddOrderStateData? data}) = _$GetOrder;

  @override
  AddOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetOrderCopyWith<_$GetOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetProductSelectedCopyWith<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  factory _$$SetProductSelectedCopyWith(_$SetProductSelected value,
          $Res Function(_$SetProductSelected) then) =
      __$$SetProductSelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddOrderStateData? data});

  @override
  $AddOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetProductSelectedCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$SetProductSelected>
    implements _$$SetProductSelectedCopyWith<$Res> {
  __$$SetProductSelectedCopyWithImpl(
      _$SetProductSelected _value, $Res Function(_$SetProductSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetProductSelected(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddOrderStateData?,
    ));
  }
}

/// @nodoc

class _$SetProductSelected implements SetProductSelected {
  const _$SetProductSelected(this.data);

  @override
  final AddOrderStateData? data;

  @override
  String toString() {
    return 'AddOrderState.setProductSelected(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetProductSelected &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetProductSelectedCopyWith<_$SetProductSelected> get copyWith =>
      __$$SetProductSelectedCopyWithImpl<_$SetProductSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddOrderStateData? data) initial,
    required TResult Function(AddOrderStateData? data) status,
    required TResult Function(AddOrderStateData? data) getOrder,
    required TResult Function(AddOrderStateData? data) setProductSelected,
    required TResult Function(AddOrderStateData? data) setProductSelectedAll,
    required TResult Function(AddOrderStateData? data) setShipping,
    required TResult Function(AddOrderStateData? data) setDiscount,
    required TResult Function(AddOrderStateData? data) setShippingMethod,
    required TResult Function(AddOrderStateData? data) setTransactionDate,
    required TResult Function(AddOrderStateData? data) setSustomerSelect,
    required TResult Function(AddOrderStateData? data) setBusinessID,
  }) {
    return setProductSelected(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddOrderStateData? data)? initial,
    TResult? Function(AddOrderStateData? data)? status,
    TResult? Function(AddOrderStateData? data)? getOrder,
    TResult? Function(AddOrderStateData? data)? setProductSelected,
    TResult? Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult? Function(AddOrderStateData? data)? setShipping,
    TResult? Function(AddOrderStateData? data)? setDiscount,
    TResult? Function(AddOrderStateData? data)? setShippingMethod,
    TResult? Function(AddOrderStateData? data)? setTransactionDate,
    TResult? Function(AddOrderStateData? data)? setSustomerSelect,
    TResult? Function(AddOrderStateData? data)? setBusinessID,
  }) {
    return setProductSelected?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddOrderStateData? data)? initial,
    TResult Function(AddOrderStateData? data)? status,
    TResult Function(AddOrderStateData? data)? getOrder,
    TResult Function(AddOrderStateData? data)? setProductSelected,
    TResult Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult Function(AddOrderStateData? data)? setShipping,
    TResult Function(AddOrderStateData? data)? setDiscount,
    TResult Function(AddOrderStateData? data)? setShippingMethod,
    TResult Function(AddOrderStateData? data)? setTransactionDate,
    TResult Function(AddOrderStateData? data)? setSustomerSelect,
    TResult Function(AddOrderStateData? data)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setProductSelected != null) {
      return setProductSelected(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(SetProductSelected value) setProductSelected,
    required TResult Function(SetProductSelectedAll value)
        setProductSelectedAll,
    required TResult Function(SetShipping value) setShipping,
    required TResult Function(SetDiscount value) setDiscount,
    required TResult Function(SetShippingMethod value) setShippingMethod,
    required TResult Function(SetTransactionDate value) setTransactionDate,
    required TResult Function(SetSustomerSelect value) setSustomerSelect,
    required TResult Function(SetBusinessID value) setBusinessID,
  }) {
    return setProductSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(SetProductSelected value)? setProductSelected,
    TResult? Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult? Function(SetShipping value)? setShipping,
    TResult? Function(SetDiscount value)? setDiscount,
    TResult? Function(SetShippingMethod value)? setShippingMethod,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
    TResult? Function(SetSustomerSelect value)? setSustomerSelect,
    TResult? Function(SetBusinessID value)? setBusinessID,
  }) {
    return setProductSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetOrder value)? getOrder,
    TResult Function(SetProductSelected value)? setProductSelected,
    TResult Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult Function(SetShipping value)? setShipping,
    TResult Function(SetDiscount value)? setDiscount,
    TResult Function(SetShippingMethod value)? setShippingMethod,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    TResult Function(SetSustomerSelect value)? setSustomerSelect,
    TResult Function(SetBusinessID value)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setProductSelected != null) {
      return setProductSelected(this);
    }
    return orElse();
  }
}

abstract class SetProductSelected implements AddOrderState {
  const factory SetProductSelected(final AddOrderStateData? data) =
      _$SetProductSelected;

  @override
  AddOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetProductSelectedCopyWith<_$SetProductSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetProductSelectedAllCopyWith<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  factory _$$SetProductSelectedAllCopyWith(_$SetProductSelectedAll value,
          $Res Function(_$SetProductSelectedAll) then) =
      __$$SetProductSelectedAllCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddOrderStateData? data});

  @override
  $AddOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetProductSelectedAllCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$SetProductSelectedAll>
    implements _$$SetProductSelectedAllCopyWith<$Res> {
  __$$SetProductSelectedAllCopyWithImpl(_$SetProductSelectedAll _value,
      $Res Function(_$SetProductSelectedAll) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetProductSelectedAll(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddOrderStateData?,
    ));
  }
}

/// @nodoc

class _$SetProductSelectedAll implements SetProductSelectedAll {
  const _$SetProductSelectedAll(this.data);

  @override
  final AddOrderStateData? data;

  @override
  String toString() {
    return 'AddOrderState.setProductSelectedAll(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetProductSelectedAll &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetProductSelectedAllCopyWith<_$SetProductSelectedAll> get copyWith =>
      __$$SetProductSelectedAllCopyWithImpl<_$SetProductSelectedAll>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddOrderStateData? data) initial,
    required TResult Function(AddOrderStateData? data) status,
    required TResult Function(AddOrderStateData? data) getOrder,
    required TResult Function(AddOrderStateData? data) setProductSelected,
    required TResult Function(AddOrderStateData? data) setProductSelectedAll,
    required TResult Function(AddOrderStateData? data) setShipping,
    required TResult Function(AddOrderStateData? data) setDiscount,
    required TResult Function(AddOrderStateData? data) setShippingMethod,
    required TResult Function(AddOrderStateData? data) setTransactionDate,
    required TResult Function(AddOrderStateData? data) setSustomerSelect,
    required TResult Function(AddOrderStateData? data) setBusinessID,
  }) {
    return setProductSelectedAll(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddOrderStateData? data)? initial,
    TResult? Function(AddOrderStateData? data)? status,
    TResult? Function(AddOrderStateData? data)? getOrder,
    TResult? Function(AddOrderStateData? data)? setProductSelected,
    TResult? Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult? Function(AddOrderStateData? data)? setShipping,
    TResult? Function(AddOrderStateData? data)? setDiscount,
    TResult? Function(AddOrderStateData? data)? setShippingMethod,
    TResult? Function(AddOrderStateData? data)? setTransactionDate,
    TResult? Function(AddOrderStateData? data)? setSustomerSelect,
    TResult? Function(AddOrderStateData? data)? setBusinessID,
  }) {
    return setProductSelectedAll?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddOrderStateData? data)? initial,
    TResult Function(AddOrderStateData? data)? status,
    TResult Function(AddOrderStateData? data)? getOrder,
    TResult Function(AddOrderStateData? data)? setProductSelected,
    TResult Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult Function(AddOrderStateData? data)? setShipping,
    TResult Function(AddOrderStateData? data)? setDiscount,
    TResult Function(AddOrderStateData? data)? setShippingMethod,
    TResult Function(AddOrderStateData? data)? setTransactionDate,
    TResult Function(AddOrderStateData? data)? setSustomerSelect,
    TResult Function(AddOrderStateData? data)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setProductSelectedAll != null) {
      return setProductSelectedAll(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(SetProductSelected value) setProductSelected,
    required TResult Function(SetProductSelectedAll value)
        setProductSelectedAll,
    required TResult Function(SetShipping value) setShipping,
    required TResult Function(SetDiscount value) setDiscount,
    required TResult Function(SetShippingMethod value) setShippingMethod,
    required TResult Function(SetTransactionDate value) setTransactionDate,
    required TResult Function(SetSustomerSelect value) setSustomerSelect,
    required TResult Function(SetBusinessID value) setBusinessID,
  }) {
    return setProductSelectedAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(SetProductSelected value)? setProductSelected,
    TResult? Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult? Function(SetShipping value)? setShipping,
    TResult? Function(SetDiscount value)? setDiscount,
    TResult? Function(SetShippingMethod value)? setShippingMethod,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
    TResult? Function(SetSustomerSelect value)? setSustomerSelect,
    TResult? Function(SetBusinessID value)? setBusinessID,
  }) {
    return setProductSelectedAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetOrder value)? getOrder,
    TResult Function(SetProductSelected value)? setProductSelected,
    TResult Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult Function(SetShipping value)? setShipping,
    TResult Function(SetDiscount value)? setDiscount,
    TResult Function(SetShippingMethod value)? setShippingMethod,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    TResult Function(SetSustomerSelect value)? setSustomerSelect,
    TResult Function(SetBusinessID value)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setProductSelectedAll != null) {
      return setProductSelectedAll(this);
    }
    return orElse();
  }
}

abstract class SetProductSelectedAll implements AddOrderState {
  const factory SetProductSelectedAll(final AddOrderStateData? data) =
      _$SetProductSelectedAll;

  @override
  AddOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetProductSelectedAllCopyWith<_$SetProductSelectedAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetShippingCopyWith<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  factory _$$SetShippingCopyWith(
          _$SetShipping value, $Res Function(_$SetShipping) then) =
      __$$SetShippingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddOrderStateData? data});

  @override
  $AddOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetShippingCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$SetShipping>
    implements _$$SetShippingCopyWith<$Res> {
  __$$SetShippingCopyWithImpl(
      _$SetShipping _value, $Res Function(_$SetShipping) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetShipping(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddOrderStateData?,
    ));
  }
}

/// @nodoc

class _$SetShipping implements SetShipping {
  const _$SetShipping(this.data);

  @override
  final AddOrderStateData? data;

  @override
  String toString() {
    return 'AddOrderState.setShipping(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetShipping &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetShippingCopyWith<_$SetShipping> get copyWith =>
      __$$SetShippingCopyWithImpl<_$SetShipping>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddOrderStateData? data) initial,
    required TResult Function(AddOrderStateData? data) status,
    required TResult Function(AddOrderStateData? data) getOrder,
    required TResult Function(AddOrderStateData? data) setProductSelected,
    required TResult Function(AddOrderStateData? data) setProductSelectedAll,
    required TResult Function(AddOrderStateData? data) setShipping,
    required TResult Function(AddOrderStateData? data) setDiscount,
    required TResult Function(AddOrderStateData? data) setShippingMethod,
    required TResult Function(AddOrderStateData? data) setTransactionDate,
    required TResult Function(AddOrderStateData? data) setSustomerSelect,
    required TResult Function(AddOrderStateData? data) setBusinessID,
  }) {
    return setShipping(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddOrderStateData? data)? initial,
    TResult? Function(AddOrderStateData? data)? status,
    TResult? Function(AddOrderStateData? data)? getOrder,
    TResult? Function(AddOrderStateData? data)? setProductSelected,
    TResult? Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult? Function(AddOrderStateData? data)? setShipping,
    TResult? Function(AddOrderStateData? data)? setDiscount,
    TResult? Function(AddOrderStateData? data)? setShippingMethod,
    TResult? Function(AddOrderStateData? data)? setTransactionDate,
    TResult? Function(AddOrderStateData? data)? setSustomerSelect,
    TResult? Function(AddOrderStateData? data)? setBusinessID,
  }) {
    return setShipping?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddOrderStateData? data)? initial,
    TResult Function(AddOrderStateData? data)? status,
    TResult Function(AddOrderStateData? data)? getOrder,
    TResult Function(AddOrderStateData? data)? setProductSelected,
    TResult Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult Function(AddOrderStateData? data)? setShipping,
    TResult Function(AddOrderStateData? data)? setDiscount,
    TResult Function(AddOrderStateData? data)? setShippingMethod,
    TResult Function(AddOrderStateData? data)? setTransactionDate,
    TResult Function(AddOrderStateData? data)? setSustomerSelect,
    TResult Function(AddOrderStateData? data)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setShipping != null) {
      return setShipping(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(SetProductSelected value) setProductSelected,
    required TResult Function(SetProductSelectedAll value)
        setProductSelectedAll,
    required TResult Function(SetShipping value) setShipping,
    required TResult Function(SetDiscount value) setDiscount,
    required TResult Function(SetShippingMethod value) setShippingMethod,
    required TResult Function(SetTransactionDate value) setTransactionDate,
    required TResult Function(SetSustomerSelect value) setSustomerSelect,
    required TResult Function(SetBusinessID value) setBusinessID,
  }) {
    return setShipping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(SetProductSelected value)? setProductSelected,
    TResult? Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult? Function(SetShipping value)? setShipping,
    TResult? Function(SetDiscount value)? setDiscount,
    TResult? Function(SetShippingMethod value)? setShippingMethod,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
    TResult? Function(SetSustomerSelect value)? setSustomerSelect,
    TResult? Function(SetBusinessID value)? setBusinessID,
  }) {
    return setShipping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetOrder value)? getOrder,
    TResult Function(SetProductSelected value)? setProductSelected,
    TResult Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult Function(SetShipping value)? setShipping,
    TResult Function(SetDiscount value)? setDiscount,
    TResult Function(SetShippingMethod value)? setShippingMethod,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    TResult Function(SetSustomerSelect value)? setSustomerSelect,
    TResult Function(SetBusinessID value)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setShipping != null) {
      return setShipping(this);
    }
    return orElse();
  }
}

abstract class SetShipping implements AddOrderState {
  const factory SetShipping(final AddOrderStateData? data) = _$SetShipping;

  @override
  AddOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetShippingCopyWith<_$SetShipping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetDiscountCopyWith<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  factory _$$SetDiscountCopyWith(
          _$SetDiscount value, $Res Function(_$SetDiscount) then) =
      __$$SetDiscountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddOrderStateData? data});

  @override
  $AddOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetDiscountCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$SetDiscount>
    implements _$$SetDiscountCopyWith<$Res> {
  __$$SetDiscountCopyWithImpl(
      _$SetDiscount _value, $Res Function(_$SetDiscount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetDiscount(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddOrderStateData?,
    ));
  }
}

/// @nodoc

class _$SetDiscount implements SetDiscount {
  const _$SetDiscount(this.data);

  @override
  final AddOrderStateData? data;

  @override
  String toString() {
    return 'AddOrderState.setDiscount(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDiscount &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDiscountCopyWith<_$SetDiscount> get copyWith =>
      __$$SetDiscountCopyWithImpl<_$SetDiscount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddOrderStateData? data) initial,
    required TResult Function(AddOrderStateData? data) status,
    required TResult Function(AddOrderStateData? data) getOrder,
    required TResult Function(AddOrderStateData? data) setProductSelected,
    required TResult Function(AddOrderStateData? data) setProductSelectedAll,
    required TResult Function(AddOrderStateData? data) setShipping,
    required TResult Function(AddOrderStateData? data) setDiscount,
    required TResult Function(AddOrderStateData? data) setShippingMethod,
    required TResult Function(AddOrderStateData? data) setTransactionDate,
    required TResult Function(AddOrderStateData? data) setSustomerSelect,
    required TResult Function(AddOrderStateData? data) setBusinessID,
  }) {
    return setDiscount(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddOrderStateData? data)? initial,
    TResult? Function(AddOrderStateData? data)? status,
    TResult? Function(AddOrderStateData? data)? getOrder,
    TResult? Function(AddOrderStateData? data)? setProductSelected,
    TResult? Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult? Function(AddOrderStateData? data)? setShipping,
    TResult? Function(AddOrderStateData? data)? setDiscount,
    TResult? Function(AddOrderStateData? data)? setShippingMethod,
    TResult? Function(AddOrderStateData? data)? setTransactionDate,
    TResult? Function(AddOrderStateData? data)? setSustomerSelect,
    TResult? Function(AddOrderStateData? data)? setBusinessID,
  }) {
    return setDiscount?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddOrderStateData? data)? initial,
    TResult Function(AddOrderStateData? data)? status,
    TResult Function(AddOrderStateData? data)? getOrder,
    TResult Function(AddOrderStateData? data)? setProductSelected,
    TResult Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult Function(AddOrderStateData? data)? setShipping,
    TResult Function(AddOrderStateData? data)? setDiscount,
    TResult Function(AddOrderStateData? data)? setShippingMethod,
    TResult Function(AddOrderStateData? data)? setTransactionDate,
    TResult Function(AddOrderStateData? data)? setSustomerSelect,
    TResult Function(AddOrderStateData? data)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setDiscount != null) {
      return setDiscount(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(SetProductSelected value) setProductSelected,
    required TResult Function(SetProductSelectedAll value)
        setProductSelectedAll,
    required TResult Function(SetShipping value) setShipping,
    required TResult Function(SetDiscount value) setDiscount,
    required TResult Function(SetShippingMethod value) setShippingMethod,
    required TResult Function(SetTransactionDate value) setTransactionDate,
    required TResult Function(SetSustomerSelect value) setSustomerSelect,
    required TResult Function(SetBusinessID value) setBusinessID,
  }) {
    return setDiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(SetProductSelected value)? setProductSelected,
    TResult? Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult? Function(SetShipping value)? setShipping,
    TResult? Function(SetDiscount value)? setDiscount,
    TResult? Function(SetShippingMethod value)? setShippingMethod,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
    TResult? Function(SetSustomerSelect value)? setSustomerSelect,
    TResult? Function(SetBusinessID value)? setBusinessID,
  }) {
    return setDiscount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetOrder value)? getOrder,
    TResult Function(SetProductSelected value)? setProductSelected,
    TResult Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult Function(SetShipping value)? setShipping,
    TResult Function(SetDiscount value)? setDiscount,
    TResult Function(SetShippingMethod value)? setShippingMethod,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    TResult Function(SetSustomerSelect value)? setSustomerSelect,
    TResult Function(SetBusinessID value)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setDiscount != null) {
      return setDiscount(this);
    }
    return orElse();
  }
}

abstract class SetDiscount implements AddOrderState {
  const factory SetDiscount(final AddOrderStateData? data) = _$SetDiscount;

  @override
  AddOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetDiscountCopyWith<_$SetDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetShippingMethodCopyWith<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  factory _$$SetShippingMethodCopyWith(
          _$SetShippingMethod value, $Res Function(_$SetShippingMethod) then) =
      __$$SetShippingMethodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddOrderStateData? data});

  @override
  $AddOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetShippingMethodCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$SetShippingMethod>
    implements _$$SetShippingMethodCopyWith<$Res> {
  __$$SetShippingMethodCopyWithImpl(
      _$SetShippingMethod _value, $Res Function(_$SetShippingMethod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetShippingMethod(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddOrderStateData?,
    ));
  }
}

/// @nodoc

class _$SetShippingMethod implements SetShippingMethod {
  const _$SetShippingMethod(this.data);

  @override
  final AddOrderStateData? data;

  @override
  String toString() {
    return 'AddOrderState.setShippingMethod(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetShippingMethod &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetShippingMethodCopyWith<_$SetShippingMethod> get copyWith =>
      __$$SetShippingMethodCopyWithImpl<_$SetShippingMethod>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddOrderStateData? data) initial,
    required TResult Function(AddOrderStateData? data) status,
    required TResult Function(AddOrderStateData? data) getOrder,
    required TResult Function(AddOrderStateData? data) setProductSelected,
    required TResult Function(AddOrderStateData? data) setProductSelectedAll,
    required TResult Function(AddOrderStateData? data) setShipping,
    required TResult Function(AddOrderStateData? data) setDiscount,
    required TResult Function(AddOrderStateData? data) setShippingMethod,
    required TResult Function(AddOrderStateData? data) setTransactionDate,
    required TResult Function(AddOrderStateData? data) setSustomerSelect,
    required TResult Function(AddOrderStateData? data) setBusinessID,
  }) {
    return setShippingMethod(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddOrderStateData? data)? initial,
    TResult? Function(AddOrderStateData? data)? status,
    TResult? Function(AddOrderStateData? data)? getOrder,
    TResult? Function(AddOrderStateData? data)? setProductSelected,
    TResult? Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult? Function(AddOrderStateData? data)? setShipping,
    TResult? Function(AddOrderStateData? data)? setDiscount,
    TResult? Function(AddOrderStateData? data)? setShippingMethod,
    TResult? Function(AddOrderStateData? data)? setTransactionDate,
    TResult? Function(AddOrderStateData? data)? setSustomerSelect,
    TResult? Function(AddOrderStateData? data)? setBusinessID,
  }) {
    return setShippingMethod?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddOrderStateData? data)? initial,
    TResult Function(AddOrderStateData? data)? status,
    TResult Function(AddOrderStateData? data)? getOrder,
    TResult Function(AddOrderStateData? data)? setProductSelected,
    TResult Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult Function(AddOrderStateData? data)? setShipping,
    TResult Function(AddOrderStateData? data)? setDiscount,
    TResult Function(AddOrderStateData? data)? setShippingMethod,
    TResult Function(AddOrderStateData? data)? setTransactionDate,
    TResult Function(AddOrderStateData? data)? setSustomerSelect,
    TResult Function(AddOrderStateData? data)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setShippingMethod != null) {
      return setShippingMethod(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(SetProductSelected value) setProductSelected,
    required TResult Function(SetProductSelectedAll value)
        setProductSelectedAll,
    required TResult Function(SetShipping value) setShipping,
    required TResult Function(SetDiscount value) setDiscount,
    required TResult Function(SetShippingMethod value) setShippingMethod,
    required TResult Function(SetTransactionDate value) setTransactionDate,
    required TResult Function(SetSustomerSelect value) setSustomerSelect,
    required TResult Function(SetBusinessID value) setBusinessID,
  }) {
    return setShippingMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(SetProductSelected value)? setProductSelected,
    TResult? Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult? Function(SetShipping value)? setShipping,
    TResult? Function(SetDiscount value)? setDiscount,
    TResult? Function(SetShippingMethod value)? setShippingMethod,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
    TResult? Function(SetSustomerSelect value)? setSustomerSelect,
    TResult? Function(SetBusinessID value)? setBusinessID,
  }) {
    return setShippingMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetOrder value)? getOrder,
    TResult Function(SetProductSelected value)? setProductSelected,
    TResult Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult Function(SetShipping value)? setShipping,
    TResult Function(SetDiscount value)? setDiscount,
    TResult Function(SetShippingMethod value)? setShippingMethod,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    TResult Function(SetSustomerSelect value)? setSustomerSelect,
    TResult Function(SetBusinessID value)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setShippingMethod != null) {
      return setShippingMethod(this);
    }
    return orElse();
  }
}

abstract class SetShippingMethod implements AddOrderState {
  const factory SetShippingMethod(final AddOrderStateData? data) =
      _$SetShippingMethod;

  @override
  AddOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetShippingMethodCopyWith<_$SetShippingMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetTransactionDateCopyWith<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  factory _$$SetTransactionDateCopyWith(_$SetTransactionDate value,
          $Res Function(_$SetTransactionDate) then) =
      __$$SetTransactionDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddOrderStateData? data});

  @override
  $AddOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetTransactionDateCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$SetTransactionDate>
    implements _$$SetTransactionDateCopyWith<$Res> {
  __$$SetTransactionDateCopyWithImpl(
      _$SetTransactionDate _value, $Res Function(_$SetTransactionDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetTransactionDate(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddOrderStateData?,
    ));
  }
}

/// @nodoc

class _$SetTransactionDate implements SetTransactionDate {
  const _$SetTransactionDate(this.data);

  @override
  final AddOrderStateData? data;

  @override
  String toString() {
    return 'AddOrderState.setTransactionDate(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTransactionDate &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetTransactionDateCopyWith<_$SetTransactionDate> get copyWith =>
      __$$SetTransactionDateCopyWithImpl<_$SetTransactionDate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddOrderStateData? data) initial,
    required TResult Function(AddOrderStateData? data) status,
    required TResult Function(AddOrderStateData? data) getOrder,
    required TResult Function(AddOrderStateData? data) setProductSelected,
    required TResult Function(AddOrderStateData? data) setProductSelectedAll,
    required TResult Function(AddOrderStateData? data) setShipping,
    required TResult Function(AddOrderStateData? data) setDiscount,
    required TResult Function(AddOrderStateData? data) setShippingMethod,
    required TResult Function(AddOrderStateData? data) setTransactionDate,
    required TResult Function(AddOrderStateData? data) setSustomerSelect,
    required TResult Function(AddOrderStateData? data) setBusinessID,
  }) {
    return setTransactionDate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddOrderStateData? data)? initial,
    TResult? Function(AddOrderStateData? data)? status,
    TResult? Function(AddOrderStateData? data)? getOrder,
    TResult? Function(AddOrderStateData? data)? setProductSelected,
    TResult? Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult? Function(AddOrderStateData? data)? setShipping,
    TResult? Function(AddOrderStateData? data)? setDiscount,
    TResult? Function(AddOrderStateData? data)? setShippingMethod,
    TResult? Function(AddOrderStateData? data)? setTransactionDate,
    TResult? Function(AddOrderStateData? data)? setSustomerSelect,
    TResult? Function(AddOrderStateData? data)? setBusinessID,
  }) {
    return setTransactionDate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddOrderStateData? data)? initial,
    TResult Function(AddOrderStateData? data)? status,
    TResult Function(AddOrderStateData? data)? getOrder,
    TResult Function(AddOrderStateData? data)? setProductSelected,
    TResult Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult Function(AddOrderStateData? data)? setShipping,
    TResult Function(AddOrderStateData? data)? setDiscount,
    TResult Function(AddOrderStateData? data)? setShippingMethod,
    TResult Function(AddOrderStateData? data)? setTransactionDate,
    TResult Function(AddOrderStateData? data)? setSustomerSelect,
    TResult Function(AddOrderStateData? data)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setTransactionDate != null) {
      return setTransactionDate(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(SetProductSelected value) setProductSelected,
    required TResult Function(SetProductSelectedAll value)
        setProductSelectedAll,
    required TResult Function(SetShipping value) setShipping,
    required TResult Function(SetDiscount value) setDiscount,
    required TResult Function(SetShippingMethod value) setShippingMethod,
    required TResult Function(SetTransactionDate value) setTransactionDate,
    required TResult Function(SetSustomerSelect value) setSustomerSelect,
    required TResult Function(SetBusinessID value) setBusinessID,
  }) {
    return setTransactionDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(SetProductSelected value)? setProductSelected,
    TResult? Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult? Function(SetShipping value)? setShipping,
    TResult? Function(SetDiscount value)? setDiscount,
    TResult? Function(SetShippingMethod value)? setShippingMethod,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
    TResult? Function(SetSustomerSelect value)? setSustomerSelect,
    TResult? Function(SetBusinessID value)? setBusinessID,
  }) {
    return setTransactionDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetOrder value)? getOrder,
    TResult Function(SetProductSelected value)? setProductSelected,
    TResult Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult Function(SetShipping value)? setShipping,
    TResult Function(SetDiscount value)? setDiscount,
    TResult Function(SetShippingMethod value)? setShippingMethod,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    TResult Function(SetSustomerSelect value)? setSustomerSelect,
    TResult Function(SetBusinessID value)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setTransactionDate != null) {
      return setTransactionDate(this);
    }
    return orElse();
  }
}

abstract class SetTransactionDate implements AddOrderState {
  const factory SetTransactionDate(final AddOrderStateData? data) =
      _$SetTransactionDate;

  @override
  AddOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetTransactionDateCopyWith<_$SetTransactionDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSustomerSelectCopyWith<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  factory _$$SetSustomerSelectCopyWith(
          _$SetSustomerSelect value, $Res Function(_$SetSustomerSelect) then) =
      __$$SetSustomerSelectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddOrderStateData? data});

  @override
  $AddOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetSustomerSelectCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$SetSustomerSelect>
    implements _$$SetSustomerSelectCopyWith<$Res> {
  __$$SetSustomerSelectCopyWithImpl(
      _$SetSustomerSelect _value, $Res Function(_$SetSustomerSelect) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetSustomerSelect(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddOrderStateData?,
    ));
  }
}

/// @nodoc

class _$SetSustomerSelect implements SetSustomerSelect {
  const _$SetSustomerSelect(this.data);

  @override
  final AddOrderStateData? data;

  @override
  String toString() {
    return 'AddOrderState.setSustomerSelect(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSustomerSelect &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSustomerSelectCopyWith<_$SetSustomerSelect> get copyWith =>
      __$$SetSustomerSelectCopyWithImpl<_$SetSustomerSelect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddOrderStateData? data) initial,
    required TResult Function(AddOrderStateData? data) status,
    required TResult Function(AddOrderStateData? data) getOrder,
    required TResult Function(AddOrderStateData? data) setProductSelected,
    required TResult Function(AddOrderStateData? data) setProductSelectedAll,
    required TResult Function(AddOrderStateData? data) setShipping,
    required TResult Function(AddOrderStateData? data) setDiscount,
    required TResult Function(AddOrderStateData? data) setShippingMethod,
    required TResult Function(AddOrderStateData? data) setTransactionDate,
    required TResult Function(AddOrderStateData? data) setSustomerSelect,
    required TResult Function(AddOrderStateData? data) setBusinessID,
  }) {
    return setSustomerSelect(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddOrderStateData? data)? initial,
    TResult? Function(AddOrderStateData? data)? status,
    TResult? Function(AddOrderStateData? data)? getOrder,
    TResult? Function(AddOrderStateData? data)? setProductSelected,
    TResult? Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult? Function(AddOrderStateData? data)? setShipping,
    TResult? Function(AddOrderStateData? data)? setDiscount,
    TResult? Function(AddOrderStateData? data)? setShippingMethod,
    TResult? Function(AddOrderStateData? data)? setTransactionDate,
    TResult? Function(AddOrderStateData? data)? setSustomerSelect,
    TResult? Function(AddOrderStateData? data)? setBusinessID,
  }) {
    return setSustomerSelect?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddOrderStateData? data)? initial,
    TResult Function(AddOrderStateData? data)? status,
    TResult Function(AddOrderStateData? data)? getOrder,
    TResult Function(AddOrderStateData? data)? setProductSelected,
    TResult Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult Function(AddOrderStateData? data)? setShipping,
    TResult Function(AddOrderStateData? data)? setDiscount,
    TResult Function(AddOrderStateData? data)? setShippingMethod,
    TResult Function(AddOrderStateData? data)? setTransactionDate,
    TResult Function(AddOrderStateData? data)? setSustomerSelect,
    TResult Function(AddOrderStateData? data)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setSustomerSelect != null) {
      return setSustomerSelect(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(SetProductSelected value) setProductSelected,
    required TResult Function(SetProductSelectedAll value)
        setProductSelectedAll,
    required TResult Function(SetShipping value) setShipping,
    required TResult Function(SetDiscount value) setDiscount,
    required TResult Function(SetShippingMethod value) setShippingMethod,
    required TResult Function(SetTransactionDate value) setTransactionDate,
    required TResult Function(SetSustomerSelect value) setSustomerSelect,
    required TResult Function(SetBusinessID value) setBusinessID,
  }) {
    return setSustomerSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(SetProductSelected value)? setProductSelected,
    TResult? Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult? Function(SetShipping value)? setShipping,
    TResult? Function(SetDiscount value)? setDiscount,
    TResult? Function(SetShippingMethod value)? setShippingMethod,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
    TResult? Function(SetSustomerSelect value)? setSustomerSelect,
    TResult? Function(SetBusinessID value)? setBusinessID,
  }) {
    return setSustomerSelect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetOrder value)? getOrder,
    TResult Function(SetProductSelected value)? setProductSelected,
    TResult Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult Function(SetShipping value)? setShipping,
    TResult Function(SetDiscount value)? setDiscount,
    TResult Function(SetShippingMethod value)? setShippingMethod,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    TResult Function(SetSustomerSelect value)? setSustomerSelect,
    TResult Function(SetBusinessID value)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setSustomerSelect != null) {
      return setSustomerSelect(this);
    }
    return orElse();
  }
}

abstract class SetSustomerSelect implements AddOrderState {
  const factory SetSustomerSelect(final AddOrderStateData? data) =
      _$SetSustomerSelect;

  @override
  AddOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetSustomerSelectCopyWith<_$SetSustomerSelect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetBusinessIDCopyWith<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  factory _$$SetBusinessIDCopyWith(
          _$SetBusinessID value, $Res Function(_$SetBusinessID) then) =
      __$$SetBusinessIDCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddOrderStateData? data});

  @override
  $AddOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetBusinessIDCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$SetBusinessID>
    implements _$$SetBusinessIDCopyWith<$Res> {
  __$$SetBusinessIDCopyWithImpl(
      _$SetBusinessID _value, $Res Function(_$SetBusinessID) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetBusinessID(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddOrderStateData?,
    ));
  }
}

/// @nodoc

class _$SetBusinessID implements SetBusinessID {
  const _$SetBusinessID(this.data);

  @override
  final AddOrderStateData? data;

  @override
  String toString() {
    return 'AddOrderState.setBusinessID(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetBusinessID &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetBusinessIDCopyWith<_$SetBusinessID> get copyWith =>
      __$$SetBusinessIDCopyWithImpl<_$SetBusinessID>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddOrderStateData? data) initial,
    required TResult Function(AddOrderStateData? data) status,
    required TResult Function(AddOrderStateData? data) getOrder,
    required TResult Function(AddOrderStateData? data) setProductSelected,
    required TResult Function(AddOrderStateData? data) setProductSelectedAll,
    required TResult Function(AddOrderStateData? data) setShipping,
    required TResult Function(AddOrderStateData? data) setDiscount,
    required TResult Function(AddOrderStateData? data) setShippingMethod,
    required TResult Function(AddOrderStateData? data) setTransactionDate,
    required TResult Function(AddOrderStateData? data) setSustomerSelect,
    required TResult Function(AddOrderStateData? data) setBusinessID,
  }) {
    return setBusinessID(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddOrderStateData? data)? initial,
    TResult? Function(AddOrderStateData? data)? status,
    TResult? Function(AddOrderStateData? data)? getOrder,
    TResult? Function(AddOrderStateData? data)? setProductSelected,
    TResult? Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult? Function(AddOrderStateData? data)? setShipping,
    TResult? Function(AddOrderStateData? data)? setDiscount,
    TResult? Function(AddOrderStateData? data)? setShippingMethod,
    TResult? Function(AddOrderStateData? data)? setTransactionDate,
    TResult? Function(AddOrderStateData? data)? setSustomerSelect,
    TResult? Function(AddOrderStateData? data)? setBusinessID,
  }) {
    return setBusinessID?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddOrderStateData? data)? initial,
    TResult Function(AddOrderStateData? data)? status,
    TResult Function(AddOrderStateData? data)? getOrder,
    TResult Function(AddOrderStateData? data)? setProductSelected,
    TResult Function(AddOrderStateData? data)? setProductSelectedAll,
    TResult Function(AddOrderStateData? data)? setShipping,
    TResult Function(AddOrderStateData? data)? setDiscount,
    TResult Function(AddOrderStateData? data)? setShippingMethod,
    TResult Function(AddOrderStateData? data)? setTransactionDate,
    TResult Function(AddOrderStateData? data)? setSustomerSelect,
    TResult Function(AddOrderStateData? data)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setBusinessID != null) {
      return setBusinessID(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(SetProductSelected value) setProductSelected,
    required TResult Function(SetProductSelectedAll value)
        setProductSelectedAll,
    required TResult Function(SetShipping value) setShipping,
    required TResult Function(SetDiscount value) setDiscount,
    required TResult Function(SetShippingMethod value) setShippingMethod,
    required TResult Function(SetTransactionDate value) setTransactionDate,
    required TResult Function(SetSustomerSelect value) setSustomerSelect,
    required TResult Function(SetBusinessID value) setBusinessID,
  }) {
    return setBusinessID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(SetProductSelected value)? setProductSelected,
    TResult? Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult? Function(SetShipping value)? setShipping,
    TResult? Function(SetDiscount value)? setDiscount,
    TResult? Function(SetShippingMethod value)? setShippingMethod,
    TResult? Function(SetTransactionDate value)? setTransactionDate,
    TResult? Function(SetSustomerSelect value)? setSustomerSelect,
    TResult? Function(SetBusinessID value)? setBusinessID,
  }) {
    return setBusinessID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetOrder value)? getOrder,
    TResult Function(SetProductSelected value)? setProductSelected,
    TResult Function(SetProductSelectedAll value)? setProductSelectedAll,
    TResult Function(SetShipping value)? setShipping,
    TResult Function(SetDiscount value)? setDiscount,
    TResult Function(SetShippingMethod value)? setShippingMethod,
    TResult Function(SetTransactionDate value)? setTransactionDate,
    TResult Function(SetSustomerSelect value)? setSustomerSelect,
    TResult Function(SetBusinessID value)? setBusinessID,
    required TResult orElse(),
  }) {
    if (setBusinessID != null) {
      return setBusinessID(this);
    }
    return orElse();
  }
}

abstract class SetBusinessID implements AddOrderState {
  const factory SetBusinessID(final AddOrderStateData? data) = _$SetBusinessID;

  @override
  AddOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetBusinessIDCopyWith<_$SetBusinessID> get copyWith =>
      throw _privateConstructorUsedError;
}
