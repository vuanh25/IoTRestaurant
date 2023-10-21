// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_contact_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddContactStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  String get payType => throw _privateConstructorUsedError;
  TypeCustomer get type => throw _privateConstructorUsedError;
  List<Transaction> get transactionsOrder => throw _privateConstructorUsedError;
  List<Transaction> get transactionsDebt => throw _privateConstructorUsedError;
  Transaction? get transaction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddContactStateDataCopyWith<AddContactStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContactStateDataCopyWith<$Res> {
  factory $AddContactStateDataCopyWith(
          AddContactStateData value, $Res Function(AddContactStateData) then) =
      _$AddContactStateDataCopyWithImpl<$Res, AddContactStateData>;
  @useResult
  $Res call(
      {String error,
      StatusType status,
      String payType,
      TypeCustomer type,
      List<Transaction> transactionsOrder,
      List<Transaction> transactionsDebt,
      Transaction? transaction});
}

/// @nodoc
class _$AddContactStateDataCopyWithImpl<$Res, $Val extends AddContactStateData>
    implements $AddContactStateDataCopyWith<$Res> {
  _$AddContactStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? payType = null,
    Object? type = null,
    Object? transactionsOrder = null,
    Object? transactionsDebt = null,
    Object? transaction = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      payType: null == payType
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeCustomer,
      transactionsOrder: null == transactionsOrder
          ? _value.transactionsOrder
          : transactionsOrder // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      transactionsDebt: null == transactionsDebt
          ? _value.transactionsDebt
          : transactionsDebt // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddContactStateDataCopyWith<$Res>
    implements $AddContactStateDataCopyWith<$Res> {
  factory _$$_AddContactStateDataCopyWith(_$_AddContactStateData value,
          $Res Function(_$_AddContactStateData) then) =
      __$$_AddContactStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      StatusType status,
      String payType,
      TypeCustomer type,
      List<Transaction> transactionsOrder,
      List<Transaction> transactionsDebt,
      Transaction? transaction});
}

/// @nodoc
class __$$_AddContactStateDataCopyWithImpl<$Res>
    extends _$AddContactStateDataCopyWithImpl<$Res, _$_AddContactStateData>
    implements _$$_AddContactStateDataCopyWith<$Res> {
  __$$_AddContactStateDataCopyWithImpl(_$_AddContactStateData _value,
      $Res Function(_$_AddContactStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? payType = null,
    Object? type = null,
    Object? transactionsOrder = null,
    Object? transactionsDebt = null,
    Object? transaction = freezed,
  }) {
    return _then(_$_AddContactStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      payType: null == payType
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeCustomer,
      transactionsOrder: null == transactionsOrder
          ? _value._transactionsOrder
          : transactionsOrder // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      transactionsDebt: null == transactionsDebt
          ? _value._transactionsDebt
          : transactionsDebt // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
    ));
  }
}

/// @nodoc

class _$_AddContactStateData
    with DiagnosticableTreeMixin
    implements _AddContactStateData {
  const _$_AddContactStateData(
      {this.error = '',
      this.status = StatusType.init,
      this.payType = 'days',
      this.type = TypeCustomer.individual,
      final List<Transaction> transactionsOrder = const [],
      final List<Transaction> transactionsDebt = const [],
      this.transaction})
      : _transactionsOrder = transactionsOrder,
        _transactionsDebt = transactionsDebt;

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final String payType;
  @override
  @JsonKey()
  final TypeCustomer type;
  final List<Transaction> _transactionsOrder;
  @override
  @JsonKey()
  List<Transaction> get transactionsOrder {
    if (_transactionsOrder is EqualUnmodifiableListView)
      return _transactionsOrder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionsOrder);
  }

  final List<Transaction> _transactionsDebt;
  @override
  @JsonKey()
  List<Transaction> get transactionsDebt {
    if (_transactionsDebt is EqualUnmodifiableListView)
      return _transactionsDebt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionsDebt);
  }

  @override
  final Transaction? transaction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactStateData(error: $error, status: $status, payType: $payType, type: $type, transactionsOrder: $transactionsOrder, transactionsDebt: $transactionsDebt, transaction: $transaction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactStateData'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('payType', payType))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('transactionsOrder', transactionsOrder))
      ..add(DiagnosticsProperty('transactionsDebt', transactionsDebt))
      ..add(DiagnosticsProperty('transaction', transaction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddContactStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.payType, payType) || other.payType == payType) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._transactionsOrder, _transactionsOrder) &&
            const DeepCollectionEquality()
                .equals(other._transactionsDebt, _transactionsDebt) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      status,
      payType,
      type,
      const DeepCollectionEquality().hash(_transactionsOrder),
      const DeepCollectionEquality().hash(_transactionsDebt),
      transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddContactStateDataCopyWith<_$_AddContactStateData> get copyWith =>
      __$$_AddContactStateDataCopyWithImpl<_$_AddContactStateData>(
          this, _$identity);
}

abstract class _AddContactStateData implements AddContactStateData {
  const factory _AddContactStateData(
      {final String error,
      final StatusType status,
      final String payType,
      final TypeCustomer type,
      final List<Transaction> transactionsOrder,
      final List<Transaction> transactionsDebt,
      final Transaction? transaction}) = _$_AddContactStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  String get payType;
  @override
  TypeCustomer get type;
  @override
  List<Transaction> get transactionsOrder;
  @override
  List<Transaction> get transactionsDebt;
  @override
  Transaction? get transaction;
  @override
  @JsonKey(ignore: true)
  _$$_AddContactStateDataCopyWith<_$_AddContactStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddContactState {
  AddContactStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddContactStateData? data) initial,
    required TResult Function(AddContactStateData? data) error,
    required TResult Function(AddContactStateData? data) status,
    required TResult Function(AddContactStateData? data) payType,
    required TResult Function(AddContactStateData? data) type,
    required TResult Function(AddContactStateData? data) transactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddContactStateData? data)? initial,
    TResult? Function(AddContactStateData? data)? error,
    TResult? Function(AddContactStateData? data)? status,
    TResult? Function(AddContactStateData? data)? payType,
    TResult? Function(AddContactStateData? data)? type,
    TResult? Function(AddContactStateData? data)? transactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddContactStateData? data)? initial,
    TResult Function(AddContactStateData? data)? error,
    TResult Function(AddContactStateData? data)? status,
    TResult Function(AddContactStateData? data)? payType,
    TResult Function(AddContactStateData? data)? type,
    TResult Function(AddContactStateData? data)? transactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(PayType value) payType,
    required TResult Function(Type value) type,
    required TResult Function(GetTransactions value) transactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(PayType value)? payType,
    TResult? Function(Type value)? type,
    TResult? Function(GetTransactions value)? transactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(PayType value)? payType,
    TResult Function(Type value)? type,
    TResult Function(GetTransactions value)? transactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddContactStateCopyWith<AddContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContactStateCopyWith<$Res> {
  factory $AddContactStateCopyWith(
          AddContactState value, $Res Function(AddContactState) then) =
      _$AddContactStateCopyWithImpl<$Res, AddContactState>;
  @useResult
  $Res call({AddContactStateData? data});

  $AddContactStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddContactStateCopyWithImpl<$Res, $Val extends AddContactState>
    implements $AddContactStateCopyWith<$Res> {
  _$AddContactStateCopyWithImpl(this._value, this._then);

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
              as AddContactStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddContactStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddContactStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $AddContactStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddContactStateData? data});

  @override
  $AddContactStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddContactStateCopyWithImpl<$Res, _$Initial>
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
              as AddContactStateData?,
    ));
  }
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial({this.data});

  @override
  final AddContactStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactState.initial(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactState.initial'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(AddContactStateData? data) initial,
    required TResult Function(AddContactStateData? data) error,
    required TResult Function(AddContactStateData? data) status,
    required TResult Function(AddContactStateData? data) payType,
    required TResult Function(AddContactStateData? data) type,
    required TResult Function(AddContactStateData? data) transactions,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddContactStateData? data)? initial,
    TResult? Function(AddContactStateData? data)? error,
    TResult? Function(AddContactStateData? data)? status,
    TResult? Function(AddContactStateData? data)? payType,
    TResult? Function(AddContactStateData? data)? type,
    TResult? Function(AddContactStateData? data)? transactions,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddContactStateData? data)? initial,
    TResult Function(AddContactStateData? data)? error,
    TResult Function(AddContactStateData? data)? status,
    TResult Function(AddContactStateData? data)? payType,
    TResult Function(AddContactStateData? data)? type,
    TResult Function(AddContactStateData? data)? transactions,
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
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(PayType value) payType,
    required TResult Function(Type value) type,
    required TResult Function(GetTransactions value) transactions,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(PayType value)? payType,
    TResult? Function(Type value)? type,
    TResult? Function(GetTransactions value)? transactions,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(PayType value)? payType,
    TResult Function(Type value)? type,
    TResult Function(GetTransactions value)? transactions,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddContactState {
  const factory Initial({final AddContactStateData? data}) = _$Initial;

  @override
  AddContactStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res>
    implements $AddContactStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddContactStateData? data});

  @override
  $AddContactStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$AddContactStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Error(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddContactStateData?,
    ));
  }
}

/// @nodoc

class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error({this.data});

  @override
  final AddContactStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactState.error(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactState.error'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddContactStateData? data) initial,
    required TResult Function(AddContactStateData? data) error,
    required TResult Function(AddContactStateData? data) status,
    required TResult Function(AddContactStateData? data) payType,
    required TResult Function(AddContactStateData? data) type,
    required TResult Function(AddContactStateData? data) transactions,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddContactStateData? data)? initial,
    TResult? Function(AddContactStateData? data)? error,
    TResult? Function(AddContactStateData? data)? status,
    TResult? Function(AddContactStateData? data)? payType,
    TResult? Function(AddContactStateData? data)? type,
    TResult? Function(AddContactStateData? data)? transactions,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddContactStateData? data)? initial,
    TResult Function(AddContactStateData? data)? error,
    TResult Function(AddContactStateData? data)? status,
    TResult Function(AddContactStateData? data)? payType,
    TResult Function(AddContactStateData? data)? type,
    TResult Function(AddContactStateData? data)? transactions,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(PayType value) payType,
    required TResult Function(Type value) type,
    required TResult Function(GetTransactions value) transactions,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(PayType value)? payType,
    TResult? Function(Type value)? type,
    TResult? Function(GetTransactions value)? transactions,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(PayType value)? payType,
    TResult Function(Type value)? type,
    TResult Function(GetTransactions value)? transactions,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AddContactState {
  const factory Error({final AddContactStateData? data}) = _$Error;

  @override
  AddContactStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $AddContactStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddContactStateData? data});

  @override
  $AddContactStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$AddContactStateCopyWithImpl<$Res, _$Status>
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
              as AddContactStateData?,
    ));
  }
}

/// @nodoc

class _$Status with DiagnosticableTreeMixin implements Status {
  const _$Status({this.data});

  @override
  final AddContactStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactState.status(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactState.status'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(AddContactStateData? data) initial,
    required TResult Function(AddContactStateData? data) error,
    required TResult Function(AddContactStateData? data) status,
    required TResult Function(AddContactStateData? data) payType,
    required TResult Function(AddContactStateData? data) type,
    required TResult Function(AddContactStateData? data) transactions,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddContactStateData? data)? initial,
    TResult? Function(AddContactStateData? data)? error,
    TResult? Function(AddContactStateData? data)? status,
    TResult? Function(AddContactStateData? data)? payType,
    TResult? Function(AddContactStateData? data)? type,
    TResult? Function(AddContactStateData? data)? transactions,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddContactStateData? data)? initial,
    TResult Function(AddContactStateData? data)? error,
    TResult Function(AddContactStateData? data)? status,
    TResult Function(AddContactStateData? data)? payType,
    TResult Function(AddContactStateData? data)? type,
    TResult Function(AddContactStateData? data)? transactions,
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
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(PayType value) payType,
    required TResult Function(Type value) type,
    required TResult Function(GetTransactions value) transactions,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(PayType value)? payType,
    TResult? Function(Type value)? type,
    TResult? Function(GetTransactions value)? transactions,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(PayType value)? payType,
    TResult Function(Type value)? type,
    TResult Function(GetTransactions value)? transactions,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements AddContactState {
  const factory Status({final AddContactStateData? data}) = _$Status;

  @override
  AddContactStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayTypeCopyWith<$Res>
    implements $AddContactStateCopyWith<$Res> {
  factory _$$PayTypeCopyWith(_$PayType value, $Res Function(_$PayType) then) =
      __$$PayTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddContactStateData? data});

  @override
  $AddContactStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PayTypeCopyWithImpl<$Res>
    extends _$AddContactStateCopyWithImpl<$Res, _$PayType>
    implements _$$PayTypeCopyWith<$Res> {
  __$$PayTypeCopyWithImpl(_$PayType _value, $Res Function(_$PayType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$PayType(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddContactStateData?,
    ));
  }
}

/// @nodoc

class _$PayType with DiagnosticableTreeMixin implements PayType {
  const _$PayType({this.data});

  @override
  final AddContactStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactState.payType(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactState.payType'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayType &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayTypeCopyWith<_$PayType> get copyWith =>
      __$$PayTypeCopyWithImpl<_$PayType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddContactStateData? data) initial,
    required TResult Function(AddContactStateData? data) error,
    required TResult Function(AddContactStateData? data) status,
    required TResult Function(AddContactStateData? data) payType,
    required TResult Function(AddContactStateData? data) type,
    required TResult Function(AddContactStateData? data) transactions,
  }) {
    return payType(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddContactStateData? data)? initial,
    TResult? Function(AddContactStateData? data)? error,
    TResult? Function(AddContactStateData? data)? status,
    TResult? Function(AddContactStateData? data)? payType,
    TResult? Function(AddContactStateData? data)? type,
    TResult? Function(AddContactStateData? data)? transactions,
  }) {
    return payType?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddContactStateData? data)? initial,
    TResult Function(AddContactStateData? data)? error,
    TResult Function(AddContactStateData? data)? status,
    TResult Function(AddContactStateData? data)? payType,
    TResult Function(AddContactStateData? data)? type,
    TResult Function(AddContactStateData? data)? transactions,
    required TResult orElse(),
  }) {
    if (payType != null) {
      return payType(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(PayType value) payType,
    required TResult Function(Type value) type,
    required TResult Function(GetTransactions value) transactions,
  }) {
    return payType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(PayType value)? payType,
    TResult? Function(Type value)? type,
    TResult? Function(GetTransactions value)? transactions,
  }) {
    return payType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(PayType value)? payType,
    TResult Function(Type value)? type,
    TResult Function(GetTransactions value)? transactions,
    required TResult orElse(),
  }) {
    if (payType != null) {
      return payType(this);
    }
    return orElse();
  }
}

abstract class PayType implements AddContactState {
  const factory PayType({final AddContactStateData? data}) = _$PayType;

  @override
  AddContactStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$PayTypeCopyWith<_$PayType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypeCopyWith<$Res> implements $AddContactStateCopyWith<$Res> {
  factory _$$TypeCopyWith(_$Type value, $Res Function(_$Type) then) =
      __$$TypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddContactStateData? data});

  @override
  $AddContactStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TypeCopyWithImpl<$Res>
    extends _$AddContactStateCopyWithImpl<$Res, _$Type>
    implements _$$TypeCopyWith<$Res> {
  __$$TypeCopyWithImpl(_$Type _value, $Res Function(_$Type) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Type(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddContactStateData?,
    ));
  }
}

/// @nodoc

class _$Type with DiagnosticableTreeMixin implements Type {
  const _$Type({this.data});

  @override
  final AddContactStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactState.type(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactState.type'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Type &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeCopyWith<_$Type> get copyWith =>
      __$$TypeCopyWithImpl<_$Type>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddContactStateData? data) initial,
    required TResult Function(AddContactStateData? data) error,
    required TResult Function(AddContactStateData? data) status,
    required TResult Function(AddContactStateData? data) payType,
    required TResult Function(AddContactStateData? data) type,
    required TResult Function(AddContactStateData? data) transactions,
  }) {
    return type(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddContactStateData? data)? initial,
    TResult? Function(AddContactStateData? data)? error,
    TResult? Function(AddContactStateData? data)? status,
    TResult? Function(AddContactStateData? data)? payType,
    TResult? Function(AddContactStateData? data)? type,
    TResult? Function(AddContactStateData? data)? transactions,
  }) {
    return type?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddContactStateData? data)? initial,
    TResult Function(AddContactStateData? data)? error,
    TResult Function(AddContactStateData? data)? status,
    TResult Function(AddContactStateData? data)? payType,
    TResult Function(AddContactStateData? data)? type,
    TResult Function(AddContactStateData? data)? transactions,
    required TResult orElse(),
  }) {
    if (type != null) {
      return type(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(PayType value) payType,
    required TResult Function(Type value) type,
    required TResult Function(GetTransactions value) transactions,
  }) {
    return type(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(PayType value)? payType,
    TResult? Function(Type value)? type,
    TResult? Function(GetTransactions value)? transactions,
  }) {
    return type?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(PayType value)? payType,
    TResult Function(Type value)? type,
    TResult Function(GetTransactions value)? transactions,
    required TResult orElse(),
  }) {
    if (type != null) {
      return type(this);
    }
    return orElse();
  }
}

abstract class Type implements AddContactState {
  const factory Type({final AddContactStateData? data}) = _$Type;

  @override
  AddContactStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$TypeCopyWith<_$Type> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTransactionsCopyWith<$Res>
    implements $AddContactStateCopyWith<$Res> {
  factory _$$GetTransactionsCopyWith(
          _$GetTransactions value, $Res Function(_$GetTransactions) then) =
      __$$GetTransactionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddContactStateData? data});

  @override
  $AddContactStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetTransactionsCopyWithImpl<$Res>
    extends _$AddContactStateCopyWithImpl<$Res, _$GetTransactions>
    implements _$$GetTransactionsCopyWith<$Res> {
  __$$GetTransactionsCopyWithImpl(
      _$GetTransactions _value, $Res Function(_$GetTransactions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetTransactions(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddContactStateData?,
    ));
  }
}

/// @nodoc

class _$GetTransactions
    with DiagnosticableTreeMixin
    implements GetTransactions {
  const _$GetTransactions({this.data});

  @override
  final AddContactStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactState.transactions(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactState.transactions'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTransactions &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTransactionsCopyWith<_$GetTransactions> get copyWith =>
      __$$GetTransactionsCopyWithImpl<_$GetTransactions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddContactStateData? data) initial,
    required TResult Function(AddContactStateData? data) error,
    required TResult Function(AddContactStateData? data) status,
    required TResult Function(AddContactStateData? data) payType,
    required TResult Function(AddContactStateData? data) type,
    required TResult Function(AddContactStateData? data) transactions,
  }) {
    return transactions(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddContactStateData? data)? initial,
    TResult? Function(AddContactStateData? data)? error,
    TResult? Function(AddContactStateData? data)? status,
    TResult? Function(AddContactStateData? data)? payType,
    TResult? Function(AddContactStateData? data)? type,
    TResult? Function(AddContactStateData? data)? transactions,
  }) {
    return transactions?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddContactStateData? data)? initial,
    TResult Function(AddContactStateData? data)? error,
    TResult Function(AddContactStateData? data)? status,
    TResult Function(AddContactStateData? data)? payType,
    TResult Function(AddContactStateData? data)? type,
    TResult Function(AddContactStateData? data)? transactions,
    required TResult orElse(),
  }) {
    if (transactions != null) {
      return transactions(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(PayType value) payType,
    required TResult Function(Type value) type,
    required TResult Function(GetTransactions value) transactions,
  }) {
    return transactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(PayType value)? payType,
    TResult? Function(Type value)? type,
    TResult? Function(GetTransactions value)? transactions,
  }) {
    return transactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(PayType value)? payType,
    TResult Function(Type value)? type,
    TResult Function(GetTransactions value)? transactions,
    required TResult orElse(),
  }) {
    if (transactions != null) {
      return transactions(this);
    }
    return orElse();
  }
}

abstract class GetTransactions implements AddContactState {
  const factory GetTransactions({final AddContactStateData? data}) =
      _$GetTransactions;

  @override
  AddContactStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetTransactionsCopyWith<_$GetTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}
