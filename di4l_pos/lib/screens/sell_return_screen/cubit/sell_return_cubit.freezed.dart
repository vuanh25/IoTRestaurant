// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_return_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SellReturnStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<SellData> get sells => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellReturnStateDataCopyWith<SellReturnStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellReturnStateDataCopyWith<$Res> {
  factory $SellReturnStateDataCopyWith(
          SellReturnStateData value, $Res Function(SellReturnStateData) then) =
      _$SellReturnStateDataCopyWithImpl<$Res, SellReturnStateData>;
  @useResult
  $Res call({StatusType status, List<SellData> sells});
}

/// @nodoc
class _$SellReturnStateDataCopyWithImpl<$Res, $Val extends SellReturnStateData>
    implements $SellReturnStateDataCopyWith<$Res> {
  _$SellReturnStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sells = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      sells: null == sells
          ? _value.sells
          : sells // ignore: cast_nullable_to_non_nullable
              as List<SellData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SellReturnStateDataCopyWith<$Res>
    implements $SellReturnStateDataCopyWith<$Res> {
  factory _$$_SellReturnStateDataCopyWith(_$_SellReturnStateData value,
          $Res Function(_$_SellReturnStateData) then) =
      __$$_SellReturnStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusType status, List<SellData> sells});
}

/// @nodoc
class __$$_SellReturnStateDataCopyWithImpl<$Res>
    extends _$SellReturnStateDataCopyWithImpl<$Res, _$_SellReturnStateData>
    implements _$$_SellReturnStateDataCopyWith<$Res> {
  __$$_SellReturnStateDataCopyWithImpl(_$_SellReturnStateData _value,
      $Res Function(_$_SellReturnStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sells = null,
  }) {
    return _then(_$_SellReturnStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      sells: null == sells
          ? _value._sells
          : sells // ignore: cast_nullable_to_non_nullable
              as List<SellData>,
    ));
  }
}

/// @nodoc

class _$_SellReturnStateData implements _SellReturnStateData {
  const _$_SellReturnStateData(
      {this.status = StatusType.init, final List<SellData> sells = const []})
      : _sells = sells;

  @override
  @JsonKey()
  final StatusType status;
  final List<SellData> _sells;
  @override
  @JsonKey()
  List<SellData> get sells {
    if (_sells is EqualUnmodifiableListView) return _sells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sells);
  }

  @override
  String toString() {
    return 'SellReturnStateData(status: $status, sells: $sells)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SellReturnStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._sells, _sells));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_sells));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SellReturnStateDataCopyWith<_$_SellReturnStateData> get copyWith =>
      __$$_SellReturnStateDataCopyWithImpl<_$_SellReturnStateData>(
          this, _$identity);
}

abstract class _SellReturnStateData implements SellReturnStateData {
  const factory _SellReturnStateData(
      {final StatusType status,
      final List<SellData> sells}) = _$_SellReturnStateData;

  @override
  StatusType get status;
  @override
  List<SellData> get sells;
  @override
  @JsonKey(ignore: true)
  _$$_SellReturnStateDataCopyWith<_$_SellReturnStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SellReturnState {
  SellReturnStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SellReturnStateData? data) initial,
    required TResult Function(SellReturnStateData? data) status,
    required TResult Function(SellReturnStateData? data) getSells,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SellReturnStateData? data)? initial,
    TResult? Function(SellReturnStateData? data)? status,
    TResult? Function(SellReturnStateData? data)? getSells,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SellReturnStateData? data)? initial,
    TResult Function(SellReturnStateData? data)? status,
    TResult Function(SellReturnStateData? data)? getSells,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetSells value) getSells,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetSells value)? getSells,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetSells value)? getSells,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellReturnStateCopyWith<SellReturnState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellReturnStateCopyWith<$Res> {
  factory $SellReturnStateCopyWith(
          SellReturnState value, $Res Function(SellReturnState) then) =
      _$SellReturnStateCopyWithImpl<$Res, SellReturnState>;
  @useResult
  $Res call({SellReturnStateData? data});

  $SellReturnStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SellReturnStateCopyWithImpl<$Res, $Val extends SellReturnState>
    implements $SellReturnStateCopyWith<$Res> {
  _$SellReturnStateCopyWithImpl(this._value, this._then);

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
              as SellReturnStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SellReturnStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SellReturnStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $SellReturnStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SellReturnStateData? data});

  @override
  $SellReturnStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$SellReturnStateCopyWithImpl<$Res, _$Initial>
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
              as SellReturnStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final SellReturnStateData? data;

  @override
  String toString() {
    return 'SellReturnState.initial(data: $data)';
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
    required TResult Function(SellReturnStateData? data) initial,
    required TResult Function(SellReturnStateData? data) status,
    required TResult Function(SellReturnStateData? data) getSells,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SellReturnStateData? data)? initial,
    TResult? Function(SellReturnStateData? data)? status,
    TResult? Function(SellReturnStateData? data)? getSells,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SellReturnStateData? data)? initial,
    TResult Function(SellReturnStateData? data)? status,
    TResult Function(SellReturnStateData? data)? getSells,
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
    required TResult Function(GetSells value) getSells,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetSells value)? getSells,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetSells value)? getSells,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SellReturnState {
  const factory Initial({final SellReturnStateData? data}) = _$Initial;

  @override
  SellReturnStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $SellReturnStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SellReturnStateData? data});

  @override
  $SellReturnStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$SellReturnStateCopyWithImpl<$Res, _$Status>
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
              as SellReturnStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final SellReturnStateData? data;

  @override
  String toString() {
    return 'SellReturnState.status(data: $data)';
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
    required TResult Function(SellReturnStateData? data) initial,
    required TResult Function(SellReturnStateData? data) status,
    required TResult Function(SellReturnStateData? data) getSells,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SellReturnStateData? data)? initial,
    TResult? Function(SellReturnStateData? data)? status,
    TResult? Function(SellReturnStateData? data)? getSells,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SellReturnStateData? data)? initial,
    TResult Function(SellReturnStateData? data)? status,
    TResult Function(SellReturnStateData? data)? getSells,
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
    required TResult Function(GetSells value) getSells,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetSells value)? getSells,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetSells value)? getSells,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements SellReturnState {
  const factory Status({final SellReturnStateData? data}) = _$Status;

  @override
  SellReturnStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSellsCopyWith<$Res>
    implements $SellReturnStateCopyWith<$Res> {
  factory _$$GetSellsCopyWith(
          _$GetSells value, $Res Function(_$GetSells) then) =
      __$$GetSellsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SellReturnStateData? data});

  @override
  $SellReturnStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetSellsCopyWithImpl<$Res>
    extends _$SellReturnStateCopyWithImpl<$Res, _$GetSells>
    implements _$$GetSellsCopyWith<$Res> {
  __$$GetSellsCopyWithImpl(_$GetSells _value, $Res Function(_$GetSells) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetSells(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SellReturnStateData?,
    ));
  }
}

/// @nodoc

class _$GetSells implements GetSells {
  const _$GetSells({this.data});

  @override
  final SellReturnStateData? data;

  @override
  String toString() {
    return 'SellReturnState.getSells(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSells &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSellsCopyWith<_$GetSells> get copyWith =>
      __$$GetSellsCopyWithImpl<_$GetSells>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SellReturnStateData? data) initial,
    required TResult Function(SellReturnStateData? data) status,
    required TResult Function(SellReturnStateData? data) getSells,
  }) {
    return getSells(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SellReturnStateData? data)? initial,
    TResult? Function(SellReturnStateData? data)? status,
    TResult? Function(SellReturnStateData? data)? getSells,
  }) {
    return getSells?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SellReturnStateData? data)? initial,
    TResult Function(SellReturnStateData? data)? status,
    TResult Function(SellReturnStateData? data)? getSells,
    required TResult orElse(),
  }) {
    if (getSells != null) {
      return getSells(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetSells value) getSells,
  }) {
    return getSells(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetSells value)? getSells,
  }) {
    return getSells?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetSells value)? getSells,
    required TResult orElse(),
  }) {
    if (getSells != null) {
      return getSells(this);
    }
    return orElse();
  }
}

abstract class GetSells implements SellReturnState {
  const factory GetSells({final SellReturnStateData? data}) = _$GetSells;

  @override
  SellReturnStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetSellsCopyWith<_$GetSells> get copyWith =>
      throw _privateConstructorUsedError;
}
