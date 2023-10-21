// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LedgerStateData {
  StatusType get status => throw _privateConstructorUsedError;
  Data? get ledgers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LedgerStateDataCopyWith<LedgerStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerStateDataCopyWith<$Res> {
  factory $LedgerStateDataCopyWith(
          LedgerStateData value, $Res Function(LedgerStateData) then) =
      _$LedgerStateDataCopyWithImpl<$Res, LedgerStateData>;
  @useResult
  $Res call({StatusType status, Data? ledgers});
}

/// @nodoc
class _$LedgerStateDataCopyWithImpl<$Res, $Val extends LedgerStateData>
    implements $LedgerStateDataCopyWith<$Res> {
  _$LedgerStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? ledgers = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      ledgers: freezed == ledgers
          ? _value.ledgers
          : ledgers // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LedgerStateDataCopyWith<$Res>
    implements $LedgerStateDataCopyWith<$Res> {
  factory _$$_LedgerStateDataCopyWith(
          _$_LedgerStateData value, $Res Function(_$_LedgerStateData) then) =
      __$$_LedgerStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusType status, Data? ledgers});
}

/// @nodoc
class __$$_LedgerStateDataCopyWithImpl<$Res>
    extends _$LedgerStateDataCopyWithImpl<$Res, _$_LedgerStateData>
    implements _$$_LedgerStateDataCopyWith<$Res> {
  __$$_LedgerStateDataCopyWithImpl(
      _$_LedgerStateData _value, $Res Function(_$_LedgerStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? ledgers = freezed,
  }) {
    return _then(_$_LedgerStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      ledgers: freezed == ledgers
          ? _value.ledgers
          : ledgers // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc

class _$_LedgerStateData implements _LedgerStateData {
  const _$_LedgerStateData({this.status = StatusType.init, this.ledgers});

  @override
  @JsonKey()
  final StatusType status;
  @override
  final Data? ledgers;

  @override
  String toString() {
    return 'LedgerStateData(status: $status, ledgers: $ledgers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LedgerStateData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ledgers, ledgers) || other.ledgers == ledgers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, ledgers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LedgerStateDataCopyWith<_$_LedgerStateData> get copyWith =>
      __$$_LedgerStateDataCopyWithImpl<_$_LedgerStateData>(this, _$identity);
}

abstract class _LedgerStateData implements LedgerStateData {
  const factory _LedgerStateData(
      {final StatusType status, final Data? ledgers}) = _$_LedgerStateData;

  @override
  StatusType get status;
  @override
  Data? get ledgers;
  @override
  @JsonKey(ignore: true)
  _$$_LedgerStateDataCopyWith<_$_LedgerStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LedgerState {
  LedgerStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LedgerStateData? data) initial,
    required TResult Function(LedgerStateData? data) status,
    required TResult Function(LedgerStateData? data) getLedger,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LedgerStateData? data)? initial,
    TResult? Function(LedgerStateData? data)? status,
    TResult? Function(LedgerStateData? data)? getLedger,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LedgerStateData? data)? initial,
    TResult Function(LedgerStateData? data)? status,
    TResult Function(LedgerStateData? data)? getLedger,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetLedger value) getLedger,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetLedger value)? getLedger,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetLedger value)? getLedger,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LedgerStateCopyWith<LedgerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerStateCopyWith<$Res> {
  factory $LedgerStateCopyWith(
          LedgerState value, $Res Function(LedgerState) then) =
      _$LedgerStateCopyWithImpl<$Res, LedgerState>;
  @useResult
  $Res call({LedgerStateData? data});

  $LedgerStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LedgerStateCopyWithImpl<$Res, $Val extends LedgerState>
    implements $LedgerStateCopyWith<$Res> {
  _$LedgerStateCopyWithImpl(this._value, this._then);

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
              as LedgerStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LedgerStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LedgerStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $LedgerStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LedgerStateData? data});

  @override
  $LedgerStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$LedgerStateCopyWithImpl<$Res, _$Initial>
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
              as LedgerStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final LedgerStateData? data;

  @override
  String toString() {
    return 'LedgerState.initial(data: $data)';
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
    required TResult Function(LedgerStateData? data) initial,
    required TResult Function(LedgerStateData? data) status,
    required TResult Function(LedgerStateData? data) getLedger,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LedgerStateData? data)? initial,
    TResult? Function(LedgerStateData? data)? status,
    TResult? Function(LedgerStateData? data)? getLedger,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LedgerStateData? data)? initial,
    TResult Function(LedgerStateData? data)? status,
    TResult Function(LedgerStateData? data)? getLedger,
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
    required TResult Function(GetLedger value) getLedger,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetLedger value)? getLedger,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetLedger value)? getLedger,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LedgerState {
  const factory Initial({final LedgerStateData? data}) = _$Initial;

  @override
  LedgerStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $LedgerStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LedgerStateData? data});

  @override
  $LedgerStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$LedgerStateCopyWithImpl<$Res, _$Status>
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
              as LedgerStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final LedgerStateData? data;

  @override
  String toString() {
    return 'LedgerState.status(data: $data)';
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
    required TResult Function(LedgerStateData? data) initial,
    required TResult Function(LedgerStateData? data) status,
    required TResult Function(LedgerStateData? data) getLedger,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LedgerStateData? data)? initial,
    TResult? Function(LedgerStateData? data)? status,
    TResult? Function(LedgerStateData? data)? getLedger,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LedgerStateData? data)? initial,
    TResult Function(LedgerStateData? data)? status,
    TResult Function(LedgerStateData? data)? getLedger,
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
    required TResult Function(GetLedger value) getLedger,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetLedger value)? getLedger,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetLedger value)? getLedger,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements LedgerState {
  const factory Status({final LedgerStateData? data}) = _$Status;

  @override
  LedgerStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLedgerCopyWith<$Res>
    implements $LedgerStateCopyWith<$Res> {
  factory _$$GetLedgerCopyWith(
          _$GetLedger value, $Res Function(_$GetLedger) then) =
      __$$GetLedgerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LedgerStateData? data});

  @override
  $LedgerStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetLedgerCopyWithImpl<$Res>
    extends _$LedgerStateCopyWithImpl<$Res, _$GetLedger>
    implements _$$GetLedgerCopyWith<$Res> {
  __$$GetLedgerCopyWithImpl(
      _$GetLedger _value, $Res Function(_$GetLedger) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetLedger(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LedgerStateData?,
    ));
  }
}

/// @nodoc

class _$GetLedger implements GetLedger {
  const _$GetLedger({this.data});

  @override
  final LedgerStateData? data;

  @override
  String toString() {
    return 'LedgerState.getLedger(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLedger &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLedgerCopyWith<_$GetLedger> get copyWith =>
      __$$GetLedgerCopyWithImpl<_$GetLedger>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LedgerStateData? data) initial,
    required TResult Function(LedgerStateData? data) status,
    required TResult Function(LedgerStateData? data) getLedger,
  }) {
    return getLedger(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LedgerStateData? data)? initial,
    TResult? Function(LedgerStateData? data)? status,
    TResult? Function(LedgerStateData? data)? getLedger,
  }) {
    return getLedger?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LedgerStateData? data)? initial,
    TResult Function(LedgerStateData? data)? status,
    TResult Function(LedgerStateData? data)? getLedger,
    required TResult orElse(),
  }) {
    if (getLedger != null) {
      return getLedger(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetLedger value) getLedger,
  }) {
    return getLedger(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetLedger value)? getLedger,
  }) {
    return getLedger?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetLedger value)? getLedger,
    required TResult orElse(),
  }) {
    if (getLedger != null) {
      return getLedger(this);
    }
    return orElse();
  }
}

abstract class GetLedger implements LedgerState {
  const factory GetLedger({final LedgerStateData? data}) = _$GetLedger;

  @override
  LedgerStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetLedgerCopyWith<_$GetLedger> get copyWith =>
      throw _privateConstructorUsedError;
}
