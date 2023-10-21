// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ghn_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GhnDetailStateData {
  StatusType get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<OrderElement> get orders =>
      throw _privateConstructorUsedError; // @Default([]) List<Transaction> transactions,
  OrderElement? get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GhnDetailStateDataCopyWith<GhnDetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GhnDetailStateDataCopyWith<$Res> {
  factory $GhnDetailStateDataCopyWith(
          GhnDetailStateData value, $Res Function(GhnDetailStateData) then) =
      _$GhnDetailStateDataCopyWithImpl<$Res, GhnDetailStateData>;
  @useResult
  $Res call(
      {StatusType status,
      String error,
      List<OrderElement> orders,
      OrderElement? order});
}

/// @nodoc
class _$GhnDetailStateDataCopyWithImpl<$Res, $Val extends GhnDetailStateData>
    implements $GhnDetailStateDataCopyWith<$Res> {
  _$GhnDetailStateDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_GhnDetailStateDataCopyWith<$Res>
    implements $GhnDetailStateDataCopyWith<$Res> {
  factory _$$_GhnDetailStateDataCopyWith(_$_GhnDetailStateData value,
          $Res Function(_$_GhnDetailStateData) then) =
      __$$_GhnDetailStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      String error,
      List<OrderElement> orders,
      OrderElement? order});
}

/// @nodoc
class __$$_GhnDetailStateDataCopyWithImpl<$Res>
    extends _$GhnDetailStateDataCopyWithImpl<$Res, _$_GhnDetailStateData>
    implements _$$_GhnDetailStateDataCopyWith<$Res> {
  __$$_GhnDetailStateDataCopyWithImpl(
      _$_GhnDetailStateData _value, $Res Function(_$_GhnDetailStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? orders = null,
    Object? order = freezed,
  }) {
    return _then(_$_GhnDetailStateData(
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

class _$_GhnDetailStateData implements _GhnDetailStateData {
  const _$_GhnDetailStateData(
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
    return 'GhnDetailStateData(status: $status, error: $error, orders: $orders, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GhnDetailStateData &&
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
  _$$_GhnDetailStateDataCopyWith<_$_GhnDetailStateData> get copyWith =>
      __$$_GhnDetailStateDataCopyWithImpl<_$_GhnDetailStateData>(
          this, _$identity);
}

abstract class _GhnDetailStateData implements GhnDetailStateData {
  const factory _GhnDetailStateData(
      {final StatusType status,
      final String error,
      final List<OrderElement> orders,
      final OrderElement? order}) = _$_GhnDetailStateData;

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
  _$$_GhnDetailStateDataCopyWith<_$_GhnDetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GhnDetailState {
  GhnDetailStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GhnDetailStateData? data) initial,
    required TResult Function(GhnDetailStateData? data) error,
    required TResult Function(GhnDetailStateData? data) status,
    required TResult Function(GhnDetailStateData? data) getDetailsGhn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GhnDetailStateData? data)? initial,
    TResult? Function(GhnDetailStateData? data)? error,
    TResult? Function(GhnDetailStateData? data)? status,
    TResult? Function(GhnDetailStateData? data)? getDetailsGhn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GhnDetailStateData? data)? initial,
    TResult Function(GhnDetailStateData? data)? error,
    TResult Function(GhnDetailStateData? data)? status,
    TResult Function(GhnDetailStateData? data)? getDetailsGhn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(GetDetailsGhn value) getDetailsGhn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetDetailsGhn value)? getDetailsGhn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetDetailsGhn value)? getDetailsGhn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GhnDetailStateCopyWith<GhnDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GhnDetailStateCopyWith<$Res> {
  factory $GhnDetailStateCopyWith(
          GhnDetailState value, $Res Function(GhnDetailState) then) =
      _$GhnDetailStateCopyWithImpl<$Res, GhnDetailState>;
  @useResult
  $Res call({GhnDetailStateData? data});

  $GhnDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GhnDetailStateCopyWithImpl<$Res, $Val extends GhnDetailState>
    implements $GhnDetailStateCopyWith<$Res> {
  _$GhnDetailStateCopyWithImpl(this._value, this._then);

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
              as GhnDetailStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GhnDetailStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GhnDetailStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $GhnDetailStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GhnDetailStateData? data});

  @override
  $GhnDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$GhnDetailStateCopyWithImpl<$Res, _$Initial>
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
              as GhnDetailStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final GhnDetailStateData? data;

  @override
  String toString() {
    return 'GhnDetailState.initial(data: $data)';
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
    required TResult Function(GhnDetailStateData? data) initial,
    required TResult Function(GhnDetailStateData? data) error,
    required TResult Function(GhnDetailStateData? data) status,
    required TResult Function(GhnDetailStateData? data) getDetailsGhn,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GhnDetailStateData? data)? initial,
    TResult? Function(GhnDetailStateData? data)? error,
    TResult? Function(GhnDetailStateData? data)? status,
    TResult? Function(GhnDetailStateData? data)? getDetailsGhn,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GhnDetailStateData? data)? initial,
    TResult Function(GhnDetailStateData? data)? error,
    TResult Function(GhnDetailStateData? data)? status,
    TResult Function(GhnDetailStateData? data)? getDetailsGhn,
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
    required TResult Function(GetDetailsGhn value) getDetailsGhn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetDetailsGhn value)? getDetailsGhn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetDetailsGhn value)? getDetailsGhn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements GhnDetailState {
  const factory Initial({final GhnDetailStateData? data}) = _$Initial;

  @override
  GhnDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> implements $GhnDetailStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GhnDetailStateData? data});

  @override
  $GhnDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$GhnDetailStateCopyWithImpl<$Res, _$Error>
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
              as GhnDetailStateData?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.data});

  @override
  final GhnDetailStateData? data;

  @override
  String toString() {
    return 'GhnDetailState.error(data: $data)';
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
    required TResult Function(GhnDetailStateData? data) initial,
    required TResult Function(GhnDetailStateData? data) error,
    required TResult Function(GhnDetailStateData? data) status,
    required TResult Function(GhnDetailStateData? data) getDetailsGhn,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GhnDetailStateData? data)? initial,
    TResult? Function(GhnDetailStateData? data)? error,
    TResult? Function(GhnDetailStateData? data)? status,
    TResult? Function(GhnDetailStateData? data)? getDetailsGhn,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GhnDetailStateData? data)? initial,
    TResult Function(GhnDetailStateData? data)? error,
    TResult Function(GhnDetailStateData? data)? status,
    TResult Function(GhnDetailStateData? data)? getDetailsGhn,
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
    required TResult Function(GetDetailsGhn value) getDetailsGhn,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetDetailsGhn value)? getDetailsGhn,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetDetailsGhn value)? getDetailsGhn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements GhnDetailState {
  const factory Error({final GhnDetailStateData? data}) = _$Error;

  @override
  GhnDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $GhnDetailStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GhnDetailStateData? data});

  @override
  $GhnDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$GhnDetailStateCopyWithImpl<$Res, _$Status>
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
              as GhnDetailStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final GhnDetailStateData? data;

  @override
  String toString() {
    return 'GhnDetailState.status(data: $data)';
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
    required TResult Function(GhnDetailStateData? data) initial,
    required TResult Function(GhnDetailStateData? data) error,
    required TResult Function(GhnDetailStateData? data) status,
    required TResult Function(GhnDetailStateData? data) getDetailsGhn,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GhnDetailStateData? data)? initial,
    TResult? Function(GhnDetailStateData? data)? error,
    TResult? Function(GhnDetailStateData? data)? status,
    TResult? Function(GhnDetailStateData? data)? getDetailsGhn,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GhnDetailStateData? data)? initial,
    TResult Function(GhnDetailStateData? data)? error,
    TResult Function(GhnDetailStateData? data)? status,
    TResult Function(GhnDetailStateData? data)? getDetailsGhn,
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
    required TResult Function(GetDetailsGhn value) getDetailsGhn,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetDetailsGhn value)? getDetailsGhn,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetDetailsGhn value)? getDetailsGhn,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements GhnDetailState {
  const factory Status({final GhnDetailStateData? data}) = _$Status;

  @override
  GhnDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDetailsGhnCopyWith<$Res>
    implements $GhnDetailStateCopyWith<$Res> {
  factory _$$GetDetailsGhnCopyWith(
          _$GetDetailsGhn value, $Res Function(_$GetDetailsGhn) then) =
      __$$GetDetailsGhnCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GhnDetailStateData? data});

  @override
  $GhnDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetDetailsGhnCopyWithImpl<$Res>
    extends _$GhnDetailStateCopyWithImpl<$Res, _$GetDetailsGhn>
    implements _$$GetDetailsGhnCopyWith<$Res> {
  __$$GetDetailsGhnCopyWithImpl(
      _$GetDetailsGhn _value, $Res Function(_$GetDetailsGhn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetDetailsGhn(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GhnDetailStateData?,
    ));
  }
}

/// @nodoc

class _$GetDetailsGhn implements GetDetailsGhn {
  const _$GetDetailsGhn({this.data});

  @override
  final GhnDetailStateData? data;

  @override
  String toString() {
    return 'GhnDetailState.getDetailsGhn(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailsGhn &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailsGhnCopyWith<_$GetDetailsGhn> get copyWith =>
      __$$GetDetailsGhnCopyWithImpl<_$GetDetailsGhn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GhnDetailStateData? data) initial,
    required TResult Function(GhnDetailStateData? data) error,
    required TResult Function(GhnDetailStateData? data) status,
    required TResult Function(GhnDetailStateData? data) getDetailsGhn,
  }) {
    return getDetailsGhn(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GhnDetailStateData? data)? initial,
    TResult? Function(GhnDetailStateData? data)? error,
    TResult? Function(GhnDetailStateData? data)? status,
    TResult? Function(GhnDetailStateData? data)? getDetailsGhn,
  }) {
    return getDetailsGhn?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GhnDetailStateData? data)? initial,
    TResult Function(GhnDetailStateData? data)? error,
    TResult Function(GhnDetailStateData? data)? status,
    TResult Function(GhnDetailStateData? data)? getDetailsGhn,
    required TResult orElse(),
  }) {
    if (getDetailsGhn != null) {
      return getDetailsGhn(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(GetDetailsGhn value) getDetailsGhn,
  }) {
    return getDetailsGhn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetDetailsGhn value)? getDetailsGhn,
  }) {
    return getDetailsGhn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetDetailsGhn value)? getDetailsGhn,
    required TResult orElse(),
  }) {
    if (getDetailsGhn != null) {
      return getDetailsGhn(this);
    }
    return orElse();
  }
}

abstract class GetDetailsGhn implements GhnDetailState {
  const factory GetDetailsGhn({final GhnDetailStateData? data}) =
      _$GetDetailsGhn;

  @override
  GhnDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetDetailsGhnCopyWith<_$GetDetailsGhn> get copyWith =>
      throw _privateConstructorUsedError;
}
