// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_stock_product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddStockProductStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStockProductStateDataCopyWith<AddStockProductStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStockProductStateDataCopyWith<$Res> {
  factory $AddStockProductStateDataCopyWith(AddStockProductStateData value,
          $Res Function(AddStockProductStateData) then) =
      _$AddStockProductStateDataCopyWithImpl<$Res, AddStockProductStateData>;
  @useResult
  $Res call({String error, StatusType status});
}

/// @nodoc
class _$AddStockProductStateDataCopyWithImpl<$Res,
        $Val extends AddStockProductStateData>
    implements $AddStockProductStateDataCopyWith<$Res> {
  _$AddStockProductStateDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_AddStockProductStateDataCopyWith<$Res>
    implements $AddStockProductStateDataCopyWith<$Res> {
  factory _$$_AddStockProductStateDataCopyWith(
          _$_AddStockProductStateData value,
          $Res Function(_$_AddStockProductStateData) then) =
      __$$_AddStockProductStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, StatusType status});
}

/// @nodoc
class __$$_AddStockProductStateDataCopyWithImpl<$Res>
    extends _$AddStockProductStateDataCopyWithImpl<$Res,
        _$_AddStockProductStateData>
    implements _$$_AddStockProductStateDataCopyWith<$Res> {
  __$$_AddStockProductStateDataCopyWithImpl(_$_AddStockProductStateData _value,
      $Res Function(_$_AddStockProductStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
  }) {
    return _then(_$_AddStockProductStateData(
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

class _$_AddStockProductStateData implements _AddStockProductStateData {
  const _$_AddStockProductStateData(
      {this.error = '', this.status = StatusType.init});

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;

  @override
  String toString() {
    return 'AddStockProductStateData(error: $error, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddStockProductStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddStockProductStateDataCopyWith<_$_AddStockProductStateData>
      get copyWith => __$$_AddStockProductStateDataCopyWithImpl<
          _$_AddStockProductStateData>(this, _$identity);
}

abstract class _AddStockProductStateData implements AddStockProductStateData {
  const factory _AddStockProductStateData(
      {final String error,
      final StatusType status}) = _$_AddStockProductStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  @JsonKey(ignore: true)
  _$$_AddStockProductStateDataCopyWith<_$_AddStockProductStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddStockProductState {
  AddStockProductStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddStockProductStateData? data) initial,
    required TResult Function(AddStockProductStateData? data) error,
    required TResult Function(AddStockProductStateData? data) status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddStockProductStateData? data)? initial,
    TResult? Function(AddStockProductStateData? data)? error,
    TResult? Function(AddStockProductStateData? data)? status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddStockProductStateData? data)? initial,
    TResult Function(AddStockProductStateData? data)? error,
    TResult Function(AddStockProductStateData? data)? status,
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
  $AddStockProductStateCopyWith<AddStockProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStockProductStateCopyWith<$Res> {
  factory $AddStockProductStateCopyWith(AddStockProductState value,
          $Res Function(AddStockProductState) then) =
      _$AddStockProductStateCopyWithImpl<$Res, AddStockProductState>;
  @useResult
  $Res call({AddStockProductStateData? data});

  $AddStockProductStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddStockProductStateCopyWithImpl<$Res,
        $Val extends AddStockProductState>
    implements $AddStockProductStateCopyWith<$Res> {
  _$AddStockProductStateCopyWithImpl(this._value, this._then);

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
              as AddStockProductStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddStockProductStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddStockProductStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $AddStockProductStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddStockProductStateData? data});

  @override
  $AddStockProductStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddStockProductStateCopyWithImpl<$Res, _$Initial>
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
              as AddStockProductStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final AddStockProductStateData? data;

  @override
  String toString() {
    return 'AddStockProductState.initial(data: $data)';
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
    required TResult Function(AddStockProductStateData? data) initial,
    required TResult Function(AddStockProductStateData? data) error,
    required TResult Function(AddStockProductStateData? data) status,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddStockProductStateData? data)? initial,
    TResult? Function(AddStockProductStateData? data)? error,
    TResult? Function(AddStockProductStateData? data)? status,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddStockProductStateData? data)? initial,
    TResult Function(AddStockProductStateData? data)? error,
    TResult Function(AddStockProductStateData? data)? status,
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

abstract class Initial implements AddStockProductState {
  const factory Initial({final AddStockProductStateData? data}) = _$Initial;

  @override
  AddStockProductStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res>
    implements $AddStockProductStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddStockProductStateData? data});

  @override
  $AddStockProductStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$AddStockProductStateCopyWithImpl<$Res, _$Error>
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
              as AddStockProductStateData?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.data});

  @override
  final AddStockProductStateData? data;

  @override
  String toString() {
    return 'AddStockProductState.error(data: $data)';
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
    required TResult Function(AddStockProductStateData? data) initial,
    required TResult Function(AddStockProductStateData? data) error,
    required TResult Function(AddStockProductStateData? data) status,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddStockProductStateData? data)? initial,
    TResult? Function(AddStockProductStateData? data)? error,
    TResult? Function(AddStockProductStateData? data)? status,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddStockProductStateData? data)? initial,
    TResult Function(AddStockProductStateData? data)? error,
    TResult Function(AddStockProductStateData? data)? status,
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

abstract class Error implements AddStockProductState {
  const factory Error({final AddStockProductStateData? data}) = _$Error;

  @override
  AddStockProductStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $AddStockProductStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddStockProductStateData? data});

  @override
  $AddStockProductStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$AddStockProductStateCopyWithImpl<$Res, _$Status>
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
              as AddStockProductStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final AddStockProductStateData? data;

  @override
  String toString() {
    return 'AddStockProductState.status(data: $data)';
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
    required TResult Function(AddStockProductStateData? data) initial,
    required TResult Function(AddStockProductStateData? data) error,
    required TResult Function(AddStockProductStateData? data) status,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddStockProductStateData? data)? initial,
    TResult? Function(AddStockProductStateData? data)? error,
    TResult? Function(AddStockProductStateData? data)? status,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddStockProductStateData? data)? initial,
    TResult Function(AddStockProductStateData? data)? error,
    TResult Function(AddStockProductStateData? data)? status,
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

abstract class Status implements AddStockProductState {
  const factory Status({final AddStockProductStateData? data}) = _$Status;

  @override
  AddStockProductStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}
