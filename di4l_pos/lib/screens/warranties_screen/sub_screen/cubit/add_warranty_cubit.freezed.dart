// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_warranty_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddWarrantyStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  String get payType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddWarrantyStateDataCopyWith<AddWarrantyStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddWarrantyStateDataCopyWith<$Res> {
  factory $AddWarrantyStateDataCopyWith(AddWarrantyStateData value,
          $Res Function(AddWarrantyStateData) then) =
      _$AddWarrantyStateDataCopyWithImpl<$Res, AddWarrantyStateData>;
  @useResult
  $Res call({String error, StatusType status, String payType});
}

/// @nodoc
class _$AddWarrantyStateDataCopyWithImpl<$Res,
        $Val extends AddWarrantyStateData>
    implements $AddWarrantyStateDataCopyWith<$Res> {
  _$AddWarrantyStateDataCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddWarrantyStateDataCopyWith<$Res>
    implements $AddWarrantyStateDataCopyWith<$Res> {
  factory _$$_AddWarrantyStateDataCopyWith(_$_AddWarrantyStateData value,
          $Res Function(_$_AddWarrantyStateData) then) =
      __$$_AddWarrantyStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, StatusType status, String payType});
}

/// @nodoc
class __$$_AddWarrantyStateDataCopyWithImpl<$Res>
    extends _$AddWarrantyStateDataCopyWithImpl<$Res, _$_AddWarrantyStateData>
    implements _$$_AddWarrantyStateDataCopyWith<$Res> {
  __$$_AddWarrantyStateDataCopyWithImpl(_$_AddWarrantyStateData _value,
      $Res Function(_$_AddWarrantyStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? payType = null,
  }) {
    return _then(_$_AddWarrantyStateData(
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
    ));
  }
}

/// @nodoc

class _$_AddWarrantyStateData implements _AddWarrantyStateData {
  const _$_AddWarrantyStateData(
      {this.error = '', this.status = StatusType.init, this.payType = 'days'});

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
  String toString() {
    return 'AddWarrantyStateData(error: $error, status: $status, payType: $payType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddWarrantyStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.payType, payType) || other.payType == payType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, status, payType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddWarrantyStateDataCopyWith<_$_AddWarrantyStateData> get copyWith =>
      __$$_AddWarrantyStateDataCopyWithImpl<_$_AddWarrantyStateData>(
          this, _$identity);
}

abstract class _AddWarrantyStateData implements AddWarrantyStateData {
  const factory _AddWarrantyStateData(
      {final String error,
      final StatusType status,
      final String payType}) = _$_AddWarrantyStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  String get payType;
  @override
  @JsonKey(ignore: true)
  _$$_AddWarrantyStateDataCopyWith<_$_AddWarrantyStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddWarrantyState {
  AddWarrantyStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddWarrantyStateData? data) initial,
    required TResult Function(AddWarrantyStateData? data) error,
    required TResult Function(AddWarrantyStateData? data) status,
    required TResult Function(AddWarrantyStateData? data) payType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddWarrantyStateData? data)? initial,
    TResult? Function(AddWarrantyStateData? data)? error,
    TResult? Function(AddWarrantyStateData? data)? status,
    TResult? Function(AddWarrantyStateData? data)? payType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddWarrantyStateData? data)? initial,
    TResult Function(AddWarrantyStateData? data)? error,
    TResult Function(AddWarrantyStateData? data)? status,
    TResult Function(AddWarrantyStateData? data)? payType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(PayType value) payType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(PayType value)? payType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(PayType value)? payType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddWarrantyStateCopyWith<AddWarrantyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddWarrantyStateCopyWith<$Res> {
  factory $AddWarrantyStateCopyWith(
          AddWarrantyState value, $Res Function(AddWarrantyState) then) =
      _$AddWarrantyStateCopyWithImpl<$Res, AddWarrantyState>;
  @useResult
  $Res call({AddWarrantyStateData? data});

  $AddWarrantyStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddWarrantyStateCopyWithImpl<$Res, $Val extends AddWarrantyState>
    implements $AddWarrantyStateCopyWith<$Res> {
  _$AddWarrantyStateCopyWithImpl(this._value, this._then);

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
              as AddWarrantyStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddWarrantyStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddWarrantyStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $AddWarrantyStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddWarrantyStateData? data});

  @override
  $AddWarrantyStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddWarrantyStateCopyWithImpl<$Res, _$Initial>
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
              as AddWarrantyStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final AddWarrantyStateData? data;

  @override
  String toString() {
    return 'AddWarrantyState.initial(data: $data)';
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
    required TResult Function(AddWarrantyStateData? data) initial,
    required TResult Function(AddWarrantyStateData? data) error,
    required TResult Function(AddWarrantyStateData? data) status,
    required TResult Function(AddWarrantyStateData? data) payType,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddWarrantyStateData? data)? initial,
    TResult? Function(AddWarrantyStateData? data)? error,
    TResult? Function(AddWarrantyStateData? data)? status,
    TResult? Function(AddWarrantyStateData? data)? payType,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddWarrantyStateData? data)? initial,
    TResult Function(AddWarrantyStateData? data)? error,
    TResult Function(AddWarrantyStateData? data)? status,
    TResult Function(AddWarrantyStateData? data)? payType,
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
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddWarrantyState {
  const factory Initial({final AddWarrantyStateData? data}) = _$Initial;

  @override
  AddWarrantyStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res>
    implements $AddWarrantyStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddWarrantyStateData? data});

  @override
  $AddWarrantyStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$AddWarrantyStateCopyWithImpl<$Res, _$Error>
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
              as AddWarrantyStateData?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.data});

  @override
  final AddWarrantyStateData? data;

  @override
  String toString() {
    return 'AddWarrantyState.error(data: $data)';
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
    required TResult Function(AddWarrantyStateData? data) initial,
    required TResult Function(AddWarrantyStateData? data) error,
    required TResult Function(AddWarrantyStateData? data) status,
    required TResult Function(AddWarrantyStateData? data) payType,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddWarrantyStateData? data)? initial,
    TResult? Function(AddWarrantyStateData? data)? error,
    TResult? Function(AddWarrantyStateData? data)? status,
    TResult? Function(AddWarrantyStateData? data)? payType,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddWarrantyStateData? data)? initial,
    TResult Function(AddWarrantyStateData? data)? error,
    TResult Function(AddWarrantyStateData? data)? status,
    TResult Function(AddWarrantyStateData? data)? payType,
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
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AddWarrantyState {
  const factory Error({final AddWarrantyStateData? data}) = _$Error;

  @override
  AddWarrantyStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $AddWarrantyStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddWarrantyStateData? data});

  @override
  $AddWarrantyStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$AddWarrantyStateCopyWithImpl<$Res, _$Status>
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
              as AddWarrantyStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final AddWarrantyStateData? data;

  @override
  String toString() {
    return 'AddWarrantyState.status(data: $data)';
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
    required TResult Function(AddWarrantyStateData? data) initial,
    required TResult Function(AddWarrantyStateData? data) error,
    required TResult Function(AddWarrantyStateData? data) status,
    required TResult Function(AddWarrantyStateData? data) payType,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddWarrantyStateData? data)? initial,
    TResult? Function(AddWarrantyStateData? data)? error,
    TResult? Function(AddWarrantyStateData? data)? status,
    TResult? Function(AddWarrantyStateData? data)? payType,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddWarrantyStateData? data)? initial,
    TResult Function(AddWarrantyStateData? data)? error,
    TResult Function(AddWarrantyStateData? data)? status,
    TResult Function(AddWarrantyStateData? data)? payType,
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
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements AddWarrantyState {
  const factory Status({final AddWarrantyStateData? data}) = _$Status;

  @override
  AddWarrantyStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayTypeCopyWith<$Res>
    implements $AddWarrantyStateCopyWith<$Res> {
  factory _$$PayTypeCopyWith(_$PayType value, $Res Function(_$PayType) then) =
      __$$PayTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddWarrantyStateData? data});

  @override
  $AddWarrantyStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PayTypeCopyWithImpl<$Res>
    extends _$AddWarrantyStateCopyWithImpl<$Res, _$PayType>
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
              as AddWarrantyStateData?,
    ));
  }
}

/// @nodoc

class _$PayType implements PayType {
  const _$PayType({this.data});

  @override
  final AddWarrantyStateData? data;

  @override
  String toString() {
    return 'AddWarrantyState.payType(data: $data)';
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
    required TResult Function(AddWarrantyStateData? data) initial,
    required TResult Function(AddWarrantyStateData? data) error,
    required TResult Function(AddWarrantyStateData? data) status,
    required TResult Function(AddWarrantyStateData? data) payType,
  }) {
    return payType(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddWarrantyStateData? data)? initial,
    TResult? Function(AddWarrantyStateData? data)? error,
    TResult? Function(AddWarrantyStateData? data)? status,
    TResult? Function(AddWarrantyStateData? data)? payType,
  }) {
    return payType?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddWarrantyStateData? data)? initial,
    TResult Function(AddWarrantyStateData? data)? error,
    TResult Function(AddWarrantyStateData? data)? status,
    TResult Function(AddWarrantyStateData? data)? payType,
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
    required TResult orElse(),
  }) {
    if (payType != null) {
      return payType(this);
    }
    return orElse();
  }
}

abstract class PayType implements AddWarrantyState {
  const factory PayType({final AddWarrantyStateData? data}) = _$PayType;

  @override
  AddWarrantyStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$PayTypeCopyWith<_$PayType> get copyWith =>
      throw _privateConstructorUsedError;
}
