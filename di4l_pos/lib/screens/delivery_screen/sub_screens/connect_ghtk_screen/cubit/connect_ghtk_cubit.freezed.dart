// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connect_ghtk_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectGhtkStateData {
  StatusType get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<LocationGHTK> get locationsGHTK =>
      throw _privateConstructorUsedError; // @Default([]) List<Transaction> transactions,
  LocationGHTK? get locationGHTK => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectGhtkStateDataCopyWith<ConnectGhtkStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectGhtkStateDataCopyWith<$Res> {
  factory $ConnectGhtkStateDataCopyWith(ConnectGhtkStateData value,
          $Res Function(ConnectGhtkStateData) then) =
      _$ConnectGhtkStateDataCopyWithImpl<$Res, ConnectGhtkStateData>;
  @useResult
  $Res call(
      {StatusType status,
      String error,
      List<LocationGHTK> locationsGHTK,
      LocationGHTK? locationGHTK});
}

/// @nodoc
class _$ConnectGhtkStateDataCopyWithImpl<$Res,
        $Val extends ConnectGhtkStateData>
    implements $ConnectGhtkStateDataCopyWith<$Res> {
  _$ConnectGhtkStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? locationsGHTK = null,
    Object? locationGHTK = freezed,
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
      locationsGHTK: null == locationsGHTK
          ? _value.locationsGHTK
          : locationsGHTK // ignore: cast_nullable_to_non_nullable
              as List<LocationGHTK>,
      locationGHTK: freezed == locationGHTK
          ? _value.locationGHTK
          : locationGHTK // ignore: cast_nullable_to_non_nullable
              as LocationGHTK?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectGhtkStateDataCopyWith<$Res>
    implements $ConnectGhtkStateDataCopyWith<$Res> {
  factory _$$_ConnectGhtkStateDataCopyWith(_$_ConnectGhtkStateData value,
          $Res Function(_$_ConnectGhtkStateData) then) =
      __$$_ConnectGhtkStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      String error,
      List<LocationGHTK> locationsGHTK,
      LocationGHTK? locationGHTK});
}

/// @nodoc
class __$$_ConnectGhtkStateDataCopyWithImpl<$Res>
    extends _$ConnectGhtkStateDataCopyWithImpl<$Res, _$_ConnectGhtkStateData>
    implements _$$_ConnectGhtkStateDataCopyWith<$Res> {
  __$$_ConnectGhtkStateDataCopyWithImpl(_$_ConnectGhtkStateData _value,
      $Res Function(_$_ConnectGhtkStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? locationsGHTK = null,
    Object? locationGHTK = freezed,
  }) {
    return _then(_$_ConnectGhtkStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      locationsGHTK: null == locationsGHTK
          ? _value._locationsGHTK
          : locationsGHTK // ignore: cast_nullable_to_non_nullable
              as List<LocationGHTK>,
      locationGHTK: freezed == locationGHTK
          ? _value.locationGHTK
          : locationGHTK // ignore: cast_nullable_to_non_nullable
              as LocationGHTK?,
    ));
  }
}

/// @nodoc

class _$_ConnectGhtkStateData implements _ConnectGhtkStateData {
  const _$_ConnectGhtkStateData(
      {this.status = StatusType.init,
      this.error = '',
      final List<LocationGHTK> locationsGHTK = const [],
      this.locationGHTK})
      : _locationsGHTK = locationsGHTK;

  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final String error;
  final List<LocationGHTK> _locationsGHTK;
  @override
  @JsonKey()
  List<LocationGHTK> get locationsGHTK {
    if (_locationsGHTK is EqualUnmodifiableListView) return _locationsGHTK;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locationsGHTK);
  }

// @Default([]) List<Transaction> transactions,
  @override
  final LocationGHTK? locationGHTK;

  @override
  String toString() {
    return 'ConnectGhtkStateData(status: $status, error: $error, locationsGHTK: $locationsGHTK, locationGHTK: $locationGHTK)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectGhtkStateData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._locationsGHTK, _locationsGHTK) &&
            (identical(other.locationGHTK, locationGHTK) ||
                other.locationGHTK == locationGHTK));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error,
      const DeepCollectionEquality().hash(_locationsGHTK), locationGHTK);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectGhtkStateDataCopyWith<_$_ConnectGhtkStateData> get copyWith =>
      __$$_ConnectGhtkStateDataCopyWithImpl<_$_ConnectGhtkStateData>(
          this, _$identity);
}

abstract class _ConnectGhtkStateData implements ConnectGhtkStateData {
  const factory _ConnectGhtkStateData(
      {final StatusType status,
      final String error,
      final List<LocationGHTK> locationsGHTK,
      final LocationGHTK? locationGHTK}) = _$_ConnectGhtkStateData;

  @override
  StatusType get status;
  @override
  String get error;
  @override
  List<LocationGHTK> get locationsGHTK;
  @override // @Default([]) List<Transaction> transactions,
  LocationGHTK? get locationGHTK;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectGhtkStateDataCopyWith<_$_ConnectGhtkStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConnectGhtkState {
  ConnectGhtkStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectGhtkStateData? data) initial,
    required TResult Function(ConnectGhtkStateData? data) error,
    required TResult Function(ConnectGhtkStateData? data) status,
    required TResult Function(ConnectGhtkStateData? data) getLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectGhtkStateData? data)? initial,
    TResult? Function(ConnectGhtkStateData? data)? error,
    TResult? Function(ConnectGhtkStateData? data)? status,
    TResult? Function(ConnectGhtkStateData? data)? getLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectGhtkStateData? data)? initial,
    TResult Function(ConnectGhtkStateData? data)? error,
    TResult Function(ConnectGhtkStateData? data)? status,
    TResult Function(ConnectGhtkStateData? data)? getLocations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(GetLocationsGHTK value) getLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsGHTK value)? getLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsGHTK value)? getLocations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectGhtkStateCopyWith<ConnectGhtkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectGhtkStateCopyWith<$Res> {
  factory $ConnectGhtkStateCopyWith(
          ConnectGhtkState value, $Res Function(ConnectGhtkState) then) =
      _$ConnectGhtkStateCopyWithImpl<$Res, ConnectGhtkState>;
  @useResult
  $Res call({ConnectGhtkStateData? data});

  $ConnectGhtkStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ConnectGhtkStateCopyWithImpl<$Res, $Val extends ConnectGhtkState>
    implements $ConnectGhtkStateCopyWith<$Res> {
  _$ConnectGhtkStateCopyWithImpl(this._value, this._then);

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
              as ConnectGhtkStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConnectGhtkStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ConnectGhtkStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $ConnectGhtkStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectGhtkStateData? data});

  @override
  $ConnectGhtkStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ConnectGhtkStateCopyWithImpl<$Res, _$Initial>
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
              as ConnectGhtkStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final ConnectGhtkStateData? data;

  @override
  String toString() {
    return 'ConnectGhtkState.initial(data: $data)';
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
    required TResult Function(ConnectGhtkStateData? data) initial,
    required TResult Function(ConnectGhtkStateData? data) error,
    required TResult Function(ConnectGhtkStateData? data) status,
    required TResult Function(ConnectGhtkStateData? data) getLocations,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectGhtkStateData? data)? initial,
    TResult? Function(ConnectGhtkStateData? data)? error,
    TResult? Function(ConnectGhtkStateData? data)? status,
    TResult? Function(ConnectGhtkStateData? data)? getLocations,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectGhtkStateData? data)? initial,
    TResult Function(ConnectGhtkStateData? data)? error,
    TResult Function(ConnectGhtkStateData? data)? status,
    TResult Function(ConnectGhtkStateData? data)? getLocations,
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
    required TResult Function(GetLocationsGHTK value) getLocations,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsGHTK value)? getLocations,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsGHTK value)? getLocations,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ConnectGhtkState {
  const factory Initial({final ConnectGhtkStateData? data}) = _$Initial;

  @override
  ConnectGhtkStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res>
    implements $ConnectGhtkStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectGhtkStateData? data});

  @override
  $ConnectGhtkStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$ConnectGhtkStateCopyWithImpl<$Res, _$Error>
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
              as ConnectGhtkStateData?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.data});

  @override
  final ConnectGhtkStateData? data;

  @override
  String toString() {
    return 'ConnectGhtkState.error(data: $data)';
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
    required TResult Function(ConnectGhtkStateData? data) initial,
    required TResult Function(ConnectGhtkStateData? data) error,
    required TResult Function(ConnectGhtkStateData? data) status,
    required TResult Function(ConnectGhtkStateData? data) getLocations,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectGhtkStateData? data)? initial,
    TResult? Function(ConnectGhtkStateData? data)? error,
    TResult? Function(ConnectGhtkStateData? data)? status,
    TResult? Function(ConnectGhtkStateData? data)? getLocations,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectGhtkStateData? data)? initial,
    TResult Function(ConnectGhtkStateData? data)? error,
    TResult Function(ConnectGhtkStateData? data)? status,
    TResult Function(ConnectGhtkStateData? data)? getLocations,
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
    required TResult Function(GetLocationsGHTK value) getLocations,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsGHTK value)? getLocations,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsGHTK value)? getLocations,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ConnectGhtkState {
  const factory Error({final ConnectGhtkStateData? data}) = _$Error;

  @override
  ConnectGhtkStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $ConnectGhtkStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectGhtkStateData? data});

  @override
  $ConnectGhtkStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$ConnectGhtkStateCopyWithImpl<$Res, _$Status>
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
              as ConnectGhtkStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final ConnectGhtkStateData? data;

  @override
  String toString() {
    return 'ConnectGhtkState.status(data: $data)';
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
    required TResult Function(ConnectGhtkStateData? data) initial,
    required TResult Function(ConnectGhtkStateData? data) error,
    required TResult Function(ConnectGhtkStateData? data) status,
    required TResult Function(ConnectGhtkStateData? data) getLocations,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectGhtkStateData? data)? initial,
    TResult? Function(ConnectGhtkStateData? data)? error,
    TResult? Function(ConnectGhtkStateData? data)? status,
    TResult? Function(ConnectGhtkStateData? data)? getLocations,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectGhtkStateData? data)? initial,
    TResult Function(ConnectGhtkStateData? data)? error,
    TResult Function(ConnectGhtkStateData? data)? status,
    TResult Function(ConnectGhtkStateData? data)? getLocations,
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
    required TResult Function(GetLocationsGHTK value) getLocations,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsGHTK value)? getLocations,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsGHTK value)? getLocations,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements ConnectGhtkState {
  const factory Status({final ConnectGhtkStateData? data}) = _$Status;

  @override
  ConnectGhtkStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLocationsGHTKCopyWith<$Res>
    implements $ConnectGhtkStateCopyWith<$Res> {
  factory _$$GetLocationsGHTKCopyWith(
          _$GetLocationsGHTK value, $Res Function(_$GetLocationsGHTK) then) =
      __$$GetLocationsGHTKCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectGhtkStateData? data});

  @override
  $ConnectGhtkStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetLocationsGHTKCopyWithImpl<$Res>
    extends _$ConnectGhtkStateCopyWithImpl<$Res, _$GetLocationsGHTK>
    implements _$$GetLocationsGHTKCopyWith<$Res> {
  __$$GetLocationsGHTKCopyWithImpl(
      _$GetLocationsGHTK _value, $Res Function(_$GetLocationsGHTK) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetLocationsGHTK(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConnectGhtkStateData?,
    ));
  }
}

/// @nodoc

class _$GetLocationsGHTK implements GetLocationsGHTK {
  const _$GetLocationsGHTK({this.data});

  @override
  final ConnectGhtkStateData? data;

  @override
  String toString() {
    return 'ConnectGhtkState.getLocations(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocationsGHTK &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLocationsGHTKCopyWith<_$GetLocationsGHTK> get copyWith =>
      __$$GetLocationsGHTKCopyWithImpl<_$GetLocationsGHTK>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectGhtkStateData? data) initial,
    required TResult Function(ConnectGhtkStateData? data) error,
    required TResult Function(ConnectGhtkStateData? data) status,
    required TResult Function(ConnectGhtkStateData? data) getLocations,
  }) {
    return getLocations(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectGhtkStateData? data)? initial,
    TResult? Function(ConnectGhtkStateData? data)? error,
    TResult? Function(ConnectGhtkStateData? data)? status,
    TResult? Function(ConnectGhtkStateData? data)? getLocations,
  }) {
    return getLocations?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectGhtkStateData? data)? initial,
    TResult Function(ConnectGhtkStateData? data)? error,
    TResult Function(ConnectGhtkStateData? data)? status,
    TResult Function(ConnectGhtkStateData? data)? getLocations,
    required TResult orElse(),
  }) {
    if (getLocations != null) {
      return getLocations(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(GetLocationsGHTK value) getLocations,
  }) {
    return getLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsGHTK value)? getLocations,
  }) {
    return getLocations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsGHTK value)? getLocations,
    required TResult orElse(),
  }) {
    if (getLocations != null) {
      return getLocations(this);
    }
    return orElse();
  }
}

abstract class GetLocationsGHTK implements ConnectGhtkState {
  const factory GetLocationsGHTK({final ConnectGhtkStateData? data}) =
      _$GetLocationsGHTK;

  @override
  ConnectGhtkStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetLocationsGHTKCopyWith<_$GetLocationsGHTK> get copyWith =>
      throw _privateConstructorUsedError;
}
