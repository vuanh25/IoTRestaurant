// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_report_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SellReportStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<SellReport> get sellReports => throw _privateConstructorUsedError;
  List<SellData> get orders => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  SellReportResponse? get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellReportStateDataCopyWith<SellReportStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellReportStateDataCopyWith<$Res> {
  factory $SellReportStateDataCopyWith(
          SellReportStateData value, $Res Function(SellReportStateData) then) =
      _$SellReportStateDataCopyWithImpl<$Res, SellReportStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<SellReport> sellReports,
      List<SellData> orders,
      int? page,
      SellReportResponse? response});
}

/// @nodoc
class _$SellReportStateDataCopyWithImpl<$Res, $Val extends SellReportStateData>
    implements $SellReportStateDataCopyWith<$Res> {
  _$SellReportStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sellReports = null,
    Object? orders = null,
    Object? page = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      sellReports: null == sellReports
          ? _value.sellReports
          : sellReports // ignore: cast_nullable_to_non_nullable
              as List<SellReport>,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<SellData>,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SellReportResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesOrderStateDataCopyWith<$Res>
    implements $SellReportStateDataCopyWith<$Res> {
  factory _$$_SalesOrderStateDataCopyWith(_$_SalesOrderStateData value,
          $Res Function(_$_SalesOrderStateData) then) =
      __$$_SalesOrderStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<SellReport> sellReports,
      List<SellData> orders,
      int? page,
      SellReportResponse? response});
}

/// @nodoc
class __$$_SalesOrderStateDataCopyWithImpl<$Res>
    extends _$SellReportStateDataCopyWithImpl<$Res, _$_SalesOrderStateData>
    implements _$$_SalesOrderStateDataCopyWith<$Res> {
  __$$_SalesOrderStateDataCopyWithImpl(_$_SalesOrderStateData _value,
      $Res Function(_$_SalesOrderStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sellReports = null,
    Object? orders = null,
    Object? page = freezed,
    Object? response = freezed,
  }) {
    return _then(_$_SalesOrderStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      sellReports: null == sellReports
          ? _value._sellReports
          : sellReports // ignore: cast_nullable_to_non_nullable
              as List<SellReport>,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<SellData>,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SellReportResponse?,
    ));
  }
}

/// @nodoc

class _$_SalesOrderStateData implements _SalesOrderStateData {
  const _$_SalesOrderStateData(
      {this.status = StatusType.init,
      final List<SellReport> sellReports = const [],
      final List<SellData> orders = const [],
      this.page = 0,
      this.response})
      : _sellReports = sellReports,
        _orders = orders;

  @override
  @JsonKey()
  final StatusType status;
  final List<SellReport> _sellReports;
  @override
  @JsonKey()
  List<SellReport> get sellReports {
    if (_sellReports is EqualUnmodifiableListView) return _sellReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sellReports);
  }

  final List<SellData> _orders;
  @override
  @JsonKey()
  List<SellData> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  @JsonKey()
  final int? page;
  @override
  final SellReportResponse? response;

  @override
  String toString() {
    return 'SellReportStateData(status: $status, sellReports: $sellReports, orders: $orders, page: $page, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesOrderStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._sellReports, _sellReports) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_sellReports),
      const DeepCollectionEquality().hash(_orders),
      page,
      response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesOrderStateDataCopyWith<_$_SalesOrderStateData> get copyWith =>
      __$$_SalesOrderStateDataCopyWithImpl<_$_SalesOrderStateData>(
          this, _$identity);
}

abstract class _SalesOrderStateData implements SellReportStateData {
  const factory _SalesOrderStateData(
      {final StatusType status,
      final List<SellReport> sellReports,
      final List<SellData> orders,
      final int? page,
      final SellReportResponse? response}) = _$_SalesOrderStateData;

  @override
  StatusType get status;
  @override
  List<SellReport> get sellReports;
  @override
  List<SellData> get orders;
  @override
  int? get page;
  @override
  SellReportResponse? get response;
  @override
  @JsonKey(ignore: true)
  _$$_SalesOrderStateDataCopyWith<_$_SalesOrderStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SellReportState {
  SellReportStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SellReportStateData? data) initial,
    required TResult Function(SellReportStateData? data) status,
    required TResult Function(SellReportStateData? data) getSellReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SellReportStateData? data)? initial,
    TResult? Function(SellReportStateData? data)? status,
    TResult? Function(SellReportStateData? data)? getSellReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SellReportStateData? data)? initial,
    TResult Function(SellReportStateData? data)? status,
    TResult Function(SellReportStateData? data)? getSellReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetSellReport value) getSellReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetSellReport value)? getSellReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetSellReport value)? getSellReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellReportStateCopyWith<SellReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellReportStateCopyWith<$Res> {
  factory $SellReportStateCopyWith(
          SellReportState value, $Res Function(SellReportState) then) =
      _$SellReportStateCopyWithImpl<$Res, SellReportState>;
  @useResult
  $Res call({SellReportStateData? data});

  $SellReportStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SellReportStateCopyWithImpl<$Res, $Val extends SellReportState>
    implements $SellReportStateCopyWith<$Res> {
  _$SellReportStateCopyWithImpl(this._value, this._then);

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
              as SellReportStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SellReportStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SellReportStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $SellReportStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SellReportStateData? data});

  @override
  $SellReportStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$SellReportStateCopyWithImpl<$Res, _$Initial>
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
              as SellReportStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final SellReportStateData? data;

  @override
  String toString() {
    return 'SellReportState.initial(data: $data)';
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
    required TResult Function(SellReportStateData? data) initial,
    required TResult Function(SellReportStateData? data) status,
    required TResult Function(SellReportStateData? data) getSellReport,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SellReportStateData? data)? initial,
    TResult? Function(SellReportStateData? data)? status,
    TResult? Function(SellReportStateData? data)? getSellReport,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SellReportStateData? data)? initial,
    TResult Function(SellReportStateData? data)? status,
    TResult Function(SellReportStateData? data)? getSellReport,
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
    required TResult Function(GetSellReport value) getSellReport,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetSellReport value)? getSellReport,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetSellReport value)? getSellReport,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SellReportState {
  const factory Initial({final SellReportStateData? data}) = _$Initial;

  @override
  SellReportStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $SellReportStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SellReportStateData? data});

  @override
  $SellReportStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$SellReportStateCopyWithImpl<$Res, _$Status>
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
              as SellReportStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final SellReportStateData? data;

  @override
  String toString() {
    return 'SellReportState.status(data: $data)';
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
    required TResult Function(SellReportStateData? data) initial,
    required TResult Function(SellReportStateData? data) status,
    required TResult Function(SellReportStateData? data) getSellReport,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SellReportStateData? data)? initial,
    TResult? Function(SellReportStateData? data)? status,
    TResult? Function(SellReportStateData? data)? getSellReport,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SellReportStateData? data)? initial,
    TResult Function(SellReportStateData? data)? status,
    TResult Function(SellReportStateData? data)? getSellReport,
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
    required TResult Function(GetSellReport value) getSellReport,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetSellReport value)? getSellReport,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetSellReport value)? getSellReport,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements SellReportState {
  const factory Status({final SellReportStateData? data}) = _$Status;

  @override
  SellReportStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSellReportCopyWith<$Res>
    implements $SellReportStateCopyWith<$Res> {
  factory _$$GetSellReportCopyWith(
          _$GetSellReport value, $Res Function(_$GetSellReport) then) =
      __$$GetSellReportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SellReportStateData? data});

  @override
  $SellReportStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetSellReportCopyWithImpl<$Res>
    extends _$SellReportStateCopyWithImpl<$Res, _$GetSellReport>
    implements _$$GetSellReportCopyWith<$Res> {
  __$$GetSellReportCopyWithImpl(
      _$GetSellReport _value, $Res Function(_$GetSellReport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetSellReport(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SellReportStateData?,
    ));
  }
}

/// @nodoc

class _$GetSellReport implements GetSellReport {
  const _$GetSellReport({this.data});

  @override
  final SellReportStateData? data;

  @override
  String toString() {
    return 'SellReportState.getSellReport(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSellReport &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSellReportCopyWith<_$GetSellReport> get copyWith =>
      __$$GetSellReportCopyWithImpl<_$GetSellReport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SellReportStateData? data) initial,
    required TResult Function(SellReportStateData? data) status,
    required TResult Function(SellReportStateData? data) getSellReport,
  }) {
    return getSellReport(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SellReportStateData? data)? initial,
    TResult? Function(SellReportStateData? data)? status,
    TResult? Function(SellReportStateData? data)? getSellReport,
  }) {
    return getSellReport?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SellReportStateData? data)? initial,
    TResult Function(SellReportStateData? data)? status,
    TResult Function(SellReportStateData? data)? getSellReport,
    required TResult orElse(),
  }) {
    if (getSellReport != null) {
      return getSellReport(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetSellReport value) getSellReport,
  }) {
    return getSellReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetSellReport value)? getSellReport,
  }) {
    return getSellReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetSellReport value)? getSellReport,
    required TResult orElse(),
  }) {
    if (getSellReport != null) {
      return getSellReport(this);
    }
    return orElse();
  }
}

abstract class GetSellReport implements SellReportState {
  const factory GetSellReport({final SellReportStateData? data}) =
      _$GetSellReport;

  @override
  SellReportStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetSellReportCopyWith<_$GetSellReport> get copyWith =>
      throw _privateConstructorUsedError;
}
