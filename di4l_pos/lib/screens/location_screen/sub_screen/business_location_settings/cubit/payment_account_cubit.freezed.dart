// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentAccountData {
  List<PaymentAccount> get paymentAccounts =>
      throw _privateConstructorUsedError;
  List<PaymentAccount> get originalPaymentAccounts =>
      throw _privateConstructorUsedError;
  List<PaymentAccount?> get businessPaymentAccountsList =>
      throw _privateConstructorUsedError;
  PaymentAccount? get paymentAccount => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentAccountDataCopyWith<PaymentAccountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentAccountDataCopyWith<$Res> {
  factory $PaymentAccountDataCopyWith(
          PaymentAccountData value, $Res Function(PaymentAccountData) then) =
      _$PaymentAccountDataCopyWithImpl<$Res, PaymentAccountData>;
  @useResult
  $Res call(
      {List<PaymentAccount> paymentAccounts,
      List<PaymentAccount> originalPaymentAccounts,
      List<PaymentAccount?> businessPaymentAccountsList,
      PaymentAccount? paymentAccount,
      StatusType status});
}

/// @nodoc
class _$PaymentAccountDataCopyWithImpl<$Res, $Val extends PaymentAccountData>
    implements $PaymentAccountDataCopyWith<$Res> {
  _$PaymentAccountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAccounts = null,
    Object? originalPaymentAccounts = null,
    Object? businessPaymentAccountsList = null,
    Object? paymentAccount = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      paymentAccounts: null == paymentAccounts
          ? _value.paymentAccounts
          : paymentAccounts // ignore: cast_nullable_to_non_nullable
              as List<PaymentAccount>,
      originalPaymentAccounts: null == originalPaymentAccounts
          ? _value.originalPaymentAccounts
          : originalPaymentAccounts // ignore: cast_nullable_to_non_nullable
              as List<PaymentAccount>,
      businessPaymentAccountsList: null == businessPaymentAccountsList
          ? _value.businessPaymentAccountsList
          : businessPaymentAccountsList // ignore: cast_nullable_to_non_nullable
              as List<PaymentAccount?>,
      paymentAccount: freezed == paymentAccount
          ? _value.paymentAccount
          : paymentAccount // ignore: cast_nullable_to_non_nullable
              as PaymentAccount?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentAccountDataCopyWith<$Res>
    implements $PaymentAccountDataCopyWith<$Res> {
  factory _$$_PaymentAccountDataCopyWith(_$_PaymentAccountData value,
          $Res Function(_$_PaymentAccountData) then) =
      __$$_PaymentAccountDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PaymentAccount> paymentAccounts,
      List<PaymentAccount> originalPaymentAccounts,
      List<PaymentAccount?> businessPaymentAccountsList,
      PaymentAccount? paymentAccount,
      StatusType status});
}

/// @nodoc
class __$$_PaymentAccountDataCopyWithImpl<$Res>
    extends _$PaymentAccountDataCopyWithImpl<$Res, _$_PaymentAccountData>
    implements _$$_PaymentAccountDataCopyWith<$Res> {
  __$$_PaymentAccountDataCopyWithImpl(
      _$_PaymentAccountData _value, $Res Function(_$_PaymentAccountData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAccounts = null,
    Object? originalPaymentAccounts = null,
    Object? businessPaymentAccountsList = null,
    Object? paymentAccount = freezed,
    Object? status = null,
  }) {
    return _then(_$_PaymentAccountData(
      paymentAccounts: null == paymentAccounts
          ? _value._paymentAccounts
          : paymentAccounts // ignore: cast_nullable_to_non_nullable
              as List<PaymentAccount>,
      originalPaymentAccounts: null == originalPaymentAccounts
          ? _value._originalPaymentAccounts
          : originalPaymentAccounts // ignore: cast_nullable_to_non_nullable
              as List<PaymentAccount>,
      businessPaymentAccountsList: null == businessPaymentAccountsList
          ? _value._businessPaymentAccountsList
          : businessPaymentAccountsList // ignore: cast_nullable_to_non_nullable
              as List<PaymentAccount?>,
      paymentAccount: freezed == paymentAccount
          ? _value.paymentAccount
          : paymentAccount // ignore: cast_nullable_to_non_nullable
              as PaymentAccount?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
    ));
  }
}

/// @nodoc

class _$_PaymentAccountData implements _PaymentAccountData {
  const _$_PaymentAccountData(
      {final List<PaymentAccount> paymentAccounts = const [],
      final List<PaymentAccount> originalPaymentAccounts = const [],
      final List<PaymentAccount?> businessPaymentAccountsList = const [],
      this.paymentAccount,
      this.status = StatusType.init})
      : _paymentAccounts = paymentAccounts,
        _originalPaymentAccounts = originalPaymentAccounts,
        _businessPaymentAccountsList = businessPaymentAccountsList;

  final List<PaymentAccount> _paymentAccounts;
  @override
  @JsonKey()
  List<PaymentAccount> get paymentAccounts {
    if (_paymentAccounts is EqualUnmodifiableListView) return _paymentAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentAccounts);
  }

  final List<PaymentAccount> _originalPaymentAccounts;
  @override
  @JsonKey()
  List<PaymentAccount> get originalPaymentAccounts {
    if (_originalPaymentAccounts is EqualUnmodifiableListView)
      return _originalPaymentAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_originalPaymentAccounts);
  }

  final List<PaymentAccount?> _businessPaymentAccountsList;
  @override
  @JsonKey()
  List<PaymentAccount?> get businessPaymentAccountsList {
    if (_businessPaymentAccountsList is EqualUnmodifiableListView)
      return _businessPaymentAccountsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_businessPaymentAccountsList);
  }

  @override
  final PaymentAccount? paymentAccount;
  @override
  @JsonKey()
  final StatusType status;

  @override
  String toString() {
    return 'PaymentAccountData(paymentAccounts: $paymentAccounts, originalPaymentAccounts: $originalPaymentAccounts, businessPaymentAccountsList: $businessPaymentAccountsList, paymentAccount: $paymentAccount, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentAccountData &&
            const DeepCollectionEquality()
                .equals(other._paymentAccounts, _paymentAccounts) &&
            const DeepCollectionEquality().equals(
                other._originalPaymentAccounts, _originalPaymentAccounts) &&
            const DeepCollectionEquality().equals(
                other._businessPaymentAccountsList,
                _businessPaymentAccountsList) &&
            (identical(other.paymentAccount, paymentAccount) ||
                other.paymentAccount == paymentAccount) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_paymentAccounts),
      const DeepCollectionEquality().hash(_originalPaymentAccounts),
      const DeepCollectionEquality().hash(_businessPaymentAccountsList),
      paymentAccount,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentAccountDataCopyWith<_$_PaymentAccountData> get copyWith =>
      __$$_PaymentAccountDataCopyWithImpl<_$_PaymentAccountData>(
          this, _$identity);
}

abstract class _PaymentAccountData implements PaymentAccountData {
  const factory _PaymentAccountData(
      {final List<PaymentAccount> paymentAccounts,
      final List<PaymentAccount> originalPaymentAccounts,
      final List<PaymentAccount?> businessPaymentAccountsList,
      final PaymentAccount? paymentAccount,
      final StatusType status}) = _$_PaymentAccountData;

  @override
  List<PaymentAccount> get paymentAccounts;
  @override
  List<PaymentAccount> get originalPaymentAccounts;
  @override
  List<PaymentAccount?> get businessPaymentAccountsList;
  @override
  PaymentAccount? get paymentAccount;
  @override
  StatusType get status;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentAccountDataCopyWith<_$_PaymentAccountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentAccountState {
  PaymentAccountData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentAccountData? data) initial,
    required TResult Function(PaymentAccountData? data) status,
    required TResult Function(PaymentAccountData? data) getPaymentAccounts,
    required TResult Function(PaymentAccountData? data) getPaymentAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentAccountData? data)? initial,
    TResult? Function(PaymentAccountData? data)? status,
    TResult? Function(PaymentAccountData? data)? getPaymentAccounts,
    TResult? Function(PaymentAccountData? data)? getPaymentAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentAccountData? data)? initial,
    TResult Function(PaymentAccountData? data)? status,
    TResult Function(PaymentAccountData? data)? getPaymentAccounts,
    TResult Function(PaymentAccountData? data)? getPaymentAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetPaymentAccounts value) getPaymentAccounts,
    required TResult Function(GetPaymentAccount value) getPaymentAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPaymentAccounts value)? getPaymentAccounts,
    TResult? Function(GetPaymentAccount value)? getPaymentAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPaymentAccounts value)? getPaymentAccounts,
    TResult Function(GetPaymentAccount value)? getPaymentAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentAccountStateCopyWith<PaymentAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentAccountStateCopyWith<$Res> {
  factory $PaymentAccountStateCopyWith(
          PaymentAccountState value, $Res Function(PaymentAccountState) then) =
      _$PaymentAccountStateCopyWithImpl<$Res, PaymentAccountState>;
  @useResult
  $Res call({PaymentAccountData? data});

  $PaymentAccountDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PaymentAccountStateCopyWithImpl<$Res, $Val extends PaymentAccountState>
    implements $PaymentAccountStateCopyWith<$Res> {
  _$PaymentAccountStateCopyWithImpl(this._value, this._then);

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
              as PaymentAccountData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentAccountDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PaymentAccountDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $PaymentAccountStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentAccountData? data});

  @override
  $PaymentAccountDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$PaymentAccountStateCopyWithImpl<$Res, _$Initial>
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
              as PaymentAccountData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final PaymentAccountData? data;

  @override
  String toString() {
    return 'PaymentAccountState.initial(data: $data)';
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
    required TResult Function(PaymentAccountData? data) initial,
    required TResult Function(PaymentAccountData? data) status,
    required TResult Function(PaymentAccountData? data) getPaymentAccounts,
    required TResult Function(PaymentAccountData? data) getPaymentAccount,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentAccountData? data)? initial,
    TResult? Function(PaymentAccountData? data)? status,
    TResult? Function(PaymentAccountData? data)? getPaymentAccounts,
    TResult? Function(PaymentAccountData? data)? getPaymentAccount,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentAccountData? data)? initial,
    TResult Function(PaymentAccountData? data)? status,
    TResult Function(PaymentAccountData? data)? getPaymentAccounts,
    TResult Function(PaymentAccountData? data)? getPaymentAccount,
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
    required TResult Function(GetPaymentAccounts value) getPaymentAccounts,
    required TResult Function(GetPaymentAccount value) getPaymentAccount,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPaymentAccounts value)? getPaymentAccounts,
    TResult? Function(GetPaymentAccount value)? getPaymentAccount,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPaymentAccounts value)? getPaymentAccounts,
    TResult Function(GetPaymentAccount value)? getPaymentAccount,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PaymentAccountState {
  const factory Initial({final PaymentAccountData? data}) = _$Initial;

  @override
  PaymentAccountData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $PaymentAccountStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentAccountData? data});

  @override
  $PaymentAccountDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$PaymentAccountStateCopyWithImpl<$Res, _$Status>
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
              as PaymentAccountData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final PaymentAccountData? data;

  @override
  String toString() {
    return 'PaymentAccountState.status(data: $data)';
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
    required TResult Function(PaymentAccountData? data) initial,
    required TResult Function(PaymentAccountData? data) status,
    required TResult Function(PaymentAccountData? data) getPaymentAccounts,
    required TResult Function(PaymentAccountData? data) getPaymentAccount,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentAccountData? data)? initial,
    TResult? Function(PaymentAccountData? data)? status,
    TResult? Function(PaymentAccountData? data)? getPaymentAccounts,
    TResult? Function(PaymentAccountData? data)? getPaymentAccount,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentAccountData? data)? initial,
    TResult Function(PaymentAccountData? data)? status,
    TResult Function(PaymentAccountData? data)? getPaymentAccounts,
    TResult Function(PaymentAccountData? data)? getPaymentAccount,
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
    required TResult Function(GetPaymentAccounts value) getPaymentAccounts,
    required TResult Function(GetPaymentAccount value) getPaymentAccount,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPaymentAccounts value)? getPaymentAccounts,
    TResult? Function(GetPaymentAccount value)? getPaymentAccount,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPaymentAccounts value)? getPaymentAccounts,
    TResult Function(GetPaymentAccount value)? getPaymentAccount,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements PaymentAccountState {
  const factory Status({final PaymentAccountData? data}) = _$Status;

  @override
  PaymentAccountData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPaymentAccountsCopyWith<$Res>
    implements $PaymentAccountStateCopyWith<$Res> {
  factory _$$GetPaymentAccountsCopyWith(_$GetPaymentAccounts value,
          $Res Function(_$GetPaymentAccounts) then) =
      __$$GetPaymentAccountsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentAccountData? data});

  @override
  $PaymentAccountDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetPaymentAccountsCopyWithImpl<$Res>
    extends _$PaymentAccountStateCopyWithImpl<$Res, _$GetPaymentAccounts>
    implements _$$GetPaymentAccountsCopyWith<$Res> {
  __$$GetPaymentAccountsCopyWithImpl(
      _$GetPaymentAccounts _value, $Res Function(_$GetPaymentAccounts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetPaymentAccounts(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentAccountData?,
    ));
  }
}

/// @nodoc

class _$GetPaymentAccounts implements GetPaymentAccounts {
  const _$GetPaymentAccounts({this.data});

  @override
  final PaymentAccountData? data;

  @override
  String toString() {
    return 'PaymentAccountState.getPaymentAccounts(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentAccounts &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentAccountsCopyWith<_$GetPaymentAccounts> get copyWith =>
      __$$GetPaymentAccountsCopyWithImpl<_$GetPaymentAccounts>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentAccountData? data) initial,
    required TResult Function(PaymentAccountData? data) status,
    required TResult Function(PaymentAccountData? data) getPaymentAccounts,
    required TResult Function(PaymentAccountData? data) getPaymentAccount,
  }) {
    return getPaymentAccounts(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentAccountData? data)? initial,
    TResult? Function(PaymentAccountData? data)? status,
    TResult? Function(PaymentAccountData? data)? getPaymentAccounts,
    TResult? Function(PaymentAccountData? data)? getPaymentAccount,
  }) {
    return getPaymentAccounts?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentAccountData? data)? initial,
    TResult Function(PaymentAccountData? data)? status,
    TResult Function(PaymentAccountData? data)? getPaymentAccounts,
    TResult Function(PaymentAccountData? data)? getPaymentAccount,
    required TResult orElse(),
  }) {
    if (getPaymentAccounts != null) {
      return getPaymentAccounts(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetPaymentAccounts value) getPaymentAccounts,
    required TResult Function(GetPaymentAccount value) getPaymentAccount,
  }) {
    return getPaymentAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPaymentAccounts value)? getPaymentAccounts,
    TResult? Function(GetPaymentAccount value)? getPaymentAccount,
  }) {
    return getPaymentAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPaymentAccounts value)? getPaymentAccounts,
    TResult Function(GetPaymentAccount value)? getPaymentAccount,
    required TResult orElse(),
  }) {
    if (getPaymentAccounts != null) {
      return getPaymentAccounts(this);
    }
    return orElse();
  }
}

abstract class GetPaymentAccounts implements PaymentAccountState {
  const factory GetPaymentAccounts({final PaymentAccountData? data}) =
      _$GetPaymentAccounts;

  @override
  PaymentAccountData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetPaymentAccountsCopyWith<_$GetPaymentAccounts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPaymentAccountCopyWith<$Res>
    implements $PaymentAccountStateCopyWith<$Res> {
  factory _$$GetPaymentAccountCopyWith(
          _$GetPaymentAccount value, $Res Function(_$GetPaymentAccount) then) =
      __$$GetPaymentAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentAccountData? data});

  @override
  $PaymentAccountDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetPaymentAccountCopyWithImpl<$Res>
    extends _$PaymentAccountStateCopyWithImpl<$Res, _$GetPaymentAccount>
    implements _$$GetPaymentAccountCopyWith<$Res> {
  __$$GetPaymentAccountCopyWithImpl(
      _$GetPaymentAccount _value, $Res Function(_$GetPaymentAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetPaymentAccount(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentAccountData?,
    ));
  }
}

/// @nodoc

class _$GetPaymentAccount implements GetPaymentAccount {
  const _$GetPaymentAccount({this.data});

  @override
  final PaymentAccountData? data;

  @override
  String toString() {
    return 'PaymentAccountState.getPaymentAccount(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentAccount &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentAccountCopyWith<_$GetPaymentAccount> get copyWith =>
      __$$GetPaymentAccountCopyWithImpl<_$GetPaymentAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentAccountData? data) initial,
    required TResult Function(PaymentAccountData? data) status,
    required TResult Function(PaymentAccountData? data) getPaymentAccounts,
    required TResult Function(PaymentAccountData? data) getPaymentAccount,
  }) {
    return getPaymentAccount(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentAccountData? data)? initial,
    TResult? Function(PaymentAccountData? data)? status,
    TResult? Function(PaymentAccountData? data)? getPaymentAccounts,
    TResult? Function(PaymentAccountData? data)? getPaymentAccount,
  }) {
    return getPaymentAccount?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentAccountData? data)? initial,
    TResult Function(PaymentAccountData? data)? status,
    TResult Function(PaymentAccountData? data)? getPaymentAccounts,
    TResult Function(PaymentAccountData? data)? getPaymentAccount,
    required TResult orElse(),
  }) {
    if (getPaymentAccount != null) {
      return getPaymentAccount(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetPaymentAccounts value) getPaymentAccounts,
    required TResult Function(GetPaymentAccount value) getPaymentAccount,
  }) {
    return getPaymentAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPaymentAccounts value)? getPaymentAccounts,
    TResult? Function(GetPaymentAccount value)? getPaymentAccount,
  }) {
    return getPaymentAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPaymentAccounts value)? getPaymentAccounts,
    TResult Function(GetPaymentAccount value)? getPaymentAccount,
    required TResult orElse(),
  }) {
    if (getPaymentAccount != null) {
      return getPaymentAccount(this);
    }
    return orElse();
  }
}

abstract class GetPaymentAccount implements PaymentAccountState {
  const factory GetPaymentAccount({final PaymentAccountData? data}) =
      _$GetPaymentAccount;

  @override
  PaymentAccountData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetPaymentAccountCopyWith<_$GetPaymentAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
