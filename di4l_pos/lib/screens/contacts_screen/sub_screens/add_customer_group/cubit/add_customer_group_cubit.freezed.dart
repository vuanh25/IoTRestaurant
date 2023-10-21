// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_customer_group_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddCustomerGroupStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCustomerGroupStateDataCopyWith<AddCustomerGroupStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerGroupStateDataCopyWith<$Res> {
  factory $AddCustomerGroupStateDataCopyWith(AddCustomerGroupStateData value,
          $Res Function(AddCustomerGroupStateData) then) =
      _$AddCustomerGroupStateDataCopyWithImpl<$Res, AddCustomerGroupStateData>;
  @useResult
  $Res call({String error, StatusType status, String type});
}

/// @nodoc
class _$AddCustomerGroupStateDataCopyWithImpl<$Res,
        $Val extends AddCustomerGroupStateData>
    implements $AddCustomerGroupStateDataCopyWith<$Res> {
  _$AddCustomerGroupStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? type = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCustomerGroupStateDataCopyWith<$Res>
    implements $AddCustomerGroupStateDataCopyWith<$Res> {
  factory _$$_AddCustomerGroupStateDataCopyWith(
          _$_AddCustomerGroupStateData value,
          $Res Function(_$_AddCustomerGroupStateData) then) =
      __$$_AddCustomerGroupStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, StatusType status, String type});
}

/// @nodoc
class __$$_AddCustomerGroupStateDataCopyWithImpl<$Res>
    extends _$AddCustomerGroupStateDataCopyWithImpl<$Res,
        _$_AddCustomerGroupStateData>
    implements _$$_AddCustomerGroupStateDataCopyWith<$Res> {
  __$$_AddCustomerGroupStateDataCopyWithImpl(
      _$_AddCustomerGroupStateData _value,
      $Res Function(_$_AddCustomerGroupStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? type = null,
  }) {
    return _then(_$_AddCustomerGroupStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddCustomerGroupStateData implements _AddCustomerGroupStateData {
  const _$_AddCustomerGroupStateData(
      {this.error = '',
      this.status = StatusType.init,
      this.type = 'Percentage'});

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'AddCustomerGroupStateData(error: $error, status: $status, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCustomerGroupStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, status, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCustomerGroupStateDataCopyWith<_$_AddCustomerGroupStateData>
      get copyWith => __$$_AddCustomerGroupStateDataCopyWithImpl<
          _$_AddCustomerGroupStateData>(this, _$identity);
}

abstract class _AddCustomerGroupStateData implements AddCustomerGroupStateData {
  const factory _AddCustomerGroupStateData(
      {final String error,
      final StatusType status,
      final String type}) = _$_AddCustomerGroupStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_AddCustomerGroupStateDataCopyWith<_$_AddCustomerGroupStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddCustomerGroupState {
  AddCustomerGroupStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCustomerGroupStateData? data) initial,
    required TResult Function(AddCustomerGroupStateData? data) error,
    required TResult Function(AddCustomerGroupStateData? data) status,
    required TResult Function(AddCustomerGroupStateData? data) type,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCustomerGroupStateData? data)? initial,
    TResult? Function(AddCustomerGroupStateData? data)? error,
    TResult? Function(AddCustomerGroupStateData? data)? status,
    TResult? Function(AddCustomerGroupStateData? data)? type,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCustomerGroupStateData? data)? initial,
    TResult Function(AddCustomerGroupStateData? data)? error,
    TResult Function(AddCustomerGroupStateData? data)? status,
    TResult Function(AddCustomerGroupStateData? data)? type,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(Type value) type,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(Type value)? type,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(Type value)? type,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCustomerGroupStateCopyWith<AddCustomerGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerGroupStateCopyWith<$Res> {
  factory $AddCustomerGroupStateCopyWith(AddCustomerGroupState value,
          $Res Function(AddCustomerGroupState) then) =
      _$AddCustomerGroupStateCopyWithImpl<$Res, AddCustomerGroupState>;
  @useResult
  $Res call({AddCustomerGroupStateData? data});

  $AddCustomerGroupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddCustomerGroupStateCopyWithImpl<$Res,
        $Val extends AddCustomerGroupState>
    implements $AddCustomerGroupStateCopyWith<$Res> {
  _$AddCustomerGroupStateCopyWithImpl(this._value, this._then);

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
              as AddCustomerGroupStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddCustomerGroupStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddCustomerGroupStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $AddCustomerGroupStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCustomerGroupStateData? data});

  @override
  $AddCustomerGroupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddCustomerGroupStateCopyWithImpl<$Res, _$Initial>
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
              as AddCustomerGroupStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final AddCustomerGroupStateData? data;

  @override
  String toString() {
    return 'AddCustomerGroupState.initial(data: $data)';
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
    required TResult Function(AddCustomerGroupStateData? data) initial,
    required TResult Function(AddCustomerGroupStateData? data) error,
    required TResult Function(AddCustomerGroupStateData? data) status,
    required TResult Function(AddCustomerGroupStateData? data) type,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCustomerGroupStateData? data)? initial,
    TResult? Function(AddCustomerGroupStateData? data)? error,
    TResult? Function(AddCustomerGroupStateData? data)? status,
    TResult? Function(AddCustomerGroupStateData? data)? type,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCustomerGroupStateData? data)? initial,
    TResult Function(AddCustomerGroupStateData? data)? error,
    TResult Function(AddCustomerGroupStateData? data)? status,
    TResult Function(AddCustomerGroupStateData? data)? type,
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
    required TResult Function(Type value) type,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(Type value)? type,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(Type value)? type,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddCustomerGroupState {
  const factory Initial({final AddCustomerGroupStateData? data}) = _$Initial;

  @override
  AddCustomerGroupStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res>
    implements $AddCustomerGroupStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCustomerGroupStateData? data});

  @override
  $AddCustomerGroupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$AddCustomerGroupStateCopyWithImpl<$Res, _$Error>
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
              as AddCustomerGroupStateData?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.data});

  @override
  final AddCustomerGroupStateData? data;

  @override
  String toString() {
    return 'AddCustomerGroupState.error(data: $data)';
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
    required TResult Function(AddCustomerGroupStateData? data) initial,
    required TResult Function(AddCustomerGroupStateData? data) error,
    required TResult Function(AddCustomerGroupStateData? data) status,
    required TResult Function(AddCustomerGroupStateData? data) type,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCustomerGroupStateData? data)? initial,
    TResult? Function(AddCustomerGroupStateData? data)? error,
    TResult? Function(AddCustomerGroupStateData? data)? status,
    TResult? Function(AddCustomerGroupStateData? data)? type,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCustomerGroupStateData? data)? initial,
    TResult Function(AddCustomerGroupStateData? data)? error,
    TResult Function(AddCustomerGroupStateData? data)? status,
    TResult Function(AddCustomerGroupStateData? data)? type,
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
    required TResult Function(Type value) type,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(Type value)? type,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(Type value)? type,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AddCustomerGroupState {
  const factory Error({final AddCustomerGroupStateData? data}) = _$Error;

  @override
  AddCustomerGroupStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $AddCustomerGroupStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCustomerGroupStateData? data});

  @override
  $AddCustomerGroupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$AddCustomerGroupStateCopyWithImpl<$Res, _$Status>
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
              as AddCustomerGroupStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final AddCustomerGroupStateData? data;

  @override
  String toString() {
    return 'AddCustomerGroupState.status(data: $data)';
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
    required TResult Function(AddCustomerGroupStateData? data) initial,
    required TResult Function(AddCustomerGroupStateData? data) error,
    required TResult Function(AddCustomerGroupStateData? data) status,
    required TResult Function(AddCustomerGroupStateData? data) type,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCustomerGroupStateData? data)? initial,
    TResult? Function(AddCustomerGroupStateData? data)? error,
    TResult? Function(AddCustomerGroupStateData? data)? status,
    TResult? Function(AddCustomerGroupStateData? data)? type,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCustomerGroupStateData? data)? initial,
    TResult Function(AddCustomerGroupStateData? data)? error,
    TResult Function(AddCustomerGroupStateData? data)? status,
    TResult Function(AddCustomerGroupStateData? data)? type,
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
    required TResult Function(Type value) type,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(Type value)? type,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(Type value)? type,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements AddCustomerGroupState {
  const factory Status({final AddCustomerGroupStateData? data}) = _$Status;

  @override
  AddCustomerGroupStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypeCopyWith<$Res>
    implements $AddCustomerGroupStateCopyWith<$Res> {
  factory _$$TypeCopyWith(_$Type value, $Res Function(_$Type) then) =
      __$$TypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCustomerGroupStateData? data});

  @override
  $AddCustomerGroupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TypeCopyWithImpl<$Res>
    extends _$AddCustomerGroupStateCopyWithImpl<$Res, _$Type>
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
              as AddCustomerGroupStateData?,
    ));
  }
}

/// @nodoc

class _$Type implements Type {
  const _$Type({this.data});

  @override
  final AddCustomerGroupStateData? data;

  @override
  String toString() {
    return 'AddCustomerGroupState.type(data: $data)';
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
    required TResult Function(AddCustomerGroupStateData? data) initial,
    required TResult Function(AddCustomerGroupStateData? data) error,
    required TResult Function(AddCustomerGroupStateData? data) status,
    required TResult Function(AddCustomerGroupStateData? data) type,
  }) {
    return type(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCustomerGroupStateData? data)? initial,
    TResult? Function(AddCustomerGroupStateData? data)? error,
    TResult? Function(AddCustomerGroupStateData? data)? status,
    TResult? Function(AddCustomerGroupStateData? data)? type,
  }) {
    return type?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCustomerGroupStateData? data)? initial,
    TResult Function(AddCustomerGroupStateData? data)? error,
    TResult Function(AddCustomerGroupStateData? data)? status,
    TResult Function(AddCustomerGroupStateData? data)? type,
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
    required TResult Function(Type value) type,
  }) {
    return type(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(Type value)? type,
  }) {
    return type?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(Type value)? type,
    required TResult orElse(),
  }) {
    if (type != null) {
      return type(this);
    }
    return orElse();
  }
}

abstract class Type implements AddCustomerGroupState {
  const factory Type({final AddCustomerGroupStateData? data}) = _$Type;

  @override
  AddCustomerGroupStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$TypeCopyWith<_$Type> get copyWith => throw _privateConstructorUsedError;
}
