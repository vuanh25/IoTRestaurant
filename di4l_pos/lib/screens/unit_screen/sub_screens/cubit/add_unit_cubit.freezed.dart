// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_unit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddUnitStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  bool get baseUnit => throw _privateConstructorUsedError;
  bool get allowDecimal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUnitStateDataCopyWith<AddUnitStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUnitStateDataCopyWith<$Res> {
  factory $AddUnitStateDataCopyWith(
          AddUnitStateData value, $Res Function(AddUnitStateData) then) =
      _$AddUnitStateDataCopyWithImpl<$Res, AddUnitStateData>;
  @useResult
  $Res call(
      {String error, StatusType status, bool baseUnit, bool allowDecimal});
}

/// @nodoc
class _$AddUnitStateDataCopyWithImpl<$Res, $Val extends AddUnitStateData>
    implements $AddUnitStateDataCopyWith<$Res> {
  _$AddUnitStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? baseUnit = null,
    Object? allowDecimal = null,
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
      baseUnit: null == baseUnit
          ? _value.baseUnit
          : baseUnit // ignore: cast_nullable_to_non_nullable
              as bool,
      allowDecimal: null == allowDecimal
          ? _value.allowDecimal
          : allowDecimal // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddUnitStateDataCopyWith<$Res>
    implements $AddUnitStateDataCopyWith<$Res> {
  factory _$$_AddUnitStateDataCopyWith(
          _$_AddUnitStateData value, $Res Function(_$_AddUnitStateData) then) =
      __$$_AddUnitStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error, StatusType status, bool baseUnit, bool allowDecimal});
}

/// @nodoc
class __$$_AddUnitStateDataCopyWithImpl<$Res>
    extends _$AddUnitStateDataCopyWithImpl<$Res, _$_AddUnitStateData>
    implements _$$_AddUnitStateDataCopyWith<$Res> {
  __$$_AddUnitStateDataCopyWithImpl(
      _$_AddUnitStateData _value, $Res Function(_$_AddUnitStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? baseUnit = null,
    Object? allowDecimal = null,
  }) {
    return _then(_$_AddUnitStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      baseUnit: null == baseUnit
          ? _value.baseUnit
          : baseUnit // ignore: cast_nullable_to_non_nullable
              as bool,
      allowDecimal: null == allowDecimal
          ? _value.allowDecimal
          : allowDecimal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddUnitStateData implements _AddUnitStateData {
  const _$_AddUnitStateData(
      {this.error = '',
      this.status = StatusType.init,
      this.baseUnit = false,
      this.allowDecimal = false});

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final bool baseUnit;
  @override
  @JsonKey()
  final bool allowDecimal;

  @override
  String toString() {
    return 'AddUnitStateData(error: $error, status: $status, baseUnit: $baseUnit, allowDecimal: $allowDecimal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddUnitStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.baseUnit, baseUnit) ||
                other.baseUnit == baseUnit) &&
            (identical(other.allowDecimal, allowDecimal) ||
                other.allowDecimal == allowDecimal));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, status, baseUnit, allowDecimal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddUnitStateDataCopyWith<_$_AddUnitStateData> get copyWith =>
      __$$_AddUnitStateDataCopyWithImpl<_$_AddUnitStateData>(this, _$identity);
}

abstract class _AddUnitStateData implements AddUnitStateData {
  const factory _AddUnitStateData(
      {final String error,
      final StatusType status,
      final bool baseUnit,
      final bool allowDecimal}) = _$_AddUnitStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  bool get baseUnit;
  @override
  bool get allowDecimal;
  @override
  @JsonKey(ignore: true)
  _$$_AddUnitStateDataCopyWith<_$_AddUnitStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddUnitState {
  AddUnitStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddUnitStateData? data) initial,
    required TResult Function(AddUnitStateData? data) error,
    required TResult Function(AddUnitStateData? data) status,
    required TResult Function(AddUnitStateData? data) baseUnit,
    required TResult Function(AddUnitStateData? data) allowDecimal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddUnitStateData? data)? initial,
    TResult? Function(AddUnitStateData? data)? error,
    TResult? Function(AddUnitStateData? data)? status,
    TResult? Function(AddUnitStateData? data)? baseUnit,
    TResult? Function(AddUnitStateData? data)? allowDecimal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddUnitStateData? data)? initial,
    TResult Function(AddUnitStateData? data)? error,
    TResult Function(AddUnitStateData? data)? status,
    TResult Function(AddUnitStateData? data)? baseUnit,
    TResult Function(AddUnitStateData? data)? allowDecimal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(BaseUnit value) baseUnit,
    required TResult Function(AllowDecimal value) allowDecimal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(BaseUnit value)? baseUnit,
    TResult? Function(AllowDecimal value)? allowDecimal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(BaseUnit value)? baseUnit,
    TResult Function(AllowDecimal value)? allowDecimal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUnitStateCopyWith<AddUnitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUnitStateCopyWith<$Res> {
  factory $AddUnitStateCopyWith(
          AddUnitState value, $Res Function(AddUnitState) then) =
      _$AddUnitStateCopyWithImpl<$Res, AddUnitState>;
  @useResult
  $Res call({AddUnitStateData? data});

  $AddUnitStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddUnitStateCopyWithImpl<$Res, $Val extends AddUnitState>
    implements $AddUnitStateCopyWith<$Res> {
  _$AddUnitStateCopyWithImpl(this._value, this._then);

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
              as AddUnitStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddUnitStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddUnitStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $AddUnitStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddUnitStateData? data});

  @override
  $AddUnitStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddUnitStateCopyWithImpl<$Res, _$Initial>
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
              as AddUnitStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final AddUnitStateData? data;

  @override
  String toString() {
    return 'AddUnitState.initial(data: $data)';
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
    required TResult Function(AddUnitStateData? data) initial,
    required TResult Function(AddUnitStateData? data) error,
    required TResult Function(AddUnitStateData? data) status,
    required TResult Function(AddUnitStateData? data) baseUnit,
    required TResult Function(AddUnitStateData? data) allowDecimal,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddUnitStateData? data)? initial,
    TResult? Function(AddUnitStateData? data)? error,
    TResult? Function(AddUnitStateData? data)? status,
    TResult? Function(AddUnitStateData? data)? baseUnit,
    TResult? Function(AddUnitStateData? data)? allowDecimal,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddUnitStateData? data)? initial,
    TResult Function(AddUnitStateData? data)? error,
    TResult Function(AddUnitStateData? data)? status,
    TResult Function(AddUnitStateData? data)? baseUnit,
    TResult Function(AddUnitStateData? data)? allowDecimal,
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
    required TResult Function(BaseUnit value) baseUnit,
    required TResult Function(AllowDecimal value) allowDecimal,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(BaseUnit value)? baseUnit,
    TResult? Function(AllowDecimal value)? allowDecimal,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(BaseUnit value)? baseUnit,
    TResult Function(AllowDecimal value)? allowDecimal,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddUnitState {
  const factory Initial({final AddUnitStateData? data}) = _$Initial;

  @override
  AddUnitStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> implements $AddUnitStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddUnitStateData? data});

  @override
  $AddUnitStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$AddUnitStateCopyWithImpl<$Res, _$Error>
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
              as AddUnitStateData?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.data});

  @override
  final AddUnitStateData? data;

  @override
  String toString() {
    return 'AddUnitState.error(data: $data)';
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
    required TResult Function(AddUnitStateData? data) initial,
    required TResult Function(AddUnitStateData? data) error,
    required TResult Function(AddUnitStateData? data) status,
    required TResult Function(AddUnitStateData? data) baseUnit,
    required TResult Function(AddUnitStateData? data) allowDecimal,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddUnitStateData? data)? initial,
    TResult? Function(AddUnitStateData? data)? error,
    TResult? Function(AddUnitStateData? data)? status,
    TResult? Function(AddUnitStateData? data)? baseUnit,
    TResult? Function(AddUnitStateData? data)? allowDecimal,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddUnitStateData? data)? initial,
    TResult Function(AddUnitStateData? data)? error,
    TResult Function(AddUnitStateData? data)? status,
    TResult Function(AddUnitStateData? data)? baseUnit,
    TResult Function(AddUnitStateData? data)? allowDecimal,
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
    required TResult Function(BaseUnit value) baseUnit,
    required TResult Function(AllowDecimal value) allowDecimal,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(BaseUnit value)? baseUnit,
    TResult? Function(AllowDecimal value)? allowDecimal,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(BaseUnit value)? baseUnit,
    TResult Function(AllowDecimal value)? allowDecimal,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AddUnitState {
  const factory Error({final AddUnitStateData? data}) = _$Error;

  @override
  AddUnitStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $AddUnitStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddUnitStateData? data});

  @override
  $AddUnitStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$AddUnitStateCopyWithImpl<$Res, _$Status>
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
              as AddUnitStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final AddUnitStateData? data;

  @override
  String toString() {
    return 'AddUnitState.status(data: $data)';
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
    required TResult Function(AddUnitStateData? data) initial,
    required TResult Function(AddUnitStateData? data) error,
    required TResult Function(AddUnitStateData? data) status,
    required TResult Function(AddUnitStateData? data) baseUnit,
    required TResult Function(AddUnitStateData? data) allowDecimal,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddUnitStateData? data)? initial,
    TResult? Function(AddUnitStateData? data)? error,
    TResult? Function(AddUnitStateData? data)? status,
    TResult? Function(AddUnitStateData? data)? baseUnit,
    TResult? Function(AddUnitStateData? data)? allowDecimal,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddUnitStateData? data)? initial,
    TResult Function(AddUnitStateData? data)? error,
    TResult Function(AddUnitStateData? data)? status,
    TResult Function(AddUnitStateData? data)? baseUnit,
    TResult Function(AddUnitStateData? data)? allowDecimal,
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
    required TResult Function(BaseUnit value) baseUnit,
    required TResult Function(AllowDecimal value) allowDecimal,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(BaseUnit value)? baseUnit,
    TResult? Function(AllowDecimal value)? allowDecimal,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(BaseUnit value)? baseUnit,
    TResult Function(AllowDecimal value)? allowDecimal,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements AddUnitState {
  const factory Status({final AddUnitStateData? data}) = _$Status;

  @override
  AddUnitStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseUnitCopyWith<$Res>
    implements $AddUnitStateCopyWith<$Res> {
  factory _$$BaseUnitCopyWith(
          _$BaseUnit value, $Res Function(_$BaseUnit) then) =
      __$$BaseUnitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddUnitStateData? data});

  @override
  $AddUnitStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseUnitCopyWithImpl<$Res>
    extends _$AddUnitStateCopyWithImpl<$Res, _$BaseUnit>
    implements _$$BaseUnitCopyWith<$Res> {
  __$$BaseUnitCopyWithImpl(_$BaseUnit _value, $Res Function(_$BaseUnit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BaseUnit(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddUnitStateData?,
    ));
  }
}

/// @nodoc

class _$BaseUnit implements BaseUnit {
  const _$BaseUnit({this.data});

  @override
  final AddUnitStateData? data;

  @override
  String toString() {
    return 'AddUnitState.baseUnit(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseUnit &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseUnitCopyWith<_$BaseUnit> get copyWith =>
      __$$BaseUnitCopyWithImpl<_$BaseUnit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddUnitStateData? data) initial,
    required TResult Function(AddUnitStateData? data) error,
    required TResult Function(AddUnitStateData? data) status,
    required TResult Function(AddUnitStateData? data) baseUnit,
    required TResult Function(AddUnitStateData? data) allowDecimal,
  }) {
    return baseUnit(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddUnitStateData? data)? initial,
    TResult? Function(AddUnitStateData? data)? error,
    TResult? Function(AddUnitStateData? data)? status,
    TResult? Function(AddUnitStateData? data)? baseUnit,
    TResult? Function(AddUnitStateData? data)? allowDecimal,
  }) {
    return baseUnit?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddUnitStateData? data)? initial,
    TResult Function(AddUnitStateData? data)? error,
    TResult Function(AddUnitStateData? data)? status,
    TResult Function(AddUnitStateData? data)? baseUnit,
    TResult Function(AddUnitStateData? data)? allowDecimal,
    required TResult orElse(),
  }) {
    if (baseUnit != null) {
      return baseUnit(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(BaseUnit value) baseUnit,
    required TResult Function(AllowDecimal value) allowDecimal,
  }) {
    return baseUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(BaseUnit value)? baseUnit,
    TResult? Function(AllowDecimal value)? allowDecimal,
  }) {
    return baseUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(BaseUnit value)? baseUnit,
    TResult Function(AllowDecimal value)? allowDecimal,
    required TResult orElse(),
  }) {
    if (baseUnit != null) {
      return baseUnit(this);
    }
    return orElse();
  }
}

abstract class BaseUnit implements AddUnitState {
  const factory BaseUnit({final AddUnitStateData? data}) = _$BaseUnit;

  @override
  AddUnitStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$BaseUnitCopyWith<_$BaseUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllowDecimalCopyWith<$Res>
    implements $AddUnitStateCopyWith<$Res> {
  factory _$$AllowDecimalCopyWith(
          _$AllowDecimal value, $Res Function(_$AllowDecimal) then) =
      __$$AllowDecimalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddUnitStateData? data});

  @override
  $AddUnitStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AllowDecimalCopyWithImpl<$Res>
    extends _$AddUnitStateCopyWithImpl<$Res, _$AllowDecimal>
    implements _$$AllowDecimalCopyWith<$Res> {
  __$$AllowDecimalCopyWithImpl(
      _$AllowDecimal _value, $Res Function(_$AllowDecimal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AllowDecimal(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddUnitStateData?,
    ));
  }
}

/// @nodoc

class _$AllowDecimal implements AllowDecimal {
  const _$AllowDecimal({this.data});

  @override
  final AddUnitStateData? data;

  @override
  String toString() {
    return 'AddUnitState.allowDecimal(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllowDecimal &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllowDecimalCopyWith<_$AllowDecimal> get copyWith =>
      __$$AllowDecimalCopyWithImpl<_$AllowDecimal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddUnitStateData? data) initial,
    required TResult Function(AddUnitStateData? data) error,
    required TResult Function(AddUnitStateData? data) status,
    required TResult Function(AddUnitStateData? data) baseUnit,
    required TResult Function(AddUnitStateData? data) allowDecimal,
  }) {
    return allowDecimal(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddUnitStateData? data)? initial,
    TResult? Function(AddUnitStateData? data)? error,
    TResult? Function(AddUnitStateData? data)? status,
    TResult? Function(AddUnitStateData? data)? baseUnit,
    TResult? Function(AddUnitStateData? data)? allowDecimal,
  }) {
    return allowDecimal?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddUnitStateData? data)? initial,
    TResult Function(AddUnitStateData? data)? error,
    TResult Function(AddUnitStateData? data)? status,
    TResult Function(AddUnitStateData? data)? baseUnit,
    TResult Function(AddUnitStateData? data)? allowDecimal,
    required TResult orElse(),
  }) {
    if (allowDecimal != null) {
      return allowDecimal(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(BaseUnit value) baseUnit,
    required TResult Function(AllowDecimal value) allowDecimal,
  }) {
    return allowDecimal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(BaseUnit value)? baseUnit,
    TResult? Function(AllowDecimal value)? allowDecimal,
  }) {
    return allowDecimal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(BaseUnit value)? baseUnit,
    TResult Function(AllowDecimal value)? allowDecimal,
    required TResult orElse(),
  }) {
    if (allowDecimal != null) {
      return allowDecimal(this);
    }
    return orElse();
  }
}

abstract class AllowDecimal implements AddUnitState {
  const factory AllowDecimal({final AddUnitStateData? data}) = _$AllowDecimal;

  @override
  AddUnitStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$AllowDecimalCopyWith<_$AllowDecimal> get copyWith =>
      throw _privateConstructorUsedError;
}
