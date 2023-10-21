// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BusinessData {
  StatusType get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<BusinessLocation> get businesss => throw _privateConstructorUsedError;
  BusinessLocation? get business => throw _privateConstructorUsedError;
  BusinessLocation? get businessTo => throw _privateConstructorUsedError;
  BusinessSettings? get businessSetting => throw _privateConstructorUsedError;
  List<Account> get accounts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BusinessDataCopyWith<BusinessData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessDataCopyWith<$Res> {
  factory $BusinessDataCopyWith(
          BusinessData value, $Res Function(BusinessData) then) =
      _$BusinessDataCopyWithImpl<$Res, BusinessData>;
  @useResult
  $Res call(
      {StatusType status,
      String error,
      List<BusinessLocation> businesss,
      BusinessLocation? business,
      BusinessLocation? businessTo,
      BusinessSettings? businessSetting,
      List<Account> accounts});
}

/// @nodoc
class _$BusinessDataCopyWithImpl<$Res, $Val extends BusinessData>
    implements $BusinessDataCopyWith<$Res> {
  _$BusinessDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? businesss = null,
    Object? business = freezed,
    Object? businessTo = freezed,
    Object? businessSetting = freezed,
    Object? accounts = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      businesss: null == businesss
          ? _value.businesss
          : businesss // ignore: cast_nullable_to_non_nullable
              as List<BusinessLocation>,
      business: freezed == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as BusinessLocation?,
      businessTo: freezed == businessTo
          ? _value.businessTo
          : businessTo // ignore: cast_nullable_to_non_nullable
              as BusinessLocation?,
      businessSetting: freezed == businessSetting
          ? _value.businessSetting
          : businessSetting // ignore: cast_nullable_to_non_nullable
              as BusinessSettings?,
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BusinessDataCopyWith<$Res>
    implements $BusinessDataCopyWith<$Res> {
  factory _$$_BusinessDataCopyWith(
          _$_BusinessData value, $Res Function(_$_BusinessData) then) =
      __$$_BusinessDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      String error,
      List<BusinessLocation> businesss,
      BusinessLocation? business,
      BusinessLocation? businessTo,
      BusinessSettings? businessSetting,
      List<Account> accounts});
}

/// @nodoc
class __$$_BusinessDataCopyWithImpl<$Res>
    extends _$BusinessDataCopyWithImpl<$Res, _$_BusinessData>
    implements _$$_BusinessDataCopyWith<$Res> {
  __$$_BusinessDataCopyWithImpl(
      _$_BusinessData _value, $Res Function(_$_BusinessData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? businesss = null,
    Object? business = freezed,
    Object? businessTo = freezed,
    Object? businessSetting = freezed,
    Object? accounts = null,
  }) {
    return _then(_$_BusinessData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      businesss: null == businesss
          ? _value._businesss
          : businesss // ignore: cast_nullable_to_non_nullable
              as List<BusinessLocation>,
      business: freezed == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as BusinessLocation?,
      businessTo: freezed == businessTo
          ? _value.businessTo
          : businessTo // ignore: cast_nullable_to_non_nullable
              as BusinessLocation?,
      businessSetting: freezed == businessSetting
          ? _value.businessSetting
          : businessSetting // ignore: cast_nullable_to_non_nullable
              as BusinessSettings?,
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_BusinessData with DiagnosticableTreeMixin implements _BusinessData {
  const _$_BusinessData(
      {this.status = StatusType.init,
      this.error = '',
      final List<BusinessLocation> businesss = const [],
      this.business,
      this.businessTo,
      this.businessSetting,
      final List<Account> accounts = const []})
      : _businesss = businesss,
        _accounts = accounts;

  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final String error;
  final List<BusinessLocation> _businesss;
  @override
  @JsonKey()
  List<BusinessLocation> get businesss {
    if (_businesss is EqualUnmodifiableListView) return _businesss;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_businesss);
  }

  @override
  final BusinessLocation? business;
  @override
  final BusinessLocation? businessTo;
  @override
  final BusinessSettings? businessSetting;
  final List<Account> _accounts;
  @override
  @JsonKey()
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusinessData(status: $status, error: $error, businesss: $businesss, business: $business, businessTo: $businessTo, businessSetting: $businessSetting, accounts: $accounts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BusinessData'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('businesss', businesss))
      ..add(DiagnosticsProperty('business', business))
      ..add(DiagnosticsProperty('businessTo', businessTo))
      ..add(DiagnosticsProperty('businessSetting', businessSetting))
      ..add(DiagnosticsProperty('accounts', accounts));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusinessData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._businesss, _businesss) &&
            (identical(other.business, business) ||
                other.business == business) &&
            (identical(other.businessTo, businessTo) ||
                other.businessTo == businessTo) &&
            (identical(other.businessSetting, businessSetting) ||
                other.businessSetting == businessSetting) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      error,
      const DeepCollectionEquality().hash(_businesss),
      business,
      businessTo,
      businessSetting,
      const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusinessDataCopyWith<_$_BusinessData> get copyWith =>
      __$$_BusinessDataCopyWithImpl<_$_BusinessData>(this, _$identity);
}

abstract class _BusinessData implements BusinessData {
  const factory _BusinessData(
      {final StatusType status,
      final String error,
      final List<BusinessLocation> businesss,
      final BusinessLocation? business,
      final BusinessLocation? businessTo,
      final BusinessSettings? businessSetting,
      final List<Account> accounts}) = _$_BusinessData;

  @override
  StatusType get status;
  @override
  String get error;
  @override
  List<BusinessLocation> get businesss;
  @override
  BusinessLocation? get business;
  @override
  BusinessLocation? get businessTo;
  @override
  BusinessSettings? get businessSetting;
  @override
  List<Account> get accounts;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessDataCopyWith<_$_BusinessData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BusinessState {
  BusinessData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BusinessData? data) initial,
    required TResult Function(BusinessData? data) status,
    required TResult Function(BusinessData? data) getBusinesss,
    required TResult Function(BusinessData? data) getBusiness,
    required TResult Function(BusinessData? data) getAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BusinessData? data)? initial,
    TResult? Function(BusinessData? data)? status,
    TResult? Function(BusinessData? data)? getBusinesss,
    TResult? Function(BusinessData? data)? getBusiness,
    TResult? Function(BusinessData? data)? getAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BusinessData? data)? initial,
    TResult Function(BusinessData? data)? status,
    TResult Function(BusinessData? data)? getBusinesss,
    TResult Function(BusinessData? data)? getBusiness,
    TResult Function(BusinessData? data)? getAccounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetBusinesss value) getBusinesss,
    required TResult Function(GetBusiness value) getBusiness,
    required TResult Function(GetAccounts value) getAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBusinesss value)? getBusinesss,
    TResult? Function(GetBusiness value)? getBusiness,
    TResult? Function(GetAccounts value)? getAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBusinesss value)? getBusinesss,
    TResult Function(GetBusiness value)? getBusiness,
    TResult Function(GetAccounts value)? getAccounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BusinessStateCopyWith<BusinessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessStateCopyWith<$Res> {
  factory $BusinessStateCopyWith(
          BusinessState value, $Res Function(BusinessState) then) =
      _$BusinessStateCopyWithImpl<$Res, BusinessState>;
  @useResult
  $Res call({BusinessData? data});

  $BusinessDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BusinessStateCopyWithImpl<$Res, $Val extends BusinessState>
    implements $BusinessStateCopyWith<$Res> {
  _$BusinessStateCopyWithImpl(this._value, this._then);

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
              as BusinessData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BusinessDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BusinessDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $BusinessStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BusinessData? data});

  @override
  $BusinessDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$BusinessStateCopyWithImpl<$Res, _$Initial>
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
              as BusinessData?,
    ));
  }
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial({this.data});

  @override
  final BusinessData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusinessState.initial(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BusinessState.initial'))
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
    required TResult Function(BusinessData? data) initial,
    required TResult Function(BusinessData? data) status,
    required TResult Function(BusinessData? data) getBusinesss,
    required TResult Function(BusinessData? data) getBusiness,
    required TResult Function(BusinessData? data) getAccounts,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BusinessData? data)? initial,
    TResult? Function(BusinessData? data)? status,
    TResult? Function(BusinessData? data)? getBusinesss,
    TResult? Function(BusinessData? data)? getBusiness,
    TResult? Function(BusinessData? data)? getAccounts,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BusinessData? data)? initial,
    TResult Function(BusinessData? data)? status,
    TResult Function(BusinessData? data)? getBusinesss,
    TResult Function(BusinessData? data)? getBusiness,
    TResult Function(BusinessData? data)? getAccounts,
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
    required TResult Function(GetBusinesss value) getBusinesss,
    required TResult Function(GetBusiness value) getBusiness,
    required TResult Function(GetAccounts value) getAccounts,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBusinesss value)? getBusinesss,
    TResult? Function(GetBusiness value)? getBusiness,
    TResult? Function(GetAccounts value)? getAccounts,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBusinesss value)? getBusinesss,
    TResult Function(GetBusiness value)? getBusiness,
    TResult Function(GetAccounts value)? getAccounts,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BusinessState {
  const factory Initial({final BusinessData? data}) = _$Initial;

  @override
  BusinessData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $BusinessStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BusinessData? data});

  @override
  $BusinessDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$BusinessStateCopyWithImpl<$Res, _$Status>
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
              as BusinessData?,
    ));
  }
}

/// @nodoc

class _$Status with DiagnosticableTreeMixin implements Status {
  const _$Status({this.data});

  @override
  final BusinessData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusinessState.status(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BusinessState.status'))
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
    required TResult Function(BusinessData? data) initial,
    required TResult Function(BusinessData? data) status,
    required TResult Function(BusinessData? data) getBusinesss,
    required TResult Function(BusinessData? data) getBusiness,
    required TResult Function(BusinessData? data) getAccounts,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BusinessData? data)? initial,
    TResult? Function(BusinessData? data)? status,
    TResult? Function(BusinessData? data)? getBusinesss,
    TResult? Function(BusinessData? data)? getBusiness,
    TResult? Function(BusinessData? data)? getAccounts,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BusinessData? data)? initial,
    TResult Function(BusinessData? data)? status,
    TResult Function(BusinessData? data)? getBusinesss,
    TResult Function(BusinessData? data)? getBusiness,
    TResult Function(BusinessData? data)? getAccounts,
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
    required TResult Function(GetBusinesss value) getBusinesss,
    required TResult Function(GetBusiness value) getBusiness,
    required TResult Function(GetAccounts value) getAccounts,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBusinesss value)? getBusinesss,
    TResult? Function(GetBusiness value)? getBusiness,
    TResult? Function(GetAccounts value)? getAccounts,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBusinesss value)? getBusinesss,
    TResult Function(GetBusiness value)? getBusiness,
    TResult Function(GetAccounts value)? getAccounts,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements BusinessState {
  const factory Status({final BusinessData? data}) = _$Status;

  @override
  BusinessData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBusinesssCopyWith<$Res>
    implements $BusinessStateCopyWith<$Res> {
  factory _$$GetBusinesssCopyWith(
          _$GetBusinesss value, $Res Function(_$GetBusinesss) then) =
      __$$GetBusinesssCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BusinessData? data});

  @override
  $BusinessDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetBusinesssCopyWithImpl<$Res>
    extends _$BusinessStateCopyWithImpl<$Res, _$GetBusinesss>
    implements _$$GetBusinesssCopyWith<$Res> {
  __$$GetBusinesssCopyWithImpl(
      _$GetBusinesss _value, $Res Function(_$GetBusinesss) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetBusinesss(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BusinessData?,
    ));
  }
}

/// @nodoc

class _$GetBusinesss with DiagnosticableTreeMixin implements GetBusinesss {
  const _$GetBusinesss({this.data});

  @override
  final BusinessData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusinessState.getBusinesss(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BusinessState.getBusinesss'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBusinesss &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBusinesssCopyWith<_$GetBusinesss> get copyWith =>
      __$$GetBusinesssCopyWithImpl<_$GetBusinesss>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BusinessData? data) initial,
    required TResult Function(BusinessData? data) status,
    required TResult Function(BusinessData? data) getBusinesss,
    required TResult Function(BusinessData? data) getBusiness,
    required TResult Function(BusinessData? data) getAccounts,
  }) {
    return getBusinesss(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BusinessData? data)? initial,
    TResult? Function(BusinessData? data)? status,
    TResult? Function(BusinessData? data)? getBusinesss,
    TResult? Function(BusinessData? data)? getBusiness,
    TResult? Function(BusinessData? data)? getAccounts,
  }) {
    return getBusinesss?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BusinessData? data)? initial,
    TResult Function(BusinessData? data)? status,
    TResult Function(BusinessData? data)? getBusinesss,
    TResult Function(BusinessData? data)? getBusiness,
    TResult Function(BusinessData? data)? getAccounts,
    required TResult orElse(),
  }) {
    if (getBusinesss != null) {
      return getBusinesss(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetBusinesss value) getBusinesss,
    required TResult Function(GetBusiness value) getBusiness,
    required TResult Function(GetAccounts value) getAccounts,
  }) {
    return getBusinesss(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBusinesss value)? getBusinesss,
    TResult? Function(GetBusiness value)? getBusiness,
    TResult? Function(GetAccounts value)? getAccounts,
  }) {
    return getBusinesss?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBusinesss value)? getBusinesss,
    TResult Function(GetBusiness value)? getBusiness,
    TResult Function(GetAccounts value)? getAccounts,
    required TResult orElse(),
  }) {
    if (getBusinesss != null) {
      return getBusinesss(this);
    }
    return orElse();
  }
}

abstract class GetBusinesss implements BusinessState {
  const factory GetBusinesss({final BusinessData? data}) = _$GetBusinesss;

  @override
  BusinessData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetBusinesssCopyWith<_$GetBusinesss> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBusinessCopyWith<$Res>
    implements $BusinessStateCopyWith<$Res> {
  factory _$$GetBusinessCopyWith(
          _$GetBusiness value, $Res Function(_$GetBusiness) then) =
      __$$GetBusinessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BusinessData? data});

  @override
  $BusinessDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetBusinessCopyWithImpl<$Res>
    extends _$BusinessStateCopyWithImpl<$Res, _$GetBusiness>
    implements _$$GetBusinessCopyWith<$Res> {
  __$$GetBusinessCopyWithImpl(
      _$GetBusiness _value, $Res Function(_$GetBusiness) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetBusiness(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BusinessData?,
    ));
  }
}

/// @nodoc

class _$GetBusiness with DiagnosticableTreeMixin implements GetBusiness {
  const _$GetBusiness({this.data});

  @override
  final BusinessData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusinessState.getBusiness(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BusinessState.getBusiness'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBusiness &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBusinessCopyWith<_$GetBusiness> get copyWith =>
      __$$GetBusinessCopyWithImpl<_$GetBusiness>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BusinessData? data) initial,
    required TResult Function(BusinessData? data) status,
    required TResult Function(BusinessData? data) getBusinesss,
    required TResult Function(BusinessData? data) getBusiness,
    required TResult Function(BusinessData? data) getAccounts,
  }) {
    return getBusiness(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BusinessData? data)? initial,
    TResult? Function(BusinessData? data)? status,
    TResult? Function(BusinessData? data)? getBusinesss,
    TResult? Function(BusinessData? data)? getBusiness,
    TResult? Function(BusinessData? data)? getAccounts,
  }) {
    return getBusiness?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BusinessData? data)? initial,
    TResult Function(BusinessData? data)? status,
    TResult Function(BusinessData? data)? getBusinesss,
    TResult Function(BusinessData? data)? getBusiness,
    TResult Function(BusinessData? data)? getAccounts,
    required TResult orElse(),
  }) {
    if (getBusiness != null) {
      return getBusiness(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetBusinesss value) getBusinesss,
    required TResult Function(GetBusiness value) getBusiness,
    required TResult Function(GetAccounts value) getAccounts,
  }) {
    return getBusiness(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBusinesss value)? getBusinesss,
    TResult? Function(GetBusiness value)? getBusiness,
    TResult? Function(GetAccounts value)? getAccounts,
  }) {
    return getBusiness?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBusinesss value)? getBusinesss,
    TResult Function(GetBusiness value)? getBusiness,
    TResult Function(GetAccounts value)? getAccounts,
    required TResult orElse(),
  }) {
    if (getBusiness != null) {
      return getBusiness(this);
    }
    return orElse();
  }
}

abstract class GetBusiness implements BusinessState {
  const factory GetBusiness({final BusinessData? data}) = _$GetBusiness;

  @override
  BusinessData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetBusinessCopyWith<_$GetBusiness> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAccountsCopyWith<$Res>
    implements $BusinessStateCopyWith<$Res> {
  factory _$$GetAccountsCopyWith(
          _$GetAccounts value, $Res Function(_$GetAccounts) then) =
      __$$GetAccountsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BusinessData? data});

  @override
  $BusinessDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetAccountsCopyWithImpl<$Res>
    extends _$BusinessStateCopyWithImpl<$Res, _$GetAccounts>
    implements _$$GetAccountsCopyWith<$Res> {
  __$$GetAccountsCopyWithImpl(
      _$GetAccounts _value, $Res Function(_$GetAccounts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetAccounts(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BusinessData?,
    ));
  }
}

/// @nodoc

class _$GetAccounts with DiagnosticableTreeMixin implements GetAccounts {
  const _$GetAccounts({this.data});

  @override
  final BusinessData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusinessState.getAccounts(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BusinessState.getAccounts'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccounts &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccountsCopyWith<_$GetAccounts> get copyWith =>
      __$$GetAccountsCopyWithImpl<_$GetAccounts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BusinessData? data) initial,
    required TResult Function(BusinessData? data) status,
    required TResult Function(BusinessData? data) getBusinesss,
    required TResult Function(BusinessData? data) getBusiness,
    required TResult Function(BusinessData? data) getAccounts,
  }) {
    return getAccounts(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BusinessData? data)? initial,
    TResult? Function(BusinessData? data)? status,
    TResult? Function(BusinessData? data)? getBusinesss,
    TResult? Function(BusinessData? data)? getBusiness,
    TResult? Function(BusinessData? data)? getAccounts,
  }) {
    return getAccounts?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BusinessData? data)? initial,
    TResult Function(BusinessData? data)? status,
    TResult Function(BusinessData? data)? getBusinesss,
    TResult Function(BusinessData? data)? getBusiness,
    TResult Function(BusinessData? data)? getAccounts,
    required TResult orElse(),
  }) {
    if (getAccounts != null) {
      return getAccounts(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetBusinesss value) getBusinesss,
    required TResult Function(GetBusiness value) getBusiness,
    required TResult Function(GetAccounts value) getAccounts,
  }) {
    return getAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBusinesss value)? getBusinesss,
    TResult? Function(GetBusiness value)? getBusiness,
    TResult? Function(GetAccounts value)? getAccounts,
  }) {
    return getAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBusinesss value)? getBusinesss,
    TResult Function(GetBusiness value)? getBusiness,
    TResult Function(GetAccounts value)? getAccounts,
    required TResult orElse(),
  }) {
    if (getAccounts != null) {
      return getAccounts(this);
    }
    return orElse();
  }
}

abstract class GetAccounts implements BusinessState {
  const factory GetAccounts({final BusinessData? data}) = _$GetAccounts;

  @override
  BusinessData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAccountsCopyWith<_$GetAccounts> get copyWith =>
      throw _privateConstructorUsedError;
}
