// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_status_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddStatusOrderStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStatusOrderStateDataCopyWith<AddStatusOrderStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStatusOrderStateDataCopyWith<$Res> {
  factory $AddStatusOrderStateDataCopyWith(AddStatusOrderStateData value,
          $Res Function(AddStatusOrderStateData) then) =
      _$AddStatusOrderStateDataCopyWithImpl<$Res, AddStatusOrderStateData>;
  @useResult
  $Res call({String error, StatusType status});
}

/// @nodoc
class _$AddStatusOrderStateDataCopyWithImpl<$Res,
        $Val extends AddStatusOrderStateData>
    implements $AddStatusOrderStateDataCopyWith<$Res> {
  _$AddStatusOrderStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddStatusOrderStateDataCopyWith<$Res>
    implements $AddStatusOrderStateDataCopyWith<$Res> {
  factory _$$_AddStatusOrderStateDataCopyWith(_$_AddStatusOrderStateData value,
          $Res Function(_$_AddStatusOrderStateData) then) =
      __$$_AddStatusOrderStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, StatusType status});
}

/// @nodoc
class __$$_AddStatusOrderStateDataCopyWithImpl<$Res>
    extends _$AddStatusOrderStateDataCopyWithImpl<$Res,
        _$_AddStatusOrderStateData>
    implements _$$_AddStatusOrderStateDataCopyWith<$Res> {
  __$$_AddStatusOrderStateDataCopyWithImpl(_$_AddStatusOrderStateData _value,
      $Res Function(_$_AddStatusOrderStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
  }) {
    return _then(_$_AddStatusOrderStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
    ));
  }
}

/// @nodoc

class _$_AddStatusOrderStateData implements _AddStatusOrderStateData {
  const _$_AddStatusOrderStateData(
      {this.error = '', this.status = StatusType.init});

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;

  @override
  String toString() {
    return 'AddStatusOrderStateData(error: $error, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddStatusOrderStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddStatusOrderStateDataCopyWith<_$_AddStatusOrderStateData>
      get copyWith =>
          __$$_AddStatusOrderStateDataCopyWithImpl<_$_AddStatusOrderStateData>(
              this, _$identity);
}

abstract class _AddStatusOrderStateData implements AddStatusOrderStateData {
  const factory _AddStatusOrderStateData(
      {final String error,
      final StatusType status}) = _$_AddStatusOrderStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  @JsonKey(ignore: true)
  _$$_AddStatusOrderStateDataCopyWith<_$_AddStatusOrderStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddStatusOrderState {
  AddStatusOrderStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddStatusOrderStateData? data) initial,
    required TResult Function(AddStatusOrderStateData? data) error,
    required TResult Function(AddStatusOrderStateData? data) status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddStatusOrderStateData? data)? initial,
    TResult? Function(AddStatusOrderStateData? data)? error,
    TResult? Function(AddStatusOrderStateData? data)? status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddStatusOrderStateData? data)? initial,
    TResult Function(AddStatusOrderStateData? data)? error,
    TResult Function(AddStatusOrderStateData? data)? status,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStatusOrderStateCopyWith<AddStatusOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStatusOrderStateCopyWith<$Res> {
  factory $AddStatusOrderStateCopyWith(
          AddStatusOrderState value, $Res Function(AddStatusOrderState) then) =
      _$AddStatusOrderStateCopyWithImpl<$Res, AddStatusOrderState>;
  @useResult
  $Res call({AddStatusOrderStateData? data});

  $AddStatusOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddStatusOrderStateCopyWithImpl<$Res, $Val extends AddStatusOrderState>
    implements $AddStatusOrderStateCopyWith<$Res> {
  _$AddStatusOrderStateCopyWithImpl(this._value, this._then);

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
              as AddStatusOrderStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddStatusOrderStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddStatusOrderStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $AddStatusOrderStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddStatusOrderStateData? data});

  @override
  $AddStatusOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddStatusOrderStateCopyWithImpl<$Res, _$Initial>
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
              as AddStatusOrderStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final AddStatusOrderStateData? data;

  @override
  String toString() {
    return 'AddStatusOrderState.initial(data: $data)';
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
    required TResult Function(AddStatusOrderStateData? data) initial,
    required TResult Function(AddStatusOrderStateData? data) error,
    required TResult Function(AddStatusOrderStateData? data) status,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddStatusOrderStateData? data)? initial,
    TResult? Function(AddStatusOrderStateData? data)? error,
    TResult? Function(AddStatusOrderStateData? data)? status,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddStatusOrderStateData? data)? initial,
    TResult Function(AddStatusOrderStateData? data)? error,
    TResult Function(AddStatusOrderStateData? data)? status,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddStatusOrderState {
  const factory Initial({final AddStatusOrderStateData? data}) = _$Initial;

  @override
  AddStatusOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res>
    implements $AddStatusOrderStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddStatusOrderStateData? data});

  @override
  $AddStatusOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$AddStatusOrderStateCopyWithImpl<$Res, _$Error>
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
              as AddStatusOrderStateData?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.data});

  @override
  final AddStatusOrderStateData? data;

  @override
  String toString() {
    return 'AddStatusOrderState.error(data: $data)';
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
    required TResult Function(AddStatusOrderStateData? data) initial,
    required TResult Function(AddStatusOrderStateData? data) error,
    required TResult Function(AddStatusOrderStateData? data) status,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddStatusOrderStateData? data)? initial,
    TResult? Function(AddStatusOrderStateData? data)? error,
    TResult? Function(AddStatusOrderStateData? data)? status,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddStatusOrderStateData? data)? initial,
    TResult Function(AddStatusOrderStateData? data)? error,
    TResult Function(AddStatusOrderStateData? data)? status,
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
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AddStatusOrderState {
  const factory Error({final AddStatusOrderStateData? data}) = _$Error;

  @override
  AddStatusOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $AddStatusOrderStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddStatusOrderStateData? data});

  @override
  $AddStatusOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$AddStatusOrderStateCopyWithImpl<$Res, _$Status>
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
              as AddStatusOrderStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final AddStatusOrderStateData? data;

  @override
  String toString() {
    return 'AddStatusOrderState.status(data: $data)';
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
    required TResult Function(AddStatusOrderStateData? data) initial,
    required TResult Function(AddStatusOrderStateData? data) error,
    required TResult Function(AddStatusOrderStateData? data) status,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddStatusOrderStateData? data)? initial,
    TResult? Function(AddStatusOrderStateData? data)? error,
    TResult? Function(AddStatusOrderStateData? data)? status,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddStatusOrderStateData? data)? initial,
    TResult Function(AddStatusOrderStateData? data)? error,
    TResult Function(AddStatusOrderStateData? data)? status,
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
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements AddStatusOrderState {
  const factory Status({final AddStatusOrderStateData? data}) = _$Status;

  @override
  AddStatusOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}
