// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connect_ghn_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectGhnStateData {
  StatusType get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<Shop> get locationsGhn =>
      throw _privateConstructorUsedError; // @Default([]) List<Transaction> transactions,
  Shop? get locationGHN => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectGhnStateDataCopyWith<ConnectGhnStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectGhnStateDataCopyWith<$Res> {
  factory $ConnectGhnStateDataCopyWith(
          ConnectGhnStateData value, $Res Function(ConnectGhnStateData) then) =
      _$ConnectGhnStateDataCopyWithImpl<$Res, ConnectGhnStateData>;
  @useResult
  $Res call(
      {StatusType status,
      String error,
      List<Shop> locationsGhn,
      Shop? locationGHN});
}

/// @nodoc
class _$ConnectGhnStateDataCopyWithImpl<$Res, $Val extends ConnectGhnStateData>
    implements $ConnectGhnStateDataCopyWith<$Res> {
  _$ConnectGhnStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? locationsGhn = null,
    Object? locationGHN = freezed,
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
      locationsGhn: null == locationsGhn
          ? _value.locationsGhn
          : locationsGhn // ignore: cast_nullable_to_non_nullable
              as List<Shop>,
      locationGHN: freezed == locationGHN
          ? _value.locationGHN
          : locationGHN // ignore: cast_nullable_to_non_nullable
              as Shop?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectGhnStateDataCopyWith<$Res>
    implements $ConnectGhnStateDataCopyWith<$Res> {
  factory _$$_ConnectGhnStateDataCopyWith(_$_ConnectGhnStateData value,
          $Res Function(_$_ConnectGhnStateData) then) =
      __$$_ConnectGhnStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      String error,
      List<Shop> locationsGhn,
      Shop? locationGHN});
}

/// @nodoc
class __$$_ConnectGhnStateDataCopyWithImpl<$Res>
    extends _$ConnectGhnStateDataCopyWithImpl<$Res, _$_ConnectGhnStateData>
    implements _$$_ConnectGhnStateDataCopyWith<$Res> {
  __$$_ConnectGhnStateDataCopyWithImpl(_$_ConnectGhnStateData _value,
      $Res Function(_$_ConnectGhnStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? locationsGhn = null,
    Object? locationGHN = freezed,
  }) {
    return _then(_$_ConnectGhnStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      locationsGhn: null == locationsGhn
          ? _value._locationsGhn
          : locationsGhn // ignore: cast_nullable_to_non_nullable
              as List<Shop>,
      locationGHN: freezed == locationGHN
          ? _value.locationGHN
          : locationGHN // ignore: cast_nullable_to_non_nullable
              as Shop?,
    ));
  }
}

/// @nodoc

class _$_ConnectGhnStateData implements _ConnectGhnStateData {
  const _$_ConnectGhnStateData(
      {this.status = StatusType.init,
      this.error = '',
      final List<Shop> locationsGhn = const [],
      this.locationGHN})
      : _locationsGhn = locationsGhn;

  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final String error;
  final List<Shop> _locationsGhn;
  @override
  @JsonKey()
  List<Shop> get locationsGhn {
    if (_locationsGhn is EqualUnmodifiableListView) return _locationsGhn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locationsGhn);
  }

// @Default([]) List<Transaction> transactions,
  @override
  final Shop? locationGHN;

  @override
  String toString() {
    return 'ConnectGhnStateData(status: $status, error: $error, locationsGhn: $locationsGhn, locationGHN: $locationGHN)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectGhnStateData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._locationsGhn, _locationsGhn) &&
            (identical(other.locationGHN, locationGHN) ||
                other.locationGHN == locationGHN));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error,
      const DeepCollectionEquality().hash(_locationsGhn), locationGHN);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectGhnStateDataCopyWith<_$_ConnectGhnStateData> get copyWith =>
      __$$_ConnectGhnStateDataCopyWithImpl<_$_ConnectGhnStateData>(
          this, _$identity);
}

abstract class _ConnectGhnStateData implements ConnectGhnStateData {
  const factory _ConnectGhnStateData(
      {final StatusType status,
      final String error,
      final List<Shop> locationsGhn,
      final Shop? locationGHN}) = _$_ConnectGhnStateData;

  @override
  StatusType get status;
  @override
  String get error;
  @override
  List<Shop> get locationsGhn;
  @override // @Default([]) List<Transaction> transactions,
  Shop? get locationGHN;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectGhnStateDataCopyWith<_$_ConnectGhnStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConnectGhnState {
  ConnectGhnStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectGhnStateData? data) initial,
    required TResult Function(ConnectGhnStateData? data) error,
    required TResult Function(ConnectGhnStateData? data) status,
    required TResult Function(ConnectGhnStateData? data) getLocationsGhn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectGhnStateData? data)? initial,
    TResult? Function(ConnectGhnStateData? data)? error,
    TResult? Function(ConnectGhnStateData? data)? status,
    TResult? Function(ConnectGhnStateData? data)? getLocationsGhn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectGhnStateData? data)? initial,
    TResult Function(ConnectGhnStateData? data)? error,
    TResult Function(ConnectGhnStateData? data)? status,
    TResult Function(ConnectGhnStateData? data)? getLocationsGhn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(GetLocationsGhn value) getLocationsGhn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsGhn value)? getLocationsGhn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsGhn value)? getLocationsGhn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectGhnStateCopyWith<ConnectGhnState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectGhnStateCopyWith<$Res> {
  factory $ConnectGhnStateCopyWith(
          ConnectGhnState value, $Res Function(ConnectGhnState) then) =
      _$ConnectGhnStateCopyWithImpl<$Res, ConnectGhnState>;
  @useResult
  $Res call({ConnectGhnStateData? data});

  $ConnectGhnStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ConnectGhnStateCopyWithImpl<$Res, $Val extends ConnectGhnState>
    implements $ConnectGhnStateCopyWith<$Res> {
  _$ConnectGhnStateCopyWithImpl(this._value, this._then);

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
              as ConnectGhnStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConnectGhnStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ConnectGhnStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $ConnectGhnStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectGhnStateData? data});

  @override
  $ConnectGhnStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ConnectGhnStateCopyWithImpl<$Res, _$Initial>
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
              as ConnectGhnStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final ConnectGhnStateData? data;

  @override
  String toString() {
    return 'ConnectGhnState.initial(data: $data)';
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
    required TResult Function(ConnectGhnStateData? data) initial,
    required TResult Function(ConnectGhnStateData? data) error,
    required TResult Function(ConnectGhnStateData? data) status,
    required TResult Function(ConnectGhnStateData? data) getLocationsGhn,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectGhnStateData? data)? initial,
    TResult? Function(ConnectGhnStateData? data)? error,
    TResult? Function(ConnectGhnStateData? data)? status,
    TResult? Function(ConnectGhnStateData? data)? getLocationsGhn,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectGhnStateData? data)? initial,
    TResult Function(ConnectGhnStateData? data)? error,
    TResult Function(ConnectGhnStateData? data)? status,
    TResult Function(ConnectGhnStateData? data)? getLocationsGhn,
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
    required TResult Function(GetLocationsGhn value) getLocationsGhn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsGhn value)? getLocationsGhn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsGhn value)? getLocationsGhn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ConnectGhnState {
  const factory Initial({final ConnectGhnStateData? data}) = _$Initial;

  @override
  ConnectGhnStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res>
    implements $ConnectGhnStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectGhnStateData? data});

  @override
  $ConnectGhnStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$ConnectGhnStateCopyWithImpl<$Res, _$Error>
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
              as ConnectGhnStateData?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.data});

  @override
  final ConnectGhnStateData? data;

  @override
  String toString() {
    return 'ConnectGhnState.error(data: $data)';
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
    required TResult Function(ConnectGhnStateData? data) initial,
    required TResult Function(ConnectGhnStateData? data) error,
    required TResult Function(ConnectGhnStateData? data) status,
    required TResult Function(ConnectGhnStateData? data) getLocationsGhn,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectGhnStateData? data)? initial,
    TResult? Function(ConnectGhnStateData? data)? error,
    TResult? Function(ConnectGhnStateData? data)? status,
    TResult? Function(ConnectGhnStateData? data)? getLocationsGhn,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectGhnStateData? data)? initial,
    TResult Function(ConnectGhnStateData? data)? error,
    TResult Function(ConnectGhnStateData? data)? status,
    TResult Function(ConnectGhnStateData? data)? getLocationsGhn,
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
    required TResult Function(GetLocationsGhn value) getLocationsGhn,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsGhn value)? getLocationsGhn,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsGhn value)? getLocationsGhn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ConnectGhnState {
  const factory Error({final ConnectGhnStateData? data}) = _$Error;

  @override
  ConnectGhnStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $ConnectGhnStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectGhnStateData? data});

  @override
  $ConnectGhnStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$ConnectGhnStateCopyWithImpl<$Res, _$Status>
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
              as ConnectGhnStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final ConnectGhnStateData? data;

  @override
  String toString() {
    return 'ConnectGhnState.status(data: $data)';
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
    required TResult Function(ConnectGhnStateData? data) initial,
    required TResult Function(ConnectGhnStateData? data) error,
    required TResult Function(ConnectGhnStateData? data) status,
    required TResult Function(ConnectGhnStateData? data) getLocationsGhn,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectGhnStateData? data)? initial,
    TResult? Function(ConnectGhnStateData? data)? error,
    TResult? Function(ConnectGhnStateData? data)? status,
    TResult? Function(ConnectGhnStateData? data)? getLocationsGhn,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectGhnStateData? data)? initial,
    TResult Function(ConnectGhnStateData? data)? error,
    TResult Function(ConnectGhnStateData? data)? status,
    TResult Function(ConnectGhnStateData? data)? getLocationsGhn,
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
    required TResult Function(GetLocationsGhn value) getLocationsGhn,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsGhn value)? getLocationsGhn,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsGhn value)? getLocationsGhn,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements ConnectGhnState {
  const factory Status({final ConnectGhnStateData? data}) = _$Status;

  @override
  ConnectGhnStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLocationsGhnCopyWith<$Res>
    implements $ConnectGhnStateCopyWith<$Res> {
  factory _$$GetLocationsGhnCopyWith(
          _$GetLocationsGhn value, $Res Function(_$GetLocationsGhn) then) =
      __$$GetLocationsGhnCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectGhnStateData? data});

  @override
  $ConnectGhnStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetLocationsGhnCopyWithImpl<$Res>
    extends _$ConnectGhnStateCopyWithImpl<$Res, _$GetLocationsGhn>
    implements _$$GetLocationsGhnCopyWith<$Res> {
  __$$GetLocationsGhnCopyWithImpl(
      _$GetLocationsGhn _value, $Res Function(_$GetLocationsGhn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetLocationsGhn(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConnectGhnStateData?,
    ));
  }
}

/// @nodoc

class _$GetLocationsGhn implements GetLocationsGhn {
  const _$GetLocationsGhn({this.data});

  @override
  final ConnectGhnStateData? data;

  @override
  String toString() {
    return 'ConnectGhnState.getLocationsGhn(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocationsGhn &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLocationsGhnCopyWith<_$GetLocationsGhn> get copyWith =>
      __$$GetLocationsGhnCopyWithImpl<_$GetLocationsGhn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectGhnStateData? data) initial,
    required TResult Function(ConnectGhnStateData? data) error,
    required TResult Function(ConnectGhnStateData? data) status,
    required TResult Function(ConnectGhnStateData? data) getLocationsGhn,
  }) {
    return getLocationsGhn(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectGhnStateData? data)? initial,
    TResult? Function(ConnectGhnStateData? data)? error,
    TResult? Function(ConnectGhnStateData? data)? status,
    TResult? Function(ConnectGhnStateData? data)? getLocationsGhn,
  }) {
    return getLocationsGhn?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectGhnStateData? data)? initial,
    TResult Function(ConnectGhnStateData? data)? error,
    TResult Function(ConnectGhnStateData? data)? status,
    TResult Function(ConnectGhnStateData? data)? getLocationsGhn,
    required TResult orElse(),
  }) {
    if (getLocationsGhn != null) {
      return getLocationsGhn(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(GetLocationsGhn value) getLocationsGhn,
  }) {
    return getLocationsGhn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsGhn value)? getLocationsGhn,
  }) {
    return getLocationsGhn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsGhn value)? getLocationsGhn,
    required TResult orElse(),
  }) {
    if (getLocationsGhn != null) {
      return getLocationsGhn(this);
    }
    return orElse();
  }
}

abstract class GetLocationsGhn implements ConnectGhnState {
  const factory GetLocationsGhn({final ConnectGhnStateData? data}) =
      _$GetLocationsGhn;

  @override
  ConnectGhnStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetLocationsGhnCopyWith<_$GetLocationsGhn> get copyWith =>
      throw _privateConstructorUsedError;
}
