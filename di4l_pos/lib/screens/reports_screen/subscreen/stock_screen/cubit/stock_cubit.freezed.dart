// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StockStateData {
  List<ReportStockData> get reportStocks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockStateDataCopyWith<StockStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockStateDataCopyWith<$Res> {
  factory $StockStateDataCopyWith(
          StockStateData value, $Res Function(StockStateData) then) =
      _$StockStateDataCopyWithImpl<$Res, StockStateData>;
  @useResult
  $Res call({List<ReportStockData> reportStocks});
}

/// @nodoc
class _$StockStateDataCopyWithImpl<$Res, $Val extends StockStateData>
    implements $StockStateDataCopyWith<$Res> {
  _$StockStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportStocks = null,
  }) {
    return _then(_value.copyWith(
      reportStocks: null == reportStocks
          ? _value.reportStocks
          : reportStocks // ignore: cast_nullable_to_non_nullable
              as List<ReportStockData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StockStateDataCopyWith<$Res>
    implements $StockStateDataCopyWith<$Res> {
  factory _$$_StockStateDataCopyWith(
          _$_StockStateData value, $Res Function(_$_StockStateData) then) =
      __$$_StockStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReportStockData> reportStocks});
}

/// @nodoc
class __$$_StockStateDataCopyWithImpl<$Res>
    extends _$StockStateDataCopyWithImpl<$Res, _$_StockStateData>
    implements _$$_StockStateDataCopyWith<$Res> {
  __$$_StockStateDataCopyWithImpl(
      _$_StockStateData _value, $Res Function(_$_StockStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportStocks = null,
  }) {
    return _then(_$_StockStateData(
      reportStocks: null == reportStocks
          ? _value._reportStocks
          : reportStocks // ignore: cast_nullable_to_non_nullable
              as List<ReportStockData>,
    ));
  }
}

/// @nodoc

class _$_StockStateData implements _StockStateData {
  const _$_StockStateData({final List<ReportStockData> reportStocks = const []})
      : _reportStocks = reportStocks;

  final List<ReportStockData> _reportStocks;
  @override
  @JsonKey()
  List<ReportStockData> get reportStocks {
    if (_reportStocks is EqualUnmodifiableListView) return _reportStocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reportStocks);
  }

  @override
  String toString() {
    return 'StockStateData(reportStocks: $reportStocks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockStateData &&
            const DeepCollectionEquality()
                .equals(other._reportStocks, _reportStocks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reportStocks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StockStateDataCopyWith<_$_StockStateData> get copyWith =>
      __$$_StockStateDataCopyWithImpl<_$_StockStateData>(this, _$identity);
}

abstract class _StockStateData implements StockStateData {
  const factory _StockStateData({final List<ReportStockData> reportStocks}) =
      _$_StockStateData;

  @override
  List<ReportStockData> get reportStocks;
  @override
  @JsonKey(ignore: true)
  _$$_StockStateDataCopyWith<_$_StockStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StockState {
  StockStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StockStateData? data) initial,
    required TResult Function(StockStateData? data) getReportStocks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockStateData? data)? initial,
    TResult? Function(StockStateData? data)? getReportStocks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockStateData? data)? initial,
    TResult Function(StockStateData? data)? getReportStocks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetReportStocks value) getReportStocks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetReportStocks value)? getReportStocks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetReportStocks value)? getReportStocks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockStateCopyWith<StockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockStateCopyWith<$Res> {
  factory $StockStateCopyWith(
          StockState value, $Res Function(StockState) then) =
      _$StockStateCopyWithImpl<$Res, StockState>;
  @useResult
  $Res call({StockStateData? data});

  $StockStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$StockStateCopyWithImpl<$Res, $Val extends StockState>
    implements $StockStateCopyWith<$Res> {
  _$StockStateCopyWithImpl(this._value, this._then);

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
              as StockStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StockStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StockStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $StockStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockStateData? data});

  @override
  $StockStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$Initial>
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
              as StockStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final StockStateData? data;

  @override
  String toString() {
    return 'StockState.initial(data: $data)';
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
    required TResult Function(StockStateData? data) initial,
    required TResult Function(StockStateData? data) getReportStocks,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockStateData? data)? initial,
    TResult? Function(StockStateData? data)? getReportStocks,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockStateData? data)? initial,
    TResult Function(StockStateData? data)? getReportStocks,
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
    required TResult Function(GetReportStocks value) getReportStocks,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetReportStocks value)? getReportStocks,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetReportStocks value)? getReportStocks,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements StockState {
  const factory Initial({final StockStateData? data}) = _$Initial;

  @override
  StockStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetReportStocksCopyWith<$Res>
    implements $StockStateCopyWith<$Res> {
  factory _$$GetReportStocksCopyWith(
          _$GetReportStocks value, $Res Function(_$GetReportStocks) then) =
      __$$GetReportStocksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockStateData? data});

  @override
  $StockStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetReportStocksCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$GetReportStocks>
    implements _$$GetReportStocksCopyWith<$Res> {
  __$$GetReportStocksCopyWithImpl(
      _$GetReportStocks _value, $Res Function(_$GetReportStocks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetReportStocks(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StockStateData?,
    ));
  }
}

/// @nodoc

class _$GetReportStocks implements GetReportStocks {
  const _$GetReportStocks({this.data});

  @override
  final StockStateData? data;

  @override
  String toString() {
    return 'StockState.getReportStocks(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReportStocks &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReportStocksCopyWith<_$GetReportStocks> get copyWith =>
      __$$GetReportStocksCopyWithImpl<_$GetReportStocks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StockStateData? data) initial,
    required TResult Function(StockStateData? data) getReportStocks,
  }) {
    return getReportStocks(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockStateData? data)? initial,
    TResult? Function(StockStateData? data)? getReportStocks,
  }) {
    return getReportStocks?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockStateData? data)? initial,
    TResult Function(StockStateData? data)? getReportStocks,
    required TResult orElse(),
  }) {
    if (getReportStocks != null) {
      return getReportStocks(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetReportStocks value) getReportStocks,
  }) {
    return getReportStocks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetReportStocks value)? getReportStocks,
  }) {
    return getReportStocks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetReportStocks value)? getReportStocks,
    required TResult orElse(),
  }) {
    if (getReportStocks != null) {
      return getReportStocks(this);
    }
    return orElse();
  }
}

abstract class GetReportStocks implements StockState {
  const factory GetReportStocks({final StockStateData? data}) =
      _$GetReportStocks;

  @override
  StockStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetReportStocksCopyWith<_$GetReportStocks> get copyWith =>
      throw _privateConstructorUsedError;
}
