// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ghtk_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GhtkDetailStateData {
  StatusType get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<OrderElement> get orders =>
      throw _privateConstructorUsedError; // @Default([]) List<Transaction> transactions,
  OrderElement? get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GhtkDetailStateDataCopyWith<GhtkDetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GhtkDetailStateDataCopyWith<$Res> {
  factory $GhtkDetailStateDataCopyWith(
          GhtkDetailStateData value, $Res Function(GhtkDetailStateData) then) =
      _$GhtkDetailStateDataCopyWithImpl<$Res, GhtkDetailStateData>;
  @useResult
  $Res call(
      {StatusType status,
      String error,
      List<OrderElement> orders,
      OrderElement? order});
}

/// @nodoc
class _$GhtkDetailStateDataCopyWithImpl<$Res, $Val extends GhtkDetailStateData>
    implements $GhtkDetailStateDataCopyWith<$Res> {
  _$GhtkDetailStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? orders = null,
    Object? order = freezed,
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
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderElement>,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GhtkDetailStateDataCopyWith<$Res>
    implements $GhtkDetailStateDataCopyWith<$Res> {
  factory _$$_GhtkDetailStateDataCopyWith(_$_GhtkDetailStateData value,
          $Res Function(_$_GhtkDetailStateData) then) =
      __$$_GhtkDetailStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      String error,
      List<OrderElement> orders,
      OrderElement? order});
}

/// @nodoc
class __$$_GhtkDetailStateDataCopyWithImpl<$Res>
    extends _$GhtkDetailStateDataCopyWithImpl<$Res, _$_GhtkDetailStateData>
    implements _$$_GhtkDetailStateDataCopyWith<$Res> {
  __$$_GhtkDetailStateDataCopyWithImpl(_$_GhtkDetailStateData _value,
      $Res Function(_$_GhtkDetailStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? orders = null,
    Object? order = freezed,
  }) {
    return _then(_$_GhtkDetailStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderElement>,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderElement?,
    ));
  }
}

/// @nodoc

class _$_GhtkDetailStateData implements _GhtkDetailStateData {
  const _$_GhtkDetailStateData(
      {this.status = StatusType.init,
      this.error = '',
      final List<OrderElement> orders = const [],
      this.order})
      : _orders = orders;

  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final String error;
  final List<OrderElement> _orders;
  @override
  @JsonKey()
  List<OrderElement> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

// @Default([]) List<Transaction> transactions,
  @override
  final OrderElement? order;

  @override
  String toString() {
    return 'GhtkDetailStateData(status: $status, error: $error, orders: $orders, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GhtkDetailStateData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error,
      const DeepCollectionEquality().hash(_orders), order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GhtkDetailStateDataCopyWith<_$_GhtkDetailStateData> get copyWith =>
      __$$_GhtkDetailStateDataCopyWithImpl<_$_GhtkDetailStateData>(
          this, _$identity);
}

abstract class _GhtkDetailStateData implements GhtkDetailStateData {
  const factory _GhtkDetailStateData(
      {final StatusType status,
      final String error,
      final List<OrderElement> orders,
      final OrderElement? order}) = _$_GhtkDetailStateData;

  @override
  StatusType get status;
  @override
  String get error;
  @override
  List<OrderElement> get orders;
  @override // @Default([]) List<Transaction> transactions,
  OrderElement? get order;
  @override
  @JsonKey(ignore: true)
  _$$_GhtkDetailStateDataCopyWith<_$_GhtkDetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GhtkDetailState {
  GhtkDetailStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GhtkDetailStateData? data) initial,
    required TResult Function(GhtkDetailStateData? data) error,
    required TResult Function(GhtkDetailStateData? data) status,
    required TResult Function(GhtkDetailStateData? data) getDetailsGhtk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GhtkDetailStateData? data)? initial,
    TResult? Function(GhtkDetailStateData? data)? error,
    TResult? Function(GhtkDetailStateData? data)? status,
    TResult? Function(GhtkDetailStateData? data)? getDetailsGhtk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GhtkDetailStateData? data)? initial,
    TResult Function(GhtkDetailStateData? data)? error,
    TResult Function(GhtkDetailStateData? data)? status,
    TResult Function(GhtkDetailStateData? data)? getDetailsGhtk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(GetDetailsGhtk value) getDetailsGhtk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetDetailsGhtk value)? getDetailsGhtk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetDetailsGhtk value)? getDetailsGhtk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GhtkDetailStateCopyWith<GhtkDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GhtkDetailStateCopyWith<$Res> {
  factory $GhtkDetailStateCopyWith(
          GhtkDetailState value, $Res Function(GhtkDetailState) then) =
      _$GhtkDetailStateCopyWithImpl<$Res, GhtkDetailState>;
  @useResult
  $Res call({GhtkDetailStateData? data});

  $GhtkDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GhtkDetailStateCopyWithImpl<$Res, $Val extends GhtkDetailState>
    implements $GhtkDetailStateCopyWith<$Res> {
  _$GhtkDetailStateCopyWithImpl(this._value, this._then);

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
              as GhtkDetailStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GhtkDetailStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GhtkDetailStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $GhtkDetailStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GhtkDetailStateData? data});

  @override
  $GhtkDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$GhtkDetailStateCopyWithImpl<$Res, _$Initial>
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
              as GhtkDetailStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final GhtkDetailStateData? data;

  @override
  String toString() {
    return 'GhtkDetailState.initial(data: $data)';
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
    required TResult Function(GhtkDetailStateData? data) initial,
    required TResult Function(GhtkDetailStateData? data) error,
    required TResult Function(GhtkDetailStateData? data) status,
    required TResult Function(GhtkDetailStateData? data) getDetailsGhtk,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GhtkDetailStateData? data)? initial,
    TResult? Function(GhtkDetailStateData? data)? error,
    TResult? Function(GhtkDetailStateData? data)? status,
    TResult? Function(GhtkDetailStateData? data)? getDetailsGhtk,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GhtkDetailStateData? data)? initial,
    TResult Function(GhtkDetailStateData? data)? error,
    TResult Function(GhtkDetailStateData? data)? status,
    TResult Function(GhtkDetailStateData? data)? getDetailsGhtk,
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
    required TResult Function(GetDetailsGhtk value) getDetailsGhtk,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetDetailsGhtk value)? getDetailsGhtk,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetDetailsGhtk value)? getDetailsGhtk,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements GhtkDetailState {
  const factory Initial({final GhtkDetailStateData? data}) = _$Initial;

  @override
  GhtkDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res>
    implements $GhtkDetailStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GhtkDetailStateData? data});

  @override
  $GhtkDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$GhtkDetailStateCopyWithImpl<$Res, _$Error>
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
              as GhtkDetailStateData?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.data});

  @override
  final GhtkDetailStateData? data;

  @override
  String toString() {
    return 'GhtkDetailState.error(data: $data)';
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
    required TResult Function(GhtkDetailStateData? data) initial,
    required TResult Function(GhtkDetailStateData? data) error,
    required TResult Function(GhtkDetailStateData? data) status,
    required TResult Function(GhtkDetailStateData? data) getDetailsGhtk,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GhtkDetailStateData? data)? initial,
    TResult? Function(GhtkDetailStateData? data)? error,
    TResult? Function(GhtkDetailStateData? data)? status,
    TResult? Function(GhtkDetailStateData? data)? getDetailsGhtk,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GhtkDetailStateData? data)? initial,
    TResult Function(GhtkDetailStateData? data)? error,
    TResult Function(GhtkDetailStateData? data)? status,
    TResult Function(GhtkDetailStateData? data)? getDetailsGhtk,
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
    required TResult Function(GetDetailsGhtk value) getDetailsGhtk,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetDetailsGhtk value)? getDetailsGhtk,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetDetailsGhtk value)? getDetailsGhtk,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements GhtkDetailState {
  const factory Error({final GhtkDetailStateData? data}) = _$Error;

  @override
  GhtkDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $GhtkDetailStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GhtkDetailStateData? data});

  @override
  $GhtkDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$GhtkDetailStateCopyWithImpl<$Res, _$Status>
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
              as GhtkDetailStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final GhtkDetailStateData? data;

  @override
  String toString() {
    return 'GhtkDetailState.status(data: $data)';
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
    required TResult Function(GhtkDetailStateData? data) initial,
    required TResult Function(GhtkDetailStateData? data) error,
    required TResult Function(GhtkDetailStateData? data) status,
    required TResult Function(GhtkDetailStateData? data) getDetailsGhtk,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GhtkDetailStateData? data)? initial,
    TResult? Function(GhtkDetailStateData? data)? error,
    TResult? Function(GhtkDetailStateData? data)? status,
    TResult? Function(GhtkDetailStateData? data)? getDetailsGhtk,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GhtkDetailStateData? data)? initial,
    TResult Function(GhtkDetailStateData? data)? error,
    TResult Function(GhtkDetailStateData? data)? status,
    TResult Function(GhtkDetailStateData? data)? getDetailsGhtk,
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
    required TResult Function(GetDetailsGhtk value) getDetailsGhtk,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetDetailsGhtk value)? getDetailsGhtk,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetDetailsGhtk value)? getDetailsGhtk,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements GhtkDetailState {
  const factory Status({final GhtkDetailStateData? data}) = _$Status;

  @override
  GhtkDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDetailsGhtkCopyWith<$Res>
    implements $GhtkDetailStateCopyWith<$Res> {
  factory _$$GetDetailsGhtkCopyWith(
          _$GetDetailsGhtk value, $Res Function(_$GetDetailsGhtk) then) =
      __$$GetDetailsGhtkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GhtkDetailStateData? data});

  @override
  $GhtkDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetDetailsGhtkCopyWithImpl<$Res>
    extends _$GhtkDetailStateCopyWithImpl<$Res, _$GetDetailsGhtk>
    implements _$$GetDetailsGhtkCopyWith<$Res> {
  __$$GetDetailsGhtkCopyWithImpl(
      _$GetDetailsGhtk _value, $Res Function(_$GetDetailsGhtk) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetDetailsGhtk(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GhtkDetailStateData?,
    ));
  }
}

/// @nodoc

class _$GetDetailsGhtk implements GetDetailsGhtk {
  const _$GetDetailsGhtk({this.data});

  @override
  final GhtkDetailStateData? data;

  @override
  String toString() {
    return 'GhtkDetailState.getDetailsGhtk(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailsGhtk &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailsGhtkCopyWith<_$GetDetailsGhtk> get copyWith =>
      __$$GetDetailsGhtkCopyWithImpl<_$GetDetailsGhtk>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GhtkDetailStateData? data) initial,
    required TResult Function(GhtkDetailStateData? data) error,
    required TResult Function(GhtkDetailStateData? data) status,
    required TResult Function(GhtkDetailStateData? data) getDetailsGhtk,
  }) {
    return getDetailsGhtk(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GhtkDetailStateData? data)? initial,
    TResult? Function(GhtkDetailStateData? data)? error,
    TResult? Function(GhtkDetailStateData? data)? status,
    TResult? Function(GhtkDetailStateData? data)? getDetailsGhtk,
  }) {
    return getDetailsGhtk?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GhtkDetailStateData? data)? initial,
    TResult Function(GhtkDetailStateData? data)? error,
    TResult Function(GhtkDetailStateData? data)? status,
    TResult Function(GhtkDetailStateData? data)? getDetailsGhtk,
    required TResult orElse(),
  }) {
    if (getDetailsGhtk != null) {
      return getDetailsGhtk(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(GetDetailsGhtk value) getDetailsGhtk,
  }) {
    return getDetailsGhtk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetDetailsGhtk value)? getDetailsGhtk,
  }) {
    return getDetailsGhtk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetDetailsGhtk value)? getDetailsGhtk,
    required TResult orElse(),
  }) {
    if (getDetailsGhtk != null) {
      return getDetailsGhtk(this);
    }
    return orElse();
  }
}

abstract class GetDetailsGhtk implements GhtkDetailState {
  const factory GetDetailsGhtk({final GhtkDetailStateData? data}) =
      _$GetDetailsGhtk;

  @override
  GhtkDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetDetailsGhtkCopyWith<_$GetDetailsGhtk> get copyWith =>
      throw _privateConstructorUsedError;
}
