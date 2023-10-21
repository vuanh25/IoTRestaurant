// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customers_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomersStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<ContactModel> get customers => throw _privateConstructorUsedError;
  List<ContactModel> get customersOriginal =>
      throw _privateConstructorUsedError; // @Default([]) List<Transaction> transactions,
  Meta? get meta => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  List<SellData> get orders => throw _privateConstructorUsedError;
  ContactModel? get contactModel => throw _privateConstructorUsedError;
  bool get isOpenSearch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomersStateDataCopyWith<CustomersStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersStateDataCopyWith<$Res> {
  factory $CustomersStateDataCopyWith(
          CustomersStateData value, $Res Function(CustomersStateData) then) =
      _$CustomersStateDataCopyWithImpl<$Res, CustomersStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<ContactModel> customers,
      List<ContactModel> customersOriginal,
      Meta? meta,
      int? page,
      List<SellData> orders,
      ContactModel? contactModel,
      bool isOpenSearch});
}

/// @nodoc
class _$CustomersStateDataCopyWithImpl<$Res, $Val extends CustomersStateData>
    implements $CustomersStateDataCopyWith<$Res> {
  _$CustomersStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? customers = null,
    Object? customersOriginal = null,
    Object? meta = freezed,
    Object? page = freezed,
    Object? orders = null,
    Object? contactModel = freezed,
    Object? isOpenSearch = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
      customersOriginal: null == customersOriginal
          ? _value.customersOriginal
          : customersOriginal // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<SellData>,
      contactModel: freezed == contactModel
          ? _value.contactModel
          : contactModel // ignore: cast_nullable_to_non_nullable
              as ContactModel?,
      isOpenSearch: null == isOpenSearch
          ? _value.isOpenSearch
          : isOpenSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomersStateDataCopyWith<$Res>
    implements $CustomersStateDataCopyWith<$Res> {
  factory _$$_CustomersStateDataCopyWith(_$_CustomersStateData value,
          $Res Function(_$_CustomersStateData) then) =
      __$$_CustomersStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<ContactModel> customers,
      List<ContactModel> customersOriginal,
      Meta? meta,
      int? page,
      List<SellData> orders,
      ContactModel? contactModel,
      bool isOpenSearch});
}

/// @nodoc
class __$$_CustomersStateDataCopyWithImpl<$Res>
    extends _$CustomersStateDataCopyWithImpl<$Res, _$_CustomersStateData>
    implements _$$_CustomersStateDataCopyWith<$Res> {
  __$$_CustomersStateDataCopyWithImpl(
      _$_CustomersStateData _value, $Res Function(_$_CustomersStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? customers = null,
    Object? customersOriginal = null,
    Object? meta = freezed,
    Object? page = freezed,
    Object? orders = null,
    Object? contactModel = freezed,
    Object? isOpenSearch = null,
  }) {
    return _then(_$_CustomersStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
      customersOriginal: null == customersOriginal
          ? _value._customersOriginal
          : customersOriginal // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<SellData>,
      contactModel: freezed == contactModel
          ? _value.contactModel
          : contactModel // ignore: cast_nullable_to_non_nullable
              as ContactModel?,
      isOpenSearch: null == isOpenSearch
          ? _value.isOpenSearch
          : isOpenSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CustomersStateData implements _CustomersStateData {
  const _$_CustomersStateData(
      {this.status = StatusType.init,
      final List<ContactModel> customers = const [],
      final List<ContactModel> customersOriginal = const [],
      this.meta,
      this.page = 0,
      final List<SellData> orders = const [],
      this.contactModel,
      this.isOpenSearch = false})
      : _customers = customers,
        _customersOriginal = customersOriginal,
        _orders = orders;

  @override
  @JsonKey()
  final StatusType status;
  final List<ContactModel> _customers;
  @override
  @JsonKey()
  List<ContactModel> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  final List<ContactModel> _customersOriginal;
  @override
  @JsonKey()
  List<ContactModel> get customersOriginal {
    if (_customersOriginal is EqualUnmodifiableListView)
      return _customersOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customersOriginal);
  }

// @Default([]) List<Transaction> transactions,
  @override
  final Meta? meta;
  @override
  @JsonKey()
  final int? page;
  final List<SellData> _orders;
  @override
  @JsonKey()
  List<SellData> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final ContactModel? contactModel;
  @override
  @JsonKey()
  final bool isOpenSearch;

  @override
  String toString() {
    return 'CustomersStateData(status: $status, customers: $customers, customersOriginal: $customersOriginal, meta: $meta, page: $page, orders: $orders, contactModel: $contactModel, isOpenSearch: $isOpenSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomersStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            const DeepCollectionEquality()
                .equals(other._customersOriginal, _customersOriginal) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.contactModel, contactModel) ||
                other.contactModel == contactModel) &&
            (identical(other.isOpenSearch, isOpenSearch) ||
                other.isOpenSearch == isOpenSearch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_customers),
      const DeepCollectionEquality().hash(_customersOriginal),
      meta,
      page,
      const DeepCollectionEquality().hash(_orders),
      contactModel,
      isOpenSearch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomersStateDataCopyWith<_$_CustomersStateData> get copyWith =>
      __$$_CustomersStateDataCopyWithImpl<_$_CustomersStateData>(
          this, _$identity);
}

abstract class _CustomersStateData implements CustomersStateData {
  const factory _CustomersStateData(
      {final StatusType status,
      final List<ContactModel> customers,
      final List<ContactModel> customersOriginal,
      final Meta? meta,
      final int? page,
      final List<SellData> orders,
      final ContactModel? contactModel,
      final bool isOpenSearch}) = _$_CustomersStateData;

  @override
  StatusType get status;
  @override
  List<ContactModel> get customers;
  @override
  List<ContactModel> get customersOriginal;
  @override // @Default([]) List<Transaction> transactions,
  Meta? get meta;
  @override
  int? get page;
  @override
  List<SellData> get orders;
  @override
  ContactModel? get contactModel;
  @override
  bool get isOpenSearch;
  @override
  @JsonKey(ignore: true)
  _$$_CustomersStateDataCopyWith<_$_CustomersStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomersState {
  CustomersStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomersStateData? data) initial,
    required TResult Function(CustomersStateData? data) status,
    required TResult Function(CustomersStateData? data) getCustomers,
    required TResult Function(CustomersStateData? data) getCustomer,
    required TResult Function(CustomersStateData? data) getOrdersById,
    required TResult Function(CustomersStateData? data) isOpenSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomersStateData? data)? initial,
    TResult? Function(CustomersStateData? data)? status,
    TResult? Function(CustomersStateData? data)? getCustomers,
    TResult? Function(CustomersStateData? data)? getCustomer,
    TResult? Function(CustomersStateData? data)? getOrdersById,
    TResult? Function(CustomersStateData? data)? isOpenSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomersStateData? data)? initial,
    TResult Function(CustomersStateData? data)? status,
    TResult Function(CustomersStateData? data)? getCustomers,
    TResult Function(CustomersStateData? data)? getCustomer,
    TResult Function(CustomersStateData? data)? getOrdersById,
    TResult Function(CustomersStateData? data)? isOpenSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCustomers value) getCustomers,
    required TResult Function(GetCustomer value) getCustomer,
    required TResult Function(GetOrdersById value) getOrdersById,
    required TResult Function(IsOpenSearch value) isOpenSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCustomers value)? getCustomers,
    TResult? Function(GetCustomer value)? getCustomer,
    TResult? Function(GetOrdersById value)? getOrdersById,
    TResult? Function(IsOpenSearch value)? isOpenSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCustomers value)? getCustomers,
    TResult Function(GetCustomer value)? getCustomer,
    TResult Function(GetOrdersById value)? getOrdersById,
    TResult Function(IsOpenSearch value)? isOpenSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomersStateCopyWith<CustomersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersStateCopyWith<$Res> {
  factory $CustomersStateCopyWith(
          CustomersState value, $Res Function(CustomersState) then) =
      _$CustomersStateCopyWithImpl<$Res, CustomersState>;
  @useResult
  $Res call({CustomersStateData? data});

  $CustomersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CustomersStateCopyWithImpl<$Res, $Val extends CustomersState>
    implements $CustomersStateCopyWith<$Res> {
  _$CustomersStateCopyWithImpl(this._value, this._then);

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
              as CustomersStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomersStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CustomersStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $CustomersStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomersStateData? data});

  @override
  $CustomersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res, _$Initial>
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
              as CustomersStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final CustomersStateData? data;

  @override
  String toString() {
    return 'CustomersState.initial(data: $data)';
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
    required TResult Function(CustomersStateData? data) initial,
    required TResult Function(CustomersStateData? data) status,
    required TResult Function(CustomersStateData? data) getCustomers,
    required TResult Function(CustomersStateData? data) getCustomer,
    required TResult Function(CustomersStateData? data) getOrdersById,
    required TResult Function(CustomersStateData? data) isOpenSearch,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomersStateData? data)? initial,
    TResult? Function(CustomersStateData? data)? status,
    TResult? Function(CustomersStateData? data)? getCustomers,
    TResult? Function(CustomersStateData? data)? getCustomer,
    TResult? Function(CustomersStateData? data)? getOrdersById,
    TResult? Function(CustomersStateData? data)? isOpenSearch,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomersStateData? data)? initial,
    TResult Function(CustomersStateData? data)? status,
    TResult Function(CustomersStateData? data)? getCustomers,
    TResult Function(CustomersStateData? data)? getCustomer,
    TResult Function(CustomersStateData? data)? getOrdersById,
    TResult Function(CustomersStateData? data)? isOpenSearch,
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
    required TResult Function(GetCustomers value) getCustomers,
    required TResult Function(GetCustomer value) getCustomer,
    required TResult Function(GetOrdersById value) getOrdersById,
    required TResult Function(IsOpenSearch value) isOpenSearch,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCustomers value)? getCustomers,
    TResult? Function(GetCustomer value)? getCustomer,
    TResult? Function(GetOrdersById value)? getOrdersById,
    TResult? Function(IsOpenSearch value)? isOpenSearch,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCustomers value)? getCustomers,
    TResult Function(GetCustomer value)? getCustomer,
    TResult Function(GetOrdersById value)? getOrdersById,
    TResult Function(IsOpenSearch value)? isOpenSearch,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CustomersState {
  const factory Initial({final CustomersStateData? data}) = _$Initial;

  @override
  CustomersStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $CustomersStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomersStateData? data});

  @override
  $CustomersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res, _$Status>
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
              as CustomersStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final CustomersStateData? data;

  @override
  String toString() {
    return 'CustomersState.status(data: $data)';
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
    required TResult Function(CustomersStateData? data) initial,
    required TResult Function(CustomersStateData? data) status,
    required TResult Function(CustomersStateData? data) getCustomers,
    required TResult Function(CustomersStateData? data) getCustomer,
    required TResult Function(CustomersStateData? data) getOrdersById,
    required TResult Function(CustomersStateData? data) isOpenSearch,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomersStateData? data)? initial,
    TResult? Function(CustomersStateData? data)? status,
    TResult? Function(CustomersStateData? data)? getCustomers,
    TResult? Function(CustomersStateData? data)? getCustomer,
    TResult? Function(CustomersStateData? data)? getOrdersById,
    TResult? Function(CustomersStateData? data)? isOpenSearch,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomersStateData? data)? initial,
    TResult Function(CustomersStateData? data)? status,
    TResult Function(CustomersStateData? data)? getCustomers,
    TResult Function(CustomersStateData? data)? getCustomer,
    TResult Function(CustomersStateData? data)? getOrdersById,
    TResult Function(CustomersStateData? data)? isOpenSearch,
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
    required TResult Function(GetCustomers value) getCustomers,
    required TResult Function(GetCustomer value) getCustomer,
    required TResult Function(GetOrdersById value) getOrdersById,
    required TResult Function(IsOpenSearch value) isOpenSearch,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCustomers value)? getCustomers,
    TResult? Function(GetCustomer value)? getCustomer,
    TResult? Function(GetOrdersById value)? getOrdersById,
    TResult? Function(IsOpenSearch value)? isOpenSearch,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCustomers value)? getCustomers,
    TResult Function(GetCustomer value)? getCustomer,
    TResult Function(GetOrdersById value)? getOrdersById,
    TResult Function(IsOpenSearch value)? isOpenSearch,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements CustomersState {
  const factory Status({final CustomersStateData? data}) = _$Status;

  @override
  CustomersStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCustomersCopyWith<$Res>
    implements $CustomersStateCopyWith<$Res> {
  factory _$$GetCustomersCopyWith(
          _$GetCustomers value, $Res Function(_$GetCustomers) then) =
      __$$GetCustomersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomersStateData? data});

  @override
  $CustomersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetCustomersCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res, _$GetCustomers>
    implements _$$GetCustomersCopyWith<$Res> {
  __$$GetCustomersCopyWithImpl(
      _$GetCustomers _value, $Res Function(_$GetCustomers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCustomers(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomersStateData?,
    ));
  }
}

/// @nodoc

class _$GetCustomers implements GetCustomers {
  const _$GetCustomers({this.data});

  @override
  final CustomersStateData? data;

  @override
  String toString() {
    return 'CustomersState.getCustomers(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomers &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomersCopyWith<_$GetCustomers> get copyWith =>
      __$$GetCustomersCopyWithImpl<_$GetCustomers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomersStateData? data) initial,
    required TResult Function(CustomersStateData? data) status,
    required TResult Function(CustomersStateData? data) getCustomers,
    required TResult Function(CustomersStateData? data) getCustomer,
    required TResult Function(CustomersStateData? data) getOrdersById,
    required TResult Function(CustomersStateData? data) isOpenSearch,
  }) {
    return getCustomers(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomersStateData? data)? initial,
    TResult? Function(CustomersStateData? data)? status,
    TResult? Function(CustomersStateData? data)? getCustomers,
    TResult? Function(CustomersStateData? data)? getCustomer,
    TResult? Function(CustomersStateData? data)? getOrdersById,
    TResult? Function(CustomersStateData? data)? isOpenSearch,
  }) {
    return getCustomers?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomersStateData? data)? initial,
    TResult Function(CustomersStateData? data)? status,
    TResult Function(CustomersStateData? data)? getCustomers,
    TResult Function(CustomersStateData? data)? getCustomer,
    TResult Function(CustomersStateData? data)? getOrdersById,
    TResult Function(CustomersStateData? data)? isOpenSearch,
    required TResult orElse(),
  }) {
    if (getCustomers != null) {
      return getCustomers(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCustomers value) getCustomers,
    required TResult Function(GetCustomer value) getCustomer,
    required TResult Function(GetOrdersById value) getOrdersById,
    required TResult Function(IsOpenSearch value) isOpenSearch,
  }) {
    return getCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCustomers value)? getCustomers,
    TResult? Function(GetCustomer value)? getCustomer,
    TResult? Function(GetOrdersById value)? getOrdersById,
    TResult? Function(IsOpenSearch value)? isOpenSearch,
  }) {
    return getCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCustomers value)? getCustomers,
    TResult Function(GetCustomer value)? getCustomer,
    TResult Function(GetOrdersById value)? getOrdersById,
    TResult Function(IsOpenSearch value)? isOpenSearch,
    required TResult orElse(),
  }) {
    if (getCustomers != null) {
      return getCustomers(this);
    }
    return orElse();
  }
}

abstract class GetCustomers implements CustomersState {
  const factory GetCustomers({final CustomersStateData? data}) = _$GetCustomers;

  @override
  CustomersStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetCustomersCopyWith<_$GetCustomers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCustomerCopyWith<$Res>
    implements $CustomersStateCopyWith<$Res> {
  factory _$$GetCustomerCopyWith(
          _$GetCustomer value, $Res Function(_$GetCustomer) then) =
      __$$GetCustomerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomersStateData? data});

  @override
  $CustomersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetCustomerCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res, _$GetCustomer>
    implements _$$GetCustomerCopyWith<$Res> {
  __$$GetCustomerCopyWithImpl(
      _$GetCustomer _value, $Res Function(_$GetCustomer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCustomer(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomersStateData?,
    ));
  }
}

/// @nodoc

class _$GetCustomer implements GetCustomer {
  const _$GetCustomer({this.data});

  @override
  final CustomersStateData? data;

  @override
  String toString() {
    return 'CustomersState.getCustomer(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomer &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomerCopyWith<_$GetCustomer> get copyWith =>
      __$$GetCustomerCopyWithImpl<_$GetCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomersStateData? data) initial,
    required TResult Function(CustomersStateData? data) status,
    required TResult Function(CustomersStateData? data) getCustomers,
    required TResult Function(CustomersStateData? data) getCustomer,
    required TResult Function(CustomersStateData? data) getOrdersById,
    required TResult Function(CustomersStateData? data) isOpenSearch,
  }) {
    return getCustomer(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomersStateData? data)? initial,
    TResult? Function(CustomersStateData? data)? status,
    TResult? Function(CustomersStateData? data)? getCustomers,
    TResult? Function(CustomersStateData? data)? getCustomer,
    TResult? Function(CustomersStateData? data)? getOrdersById,
    TResult? Function(CustomersStateData? data)? isOpenSearch,
  }) {
    return getCustomer?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomersStateData? data)? initial,
    TResult Function(CustomersStateData? data)? status,
    TResult Function(CustomersStateData? data)? getCustomers,
    TResult Function(CustomersStateData? data)? getCustomer,
    TResult Function(CustomersStateData? data)? getOrdersById,
    TResult Function(CustomersStateData? data)? isOpenSearch,
    required TResult orElse(),
  }) {
    if (getCustomer != null) {
      return getCustomer(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCustomers value) getCustomers,
    required TResult Function(GetCustomer value) getCustomer,
    required TResult Function(GetOrdersById value) getOrdersById,
    required TResult Function(IsOpenSearch value) isOpenSearch,
  }) {
    return getCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCustomers value)? getCustomers,
    TResult? Function(GetCustomer value)? getCustomer,
    TResult? Function(GetOrdersById value)? getOrdersById,
    TResult? Function(IsOpenSearch value)? isOpenSearch,
  }) {
    return getCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCustomers value)? getCustomers,
    TResult Function(GetCustomer value)? getCustomer,
    TResult Function(GetOrdersById value)? getOrdersById,
    TResult Function(IsOpenSearch value)? isOpenSearch,
    required TResult orElse(),
  }) {
    if (getCustomer != null) {
      return getCustomer(this);
    }
    return orElse();
  }
}

abstract class GetCustomer implements CustomersState {
  const factory GetCustomer({final CustomersStateData? data}) = _$GetCustomer;

  @override
  CustomersStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetCustomerCopyWith<_$GetCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOrdersByIdCopyWith<$Res>
    implements $CustomersStateCopyWith<$Res> {
  factory _$$GetOrdersByIdCopyWith(
          _$GetOrdersById value, $Res Function(_$GetOrdersById) then) =
      __$$GetOrdersByIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomersStateData? data});

  @override
  $CustomersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetOrdersByIdCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res, _$GetOrdersById>
    implements _$$GetOrdersByIdCopyWith<$Res> {
  __$$GetOrdersByIdCopyWithImpl(
      _$GetOrdersById _value, $Res Function(_$GetOrdersById) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetOrdersById(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomersStateData?,
    ));
  }
}

/// @nodoc

class _$GetOrdersById implements GetOrdersById {
  const _$GetOrdersById({this.data});

  @override
  final CustomersStateData? data;

  @override
  String toString() {
    return 'CustomersState.getOrdersById(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrdersById &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrdersByIdCopyWith<_$GetOrdersById> get copyWith =>
      __$$GetOrdersByIdCopyWithImpl<_$GetOrdersById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomersStateData? data) initial,
    required TResult Function(CustomersStateData? data) status,
    required TResult Function(CustomersStateData? data) getCustomers,
    required TResult Function(CustomersStateData? data) getCustomer,
    required TResult Function(CustomersStateData? data) getOrdersById,
    required TResult Function(CustomersStateData? data) isOpenSearch,
  }) {
    return getOrdersById(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomersStateData? data)? initial,
    TResult? Function(CustomersStateData? data)? status,
    TResult? Function(CustomersStateData? data)? getCustomers,
    TResult? Function(CustomersStateData? data)? getCustomer,
    TResult? Function(CustomersStateData? data)? getOrdersById,
    TResult? Function(CustomersStateData? data)? isOpenSearch,
  }) {
    return getOrdersById?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomersStateData? data)? initial,
    TResult Function(CustomersStateData? data)? status,
    TResult Function(CustomersStateData? data)? getCustomers,
    TResult Function(CustomersStateData? data)? getCustomer,
    TResult Function(CustomersStateData? data)? getOrdersById,
    TResult Function(CustomersStateData? data)? isOpenSearch,
    required TResult orElse(),
  }) {
    if (getOrdersById != null) {
      return getOrdersById(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCustomers value) getCustomers,
    required TResult Function(GetCustomer value) getCustomer,
    required TResult Function(GetOrdersById value) getOrdersById,
    required TResult Function(IsOpenSearch value) isOpenSearch,
  }) {
    return getOrdersById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCustomers value)? getCustomers,
    TResult? Function(GetCustomer value)? getCustomer,
    TResult? Function(GetOrdersById value)? getOrdersById,
    TResult? Function(IsOpenSearch value)? isOpenSearch,
  }) {
    return getOrdersById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCustomers value)? getCustomers,
    TResult Function(GetCustomer value)? getCustomer,
    TResult Function(GetOrdersById value)? getOrdersById,
    TResult Function(IsOpenSearch value)? isOpenSearch,
    required TResult orElse(),
  }) {
    if (getOrdersById != null) {
      return getOrdersById(this);
    }
    return orElse();
  }
}

abstract class GetOrdersById implements CustomersState {
  const factory GetOrdersById({final CustomersStateData? data}) =
      _$GetOrdersById;

  @override
  CustomersStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetOrdersByIdCopyWith<_$GetOrdersById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsOpenSearchCopyWith<$Res>
    implements $CustomersStateCopyWith<$Res> {
  factory _$$IsOpenSearchCopyWith(
          _$IsOpenSearch value, $Res Function(_$IsOpenSearch) then) =
      __$$IsOpenSearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomersStateData? data});

  @override
  $CustomersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$IsOpenSearchCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res, _$IsOpenSearch>
    implements _$$IsOpenSearchCopyWith<$Res> {
  __$$IsOpenSearchCopyWithImpl(
      _$IsOpenSearch _value, $Res Function(_$IsOpenSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$IsOpenSearch(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomersStateData?,
    ));
  }
}

/// @nodoc

class _$IsOpenSearch implements IsOpenSearch {
  const _$IsOpenSearch({this.data});

  @override
  final CustomersStateData? data;

  @override
  String toString() {
    return 'CustomersState.isOpenSearch(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsOpenSearch &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsOpenSearchCopyWith<_$IsOpenSearch> get copyWith =>
      __$$IsOpenSearchCopyWithImpl<_$IsOpenSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomersStateData? data) initial,
    required TResult Function(CustomersStateData? data) status,
    required TResult Function(CustomersStateData? data) getCustomers,
    required TResult Function(CustomersStateData? data) getCustomer,
    required TResult Function(CustomersStateData? data) getOrdersById,
    required TResult Function(CustomersStateData? data) isOpenSearch,
  }) {
    return isOpenSearch(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomersStateData? data)? initial,
    TResult? Function(CustomersStateData? data)? status,
    TResult? Function(CustomersStateData? data)? getCustomers,
    TResult? Function(CustomersStateData? data)? getCustomer,
    TResult? Function(CustomersStateData? data)? getOrdersById,
    TResult? Function(CustomersStateData? data)? isOpenSearch,
  }) {
    return isOpenSearch?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomersStateData? data)? initial,
    TResult Function(CustomersStateData? data)? status,
    TResult Function(CustomersStateData? data)? getCustomers,
    TResult Function(CustomersStateData? data)? getCustomer,
    TResult Function(CustomersStateData? data)? getOrdersById,
    TResult Function(CustomersStateData? data)? isOpenSearch,
    required TResult orElse(),
  }) {
    if (isOpenSearch != null) {
      return isOpenSearch(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCustomers value) getCustomers,
    required TResult Function(GetCustomer value) getCustomer,
    required TResult Function(GetOrdersById value) getOrdersById,
    required TResult Function(IsOpenSearch value) isOpenSearch,
  }) {
    return isOpenSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCustomers value)? getCustomers,
    TResult? Function(GetCustomer value)? getCustomer,
    TResult? Function(GetOrdersById value)? getOrdersById,
    TResult? Function(IsOpenSearch value)? isOpenSearch,
  }) {
    return isOpenSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCustomers value)? getCustomers,
    TResult Function(GetCustomer value)? getCustomer,
    TResult Function(GetOrdersById value)? getOrdersById,
    TResult Function(IsOpenSearch value)? isOpenSearch,
    required TResult orElse(),
  }) {
    if (isOpenSearch != null) {
      return isOpenSearch(this);
    }
    return orElse();
  }
}

abstract class IsOpenSearch implements CustomersState {
  const factory IsOpenSearch({final CustomersStateData? data}) = _$IsOpenSearch;

  @override
  CustomersStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$IsOpenSearchCopyWith<_$IsOpenSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
