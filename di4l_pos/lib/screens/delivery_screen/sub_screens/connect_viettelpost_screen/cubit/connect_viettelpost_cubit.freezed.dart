// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connect_viettelpost_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectViettelpostStateData {
  StatusType get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<LocationViettelPost> get locationsViettelPost =>
      throw _privateConstructorUsedError;
  String get token =>
      throw _privateConstructorUsedError; // @Default([]) List<Transaction> transactions,
  LocationViettelPost? get locationViettelPost =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectViettelpostStateDataCopyWith<ConnectViettelpostStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectViettelpostStateDataCopyWith<$Res> {
  factory $ConnectViettelpostStateDataCopyWith(
          ConnectViettelpostStateData value,
          $Res Function(ConnectViettelpostStateData) then) =
      _$ConnectViettelpostStateDataCopyWithImpl<$Res,
          ConnectViettelpostStateData>;
  @useResult
  $Res call(
      {StatusType status,
      String error,
      List<LocationViettelPost> locationsViettelPost,
      String token,
      LocationViettelPost? locationViettelPost});
}

/// @nodoc
class _$ConnectViettelpostStateDataCopyWithImpl<$Res,
        $Val extends ConnectViettelpostStateData>
    implements $ConnectViettelpostStateDataCopyWith<$Res> {
  _$ConnectViettelpostStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? locationsViettelPost = null,
    Object? token = null,
    Object? locationViettelPost = freezed,
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
      locationsViettelPost: null == locationsViettelPost
          ? _value.locationsViettelPost
          : locationsViettelPost // ignore: cast_nullable_to_non_nullable
              as List<LocationViettelPost>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      locationViettelPost: freezed == locationViettelPost
          ? _value.locationViettelPost
          : locationViettelPost // ignore: cast_nullable_to_non_nullable
              as LocationViettelPost?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectViettelpostStateDataCopyWith<$Res>
    implements $ConnectViettelpostStateDataCopyWith<$Res> {
  factory _$$_ConnectViettelpostStateDataCopyWith(
          _$_ConnectViettelpostStateData value,
          $Res Function(_$_ConnectViettelpostStateData) then) =
      __$$_ConnectViettelpostStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      String error,
      List<LocationViettelPost> locationsViettelPost,
      String token,
      LocationViettelPost? locationViettelPost});
}

/// @nodoc
class __$$_ConnectViettelpostStateDataCopyWithImpl<$Res>
    extends _$ConnectViettelpostStateDataCopyWithImpl<$Res,
        _$_ConnectViettelpostStateData>
    implements _$$_ConnectViettelpostStateDataCopyWith<$Res> {
  __$$_ConnectViettelpostStateDataCopyWithImpl(
      _$_ConnectViettelpostStateData _value,
      $Res Function(_$_ConnectViettelpostStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? locationsViettelPost = null,
    Object? token = null,
    Object? locationViettelPost = freezed,
  }) {
    return _then(_$_ConnectViettelpostStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      locationsViettelPost: null == locationsViettelPost
          ? _value._locationsViettelPost
          : locationsViettelPost // ignore: cast_nullable_to_non_nullable
              as List<LocationViettelPost>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      locationViettelPost: freezed == locationViettelPost
          ? _value.locationViettelPost
          : locationViettelPost // ignore: cast_nullable_to_non_nullable
              as LocationViettelPost?,
    ));
  }
}

/// @nodoc

class _$_ConnectViettelpostStateData implements _ConnectViettelpostStateData {
  const _$_ConnectViettelpostStateData(
      {this.status = StatusType.init,
      this.error = '',
      final List<LocationViettelPost> locationsViettelPost = const [],
      this.token = '',
      this.locationViettelPost})
      : _locationsViettelPost = locationsViettelPost;

  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final String error;
  final List<LocationViettelPost> _locationsViettelPost;
  @override
  @JsonKey()
  List<LocationViettelPost> get locationsViettelPost {
    if (_locationsViettelPost is EqualUnmodifiableListView)
      return _locationsViettelPost;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locationsViettelPost);
  }

  @override
  @JsonKey()
  final String token;
// @Default([]) List<Transaction> transactions,
  @override
  final LocationViettelPost? locationViettelPost;

  @override
  String toString() {
    return 'ConnectViettelpostStateData(status: $status, error: $error, locationsViettelPost: $locationsViettelPost, token: $token, locationViettelPost: $locationViettelPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectViettelpostStateData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._locationsViettelPost, _locationsViettelPost) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.locationViettelPost, locationViettelPost) ||
                other.locationViettelPost == locationViettelPost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      error,
      const DeepCollectionEquality().hash(_locationsViettelPost),
      token,
      locationViettelPost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectViettelpostStateDataCopyWith<_$_ConnectViettelpostStateData>
      get copyWith => __$$_ConnectViettelpostStateDataCopyWithImpl<
          _$_ConnectViettelpostStateData>(this, _$identity);
}

abstract class _ConnectViettelpostStateData
    implements ConnectViettelpostStateData {
  const factory _ConnectViettelpostStateData(
          {final StatusType status,
          final String error,
          final List<LocationViettelPost> locationsViettelPost,
          final String token,
          final LocationViettelPost? locationViettelPost}) =
      _$_ConnectViettelpostStateData;

  @override
  StatusType get status;
  @override
  String get error;
  @override
  List<LocationViettelPost> get locationsViettelPost;
  @override
  String get token;
  @override // @Default([]) List<Transaction> transactions,
  LocationViettelPost? get locationViettelPost;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectViettelpostStateDataCopyWith<_$_ConnectViettelpostStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConnectViettelpostState {
  ConnectViettelpostStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectViettelpostStateData? data) initial,
    required TResult Function(ConnectViettelpostStateData? data) error,
    required TResult Function(ConnectViettelpostStateData? data) status,
    required TResult Function(ConnectViettelpostStateData? data) getLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectViettelpostStateData? data)? initial,
    TResult? Function(ConnectViettelpostStateData? data)? error,
    TResult? Function(ConnectViettelpostStateData? data)? status,
    TResult? Function(ConnectViettelpostStateData? data)? getLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectViettelpostStateData? data)? initial,
    TResult Function(ConnectViettelpostStateData? data)? error,
    TResult Function(ConnectViettelpostStateData? data)? status,
    TResult Function(ConnectViettelpostStateData? data)? getLocations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(GetLocationsViettelPost value) getLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsViettelPost value)? getLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsViettelPost value)? getLocations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectViettelpostStateCopyWith<ConnectViettelpostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectViettelpostStateCopyWith<$Res> {
  factory $ConnectViettelpostStateCopyWith(ConnectViettelpostState value,
          $Res Function(ConnectViettelpostState) then) =
      _$ConnectViettelpostStateCopyWithImpl<$Res, ConnectViettelpostState>;
  @useResult
  $Res call({ConnectViettelpostStateData? data});

  $ConnectViettelpostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ConnectViettelpostStateCopyWithImpl<$Res,
        $Val extends ConnectViettelpostState>
    implements $ConnectViettelpostStateCopyWith<$Res> {
  _$ConnectViettelpostStateCopyWithImpl(this._value, this._then);

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
              as ConnectViettelpostStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConnectViettelpostStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ConnectViettelpostStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $ConnectViettelpostStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectViettelpostStateData? data});

  @override
  $ConnectViettelpostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ConnectViettelpostStateCopyWithImpl<$Res, _$Initial>
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
              as ConnectViettelpostStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final ConnectViettelpostStateData? data;

  @override
  String toString() {
    return 'ConnectViettelpostState.initial(data: $data)';
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
    required TResult Function(ConnectViettelpostStateData? data) initial,
    required TResult Function(ConnectViettelpostStateData? data) error,
    required TResult Function(ConnectViettelpostStateData? data) status,
    required TResult Function(ConnectViettelpostStateData? data) getLocations,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectViettelpostStateData? data)? initial,
    TResult? Function(ConnectViettelpostStateData? data)? error,
    TResult? Function(ConnectViettelpostStateData? data)? status,
    TResult? Function(ConnectViettelpostStateData? data)? getLocations,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectViettelpostStateData? data)? initial,
    TResult Function(ConnectViettelpostStateData? data)? error,
    TResult Function(ConnectViettelpostStateData? data)? status,
    TResult Function(ConnectViettelpostStateData? data)? getLocations,
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
    required TResult Function(GetLocationsViettelPost value) getLocations,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsViettelPost value)? getLocations,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsViettelPost value)? getLocations,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ConnectViettelpostState {
  const factory Initial({final ConnectViettelpostStateData? data}) = _$Initial;

  @override
  ConnectViettelpostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res>
    implements $ConnectViettelpostStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectViettelpostStateData? data});

  @override
  $ConnectViettelpostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$ConnectViettelpostStateCopyWithImpl<$Res, _$Error>
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
              as ConnectViettelpostStateData?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.data});

  @override
  final ConnectViettelpostStateData? data;

  @override
  String toString() {
    return 'ConnectViettelpostState.error(data: $data)';
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
    required TResult Function(ConnectViettelpostStateData? data) initial,
    required TResult Function(ConnectViettelpostStateData? data) error,
    required TResult Function(ConnectViettelpostStateData? data) status,
    required TResult Function(ConnectViettelpostStateData? data) getLocations,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectViettelpostStateData? data)? initial,
    TResult? Function(ConnectViettelpostStateData? data)? error,
    TResult? Function(ConnectViettelpostStateData? data)? status,
    TResult? Function(ConnectViettelpostStateData? data)? getLocations,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectViettelpostStateData? data)? initial,
    TResult Function(ConnectViettelpostStateData? data)? error,
    TResult Function(ConnectViettelpostStateData? data)? status,
    TResult Function(ConnectViettelpostStateData? data)? getLocations,
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
    required TResult Function(GetLocationsViettelPost value) getLocations,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsViettelPost value)? getLocations,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsViettelPost value)? getLocations,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ConnectViettelpostState {
  const factory Error({final ConnectViettelpostStateData? data}) = _$Error;

  @override
  ConnectViettelpostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $ConnectViettelpostStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectViettelpostStateData? data});

  @override
  $ConnectViettelpostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$ConnectViettelpostStateCopyWithImpl<$Res, _$Status>
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
              as ConnectViettelpostStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final ConnectViettelpostStateData? data;

  @override
  String toString() {
    return 'ConnectViettelpostState.status(data: $data)';
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
    required TResult Function(ConnectViettelpostStateData? data) initial,
    required TResult Function(ConnectViettelpostStateData? data) error,
    required TResult Function(ConnectViettelpostStateData? data) status,
    required TResult Function(ConnectViettelpostStateData? data) getLocations,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectViettelpostStateData? data)? initial,
    TResult? Function(ConnectViettelpostStateData? data)? error,
    TResult? Function(ConnectViettelpostStateData? data)? status,
    TResult? Function(ConnectViettelpostStateData? data)? getLocations,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectViettelpostStateData? data)? initial,
    TResult Function(ConnectViettelpostStateData? data)? error,
    TResult Function(ConnectViettelpostStateData? data)? status,
    TResult Function(ConnectViettelpostStateData? data)? getLocations,
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
    required TResult Function(GetLocationsViettelPost value) getLocations,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsViettelPost value)? getLocations,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsViettelPost value)? getLocations,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements ConnectViettelpostState {
  const factory Status({final ConnectViettelpostStateData? data}) = _$Status;

  @override
  ConnectViettelpostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLocationsViettelPostCopyWith<$Res>
    implements $ConnectViettelpostStateCopyWith<$Res> {
  factory _$$GetLocationsViettelPostCopyWith(_$GetLocationsViettelPost value,
          $Res Function(_$GetLocationsViettelPost) then) =
      __$$GetLocationsViettelPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectViettelpostStateData? data});

  @override
  $ConnectViettelpostStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetLocationsViettelPostCopyWithImpl<$Res>
    extends _$ConnectViettelpostStateCopyWithImpl<$Res,
        _$GetLocationsViettelPost>
    implements _$$GetLocationsViettelPostCopyWith<$Res> {
  __$$GetLocationsViettelPostCopyWithImpl(_$GetLocationsViettelPost _value,
      $Res Function(_$GetLocationsViettelPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetLocationsViettelPost(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConnectViettelpostStateData?,
    ));
  }
}

/// @nodoc

class _$GetLocationsViettelPost implements GetLocationsViettelPost {
  const _$GetLocationsViettelPost({this.data});

  @override
  final ConnectViettelpostStateData? data;

  @override
  String toString() {
    return 'ConnectViettelpostState.getLocations(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocationsViettelPost &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLocationsViettelPostCopyWith<_$GetLocationsViettelPost> get copyWith =>
      __$$GetLocationsViettelPostCopyWithImpl<_$GetLocationsViettelPost>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectViettelpostStateData? data) initial,
    required TResult Function(ConnectViettelpostStateData? data) error,
    required TResult Function(ConnectViettelpostStateData? data) status,
    required TResult Function(ConnectViettelpostStateData? data) getLocations,
  }) {
    return getLocations(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectViettelpostStateData? data)? initial,
    TResult? Function(ConnectViettelpostStateData? data)? error,
    TResult? Function(ConnectViettelpostStateData? data)? status,
    TResult? Function(ConnectViettelpostStateData? data)? getLocations,
  }) {
    return getLocations?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectViettelpostStateData? data)? initial,
    TResult Function(ConnectViettelpostStateData? data)? error,
    TResult Function(ConnectViettelpostStateData? data)? status,
    TResult Function(ConnectViettelpostStateData? data)? getLocations,
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
    required TResult Function(GetLocationsViettelPost value) getLocations,
  }) {
    return getLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetLocationsViettelPost value)? getLocations,
  }) {
    return getLocations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetLocationsViettelPost value)? getLocations,
    required TResult orElse(),
  }) {
    if (getLocations != null) {
      return getLocations(this);
    }
    return orElse();
  }
}

abstract class GetLocationsViettelPost implements ConnectViettelpostState {
  const factory GetLocationsViettelPost(
      {final ConnectViettelpostStateData? data}) = _$GetLocationsViettelPost;

  @override
  ConnectViettelpostStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetLocationsViettelPostCopyWith<_$GetLocationsViettelPost> get copyWith =>
      throw _privateConstructorUsedError;
}
