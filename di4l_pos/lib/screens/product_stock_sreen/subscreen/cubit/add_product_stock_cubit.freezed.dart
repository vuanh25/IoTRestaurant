// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product_stock_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddProductStockStateData {
  StatusType get status => throw _privateConstructorUsedError;
  BusinessLocation? get location => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddProductStockStateDataCopyWith<AddProductStockStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductStockStateDataCopyWith<$Res> {
  factory $AddProductStockStateDataCopyWith(AddProductStockStateData value,
          $Res Function(AddProductStockStateData) then) =
      _$AddProductStockStateDataCopyWithImpl<$Res, AddProductStockStateData>;
  @useResult
  $Res call({StatusType status, BusinessLocation? location, String error});
}

/// @nodoc
class _$AddProductStockStateDataCopyWithImpl<$Res,
        $Val extends AddProductStockStateData>
    implements $AddProductStockStateDataCopyWith<$Res> {
  _$AddProductStockStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? location = freezed,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as BusinessLocation?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddProductStockStateDataCopyWith<$Res>
    implements $AddProductStockStateDataCopyWith<$Res> {
  factory _$$_AddProductStockStateDataCopyWith(
          _$_AddProductStockStateData value,
          $Res Function(_$_AddProductStockStateData) then) =
      __$$_AddProductStockStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusType status, BusinessLocation? location, String error});
}

/// @nodoc
class __$$_AddProductStockStateDataCopyWithImpl<$Res>
    extends _$AddProductStockStateDataCopyWithImpl<$Res,
        _$_AddProductStockStateData>
    implements _$$_AddProductStockStateDataCopyWith<$Res> {
  __$$_AddProductStockStateDataCopyWithImpl(_$_AddProductStockStateData _value,
      $Res Function(_$_AddProductStockStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? location = freezed,
    Object? error = null,
  }) {
    return _then(_$_AddProductStockStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as BusinessLocation?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddProductStockStateData implements _AddProductStockStateData {
  const _$_AddProductStockStateData(
      {this.status = StatusType.init, this.location, this.error = ""});

  @override
  @JsonKey()
  final StatusType status;
  @override
  final BusinessLocation? location;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'AddProductStockStateData(status: $status, location: $location, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddProductStockStateData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, location, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddProductStockStateDataCopyWith<_$_AddProductStockStateData>
      get copyWith => __$$_AddProductStockStateDataCopyWithImpl<
          _$_AddProductStockStateData>(this, _$identity);
}

abstract class _AddProductStockStateData implements AddProductStockStateData {
  const factory _AddProductStockStateData(
      {final StatusType status,
      final BusinessLocation? location,
      final String error}) = _$_AddProductStockStateData;

  @override
  StatusType get status;
  @override
  BusinessLocation? get location;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_AddProductStockStateDataCopyWith<_$_AddProductStockStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddProductStockState {
  AddProductStockStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddProductStockStateData? data) initial,
    required TResult Function(AddProductStockStateData? data) status,
    required TResult Function(AddProductStockStateData? data)
        getBusinessLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddProductStockStateData? data)? initial,
    TResult? Function(AddProductStockStateData? data)? status,
    TResult? Function(AddProductStockStateData? data)? getBusinessLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddProductStockStateData? data)? initial,
    TResult Function(AddProductStockStateData? data)? status,
    TResult Function(AddProductStockStateData? data)? getBusinessLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetBusinessLocation value) getBusinessLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBusinessLocation value)? getBusinessLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBusinessLocation value)? getBusinessLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddProductStockStateCopyWith<AddProductStockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductStockStateCopyWith<$Res> {
  factory $AddProductStockStateCopyWith(AddProductStockState value,
          $Res Function(AddProductStockState) then) =
      _$AddProductStockStateCopyWithImpl<$Res, AddProductStockState>;
  @useResult
  $Res call({AddProductStockStateData? data});

  $AddProductStockStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddProductStockStateCopyWithImpl<$Res,
        $Val extends AddProductStockState>
    implements $AddProductStockStateCopyWith<$Res> {
  _$AddProductStockStateCopyWithImpl(this._value, this._then);

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
              as AddProductStockStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddProductStockStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddProductStockStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $AddProductStockStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddProductStockStateData? data});

  @override
  $AddProductStockStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddProductStockStateCopyWithImpl<$Res, _$Initial>
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
              as AddProductStockStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final AddProductStockStateData? data;

  @override
  String toString() {
    return 'AddProductStockState.initial(data: $data)';
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
    required TResult Function(AddProductStockStateData? data) initial,
    required TResult Function(AddProductStockStateData? data) status,
    required TResult Function(AddProductStockStateData? data)
        getBusinessLocation,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddProductStockStateData? data)? initial,
    TResult? Function(AddProductStockStateData? data)? status,
    TResult? Function(AddProductStockStateData? data)? getBusinessLocation,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddProductStockStateData? data)? initial,
    TResult Function(AddProductStockStateData? data)? status,
    TResult Function(AddProductStockStateData? data)? getBusinessLocation,
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
    required TResult Function(GetBusinessLocation value) getBusinessLocation,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBusinessLocation value)? getBusinessLocation,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBusinessLocation value)? getBusinessLocation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddProductStockState {
  const factory Initial({final AddProductStockStateData? data}) = _$Initial;

  @override
  AddProductStockStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $AddProductStockStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddProductStockStateData? data});

  @override
  $AddProductStockStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$AddProductStockStateCopyWithImpl<$Res, _$Status>
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
              as AddProductStockStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final AddProductStockStateData? data;

  @override
  String toString() {
    return 'AddProductStockState.status(data: $data)';
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
    required TResult Function(AddProductStockStateData? data) initial,
    required TResult Function(AddProductStockStateData? data) status,
    required TResult Function(AddProductStockStateData? data)
        getBusinessLocation,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddProductStockStateData? data)? initial,
    TResult? Function(AddProductStockStateData? data)? status,
    TResult? Function(AddProductStockStateData? data)? getBusinessLocation,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddProductStockStateData? data)? initial,
    TResult Function(AddProductStockStateData? data)? status,
    TResult Function(AddProductStockStateData? data)? getBusinessLocation,
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
    required TResult Function(GetBusinessLocation value) getBusinessLocation,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBusinessLocation value)? getBusinessLocation,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBusinessLocation value)? getBusinessLocation,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements AddProductStockState {
  const factory Status({final AddProductStockStateData? data}) = _$Status;

  @override
  AddProductStockStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBusinessLocationCopyWith<$Res>
    implements $AddProductStockStateCopyWith<$Res> {
  factory _$$GetBusinessLocationCopyWith(_$GetBusinessLocation value,
          $Res Function(_$GetBusinessLocation) then) =
      __$$GetBusinessLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddProductStockStateData? data});

  @override
  $AddProductStockStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetBusinessLocationCopyWithImpl<$Res>
    extends _$AddProductStockStateCopyWithImpl<$Res, _$GetBusinessLocation>
    implements _$$GetBusinessLocationCopyWith<$Res> {
  __$$GetBusinessLocationCopyWithImpl(
      _$GetBusinessLocation _value, $Res Function(_$GetBusinessLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetBusinessLocation(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddProductStockStateData?,
    ));
  }
}

/// @nodoc

class _$GetBusinessLocation implements GetBusinessLocation {
  const _$GetBusinessLocation({this.data});

  @override
  final AddProductStockStateData? data;

  @override
  String toString() {
    return 'AddProductStockState.getBusinessLocation(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBusinessLocation &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBusinessLocationCopyWith<_$GetBusinessLocation> get copyWith =>
      __$$GetBusinessLocationCopyWithImpl<_$GetBusinessLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddProductStockStateData? data) initial,
    required TResult Function(AddProductStockStateData? data) status,
    required TResult Function(AddProductStockStateData? data)
        getBusinessLocation,
  }) {
    return getBusinessLocation(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddProductStockStateData? data)? initial,
    TResult? Function(AddProductStockStateData? data)? status,
    TResult? Function(AddProductStockStateData? data)? getBusinessLocation,
  }) {
    return getBusinessLocation?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddProductStockStateData? data)? initial,
    TResult Function(AddProductStockStateData? data)? status,
    TResult Function(AddProductStockStateData? data)? getBusinessLocation,
    required TResult orElse(),
  }) {
    if (getBusinessLocation != null) {
      return getBusinessLocation(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetBusinessLocation value) getBusinessLocation,
  }) {
    return getBusinessLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBusinessLocation value)? getBusinessLocation,
  }) {
    return getBusinessLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBusinessLocation value)? getBusinessLocation,
    required TResult orElse(),
  }) {
    if (getBusinessLocation != null) {
      return getBusinessLocation(this);
    }
    return orElse();
  }
}

abstract class GetBusinessLocation implements AddProductStockState {
  const factory GetBusinessLocation({final AddProductStockStateData? data}) =
      _$GetBusinessLocation;

  @override
  AddProductStockStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetBusinessLocationCopyWith<_$GetBusinessLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
