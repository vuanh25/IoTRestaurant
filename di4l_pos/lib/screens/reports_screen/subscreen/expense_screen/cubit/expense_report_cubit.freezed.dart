// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_report_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpenseReportStateData {
  List<ExpenseReportResponse>? get expenseReport =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseReportStateDataCopyWith<ExpenseReportStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseReportStateDataCopyWith<$Res> {
  factory $ExpenseReportStateDataCopyWith(ExpenseReportStateData value,
          $Res Function(ExpenseReportStateData) then) =
      _$ExpenseReportStateDataCopyWithImpl<$Res, ExpenseReportStateData>;
  @useResult
  $Res call({List<ExpenseReportResponse>? expenseReport});
}

/// @nodoc
class _$ExpenseReportStateDataCopyWithImpl<$Res,
        $Val extends ExpenseReportStateData>
    implements $ExpenseReportStateDataCopyWith<$Res> {
  _$ExpenseReportStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseReport = freezed,
  }) {
    return _then(_value.copyWith(
      expenseReport: freezed == expenseReport
          ? _value.expenseReport
          : expenseReport // ignore: cast_nullable_to_non_nullable
              as List<ExpenseReportResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExpenseReportStateDataCopyWith<$Res>
    implements $ExpenseReportStateDataCopyWith<$Res> {
  factory _$$_ExpenseReportStateDataCopyWith(_$_ExpenseReportStateData value,
          $Res Function(_$_ExpenseReportStateData) then) =
      __$$_ExpenseReportStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExpenseReportResponse>? expenseReport});
}

/// @nodoc
class __$$_ExpenseReportStateDataCopyWithImpl<$Res>
    extends _$ExpenseReportStateDataCopyWithImpl<$Res,
        _$_ExpenseReportStateData>
    implements _$$_ExpenseReportStateDataCopyWith<$Res> {
  __$$_ExpenseReportStateDataCopyWithImpl(_$_ExpenseReportStateData _value,
      $Res Function(_$_ExpenseReportStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseReport = freezed,
  }) {
    return _then(_$_ExpenseReportStateData(
      expenseReport: freezed == expenseReport
          ? _value._expenseReport
          : expenseReport // ignore: cast_nullable_to_non_nullable
              as List<ExpenseReportResponse>?,
    ));
  }
}

/// @nodoc

class _$_ExpenseReportStateData implements _ExpenseReportStateData {
  const _$_ExpenseReportStateData(
      {final List<ExpenseReportResponse>? expenseReport = const []})
      : _expenseReport = expenseReport;

  final List<ExpenseReportResponse>? _expenseReport;
  @override
  @JsonKey()
  List<ExpenseReportResponse>? get expenseReport {
    final value = _expenseReport;
    if (value == null) return null;
    if (_expenseReport is EqualUnmodifiableListView) return _expenseReport;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExpenseReportStateData(expenseReport: $expenseReport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpenseReportStateData &&
            const DeepCollectionEquality()
                .equals(other._expenseReport, _expenseReport));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_expenseReport));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpenseReportStateDataCopyWith<_$_ExpenseReportStateData> get copyWith =>
      __$$_ExpenseReportStateDataCopyWithImpl<_$_ExpenseReportStateData>(
          this, _$identity);
}

abstract class _ExpenseReportStateData implements ExpenseReportStateData {
  const factory _ExpenseReportStateData(
          {final List<ExpenseReportResponse>? expenseReport}) =
      _$_ExpenseReportStateData;

  @override
  List<ExpenseReportResponse>? get expenseReport;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseReportStateDataCopyWith<_$_ExpenseReportStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExpenseReportState {
  ExpenseReportStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseReportStateData? data) initial,
    required TResult Function(ExpenseReportStateData? data) getExpenseReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseReportStateData? data)? initial,
    TResult? Function(ExpenseReportStateData? data)? getExpenseReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseReportStateData? data)? initial,
    TResult Function(ExpenseReportStateData? data)? getExpenseReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetExpenseReport value) getExpenseReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetExpenseReport value)? getExpenseReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetExpenseReport value)? getExpenseReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseReportStateCopyWith<ExpenseReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseReportStateCopyWith<$Res> {
  factory $ExpenseReportStateCopyWith(
          ExpenseReportState value, $Res Function(ExpenseReportState) then) =
      _$ExpenseReportStateCopyWithImpl<$Res, ExpenseReportState>;
  @useResult
  $Res call({ExpenseReportStateData? data});

  $ExpenseReportStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ExpenseReportStateCopyWithImpl<$Res, $Val extends ExpenseReportState>
    implements $ExpenseReportStateCopyWith<$Res> {
  _$ExpenseReportStateCopyWithImpl(this._value, this._then);

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
              as ExpenseReportStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpenseReportStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ExpenseReportStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $ExpenseReportStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseReportStateData? data});

  @override
  $ExpenseReportStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ExpenseReportStateCopyWithImpl<$Res, _$Initial>
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
              as ExpenseReportStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final ExpenseReportStateData? data;

  @override
  String toString() {
    return 'ExpenseReportState.initial(data: $data)';
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
    required TResult Function(ExpenseReportStateData? data) initial,
    required TResult Function(ExpenseReportStateData? data) getExpenseReport,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseReportStateData? data)? initial,
    TResult? Function(ExpenseReportStateData? data)? getExpenseReport,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseReportStateData? data)? initial,
    TResult Function(ExpenseReportStateData? data)? getExpenseReport,
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
    required TResult Function(GetExpenseReport value) getExpenseReport,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetExpenseReport value)? getExpenseReport,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetExpenseReport value)? getExpenseReport,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ExpenseReportState {
  const factory Initial({final ExpenseReportStateData? data}) = _$Initial;

  @override
  ExpenseReportStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetExpenseReportCopyWith<$Res>
    implements $ExpenseReportStateCopyWith<$Res> {
  factory _$$GetExpenseReportCopyWith(
          _$GetExpenseReport value, $Res Function(_$GetExpenseReport) then) =
      __$$GetExpenseReportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseReportStateData? data});

  @override
  $ExpenseReportStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetExpenseReportCopyWithImpl<$Res>
    extends _$ExpenseReportStateCopyWithImpl<$Res, _$GetExpenseReport>
    implements _$$GetExpenseReportCopyWith<$Res> {
  __$$GetExpenseReportCopyWithImpl(
      _$GetExpenseReport _value, $Res Function(_$GetExpenseReport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetExpenseReport(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExpenseReportStateData?,
    ));
  }
}

/// @nodoc

class _$GetExpenseReport implements GetExpenseReport {
  const _$GetExpenseReport({this.data});

  @override
  final ExpenseReportStateData? data;

  @override
  String toString() {
    return 'ExpenseReportState.getExpenseReport(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetExpenseReport &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetExpenseReportCopyWith<_$GetExpenseReport> get copyWith =>
      __$$GetExpenseReportCopyWithImpl<_$GetExpenseReport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseReportStateData? data) initial,
    required TResult Function(ExpenseReportStateData? data) getExpenseReport,
  }) {
    return getExpenseReport(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseReportStateData? data)? initial,
    TResult? Function(ExpenseReportStateData? data)? getExpenseReport,
  }) {
    return getExpenseReport?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseReportStateData? data)? initial,
    TResult Function(ExpenseReportStateData? data)? getExpenseReport,
    required TResult orElse(),
  }) {
    if (getExpenseReport != null) {
      return getExpenseReport(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetExpenseReport value) getExpenseReport,
  }) {
    return getExpenseReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetExpenseReport value)? getExpenseReport,
  }) {
    return getExpenseReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetExpenseReport value)? getExpenseReport,
    required TResult orElse(),
  }) {
    if (getExpenseReport != null) {
      return getExpenseReport(this);
    }
    return orElse();
  }
}

abstract class GetExpenseReport implements ExpenseReportState {
  const factory GetExpenseReport({final ExpenseReportStateData? data}) =
      _$GetExpenseReport;

  @override
  ExpenseReportStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetExpenseReportCopyWith<_$GetExpenseReport> get copyWith =>
      throw _privateConstructorUsedError;
}
