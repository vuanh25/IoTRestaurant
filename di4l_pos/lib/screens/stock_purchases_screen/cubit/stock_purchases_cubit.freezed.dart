// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_purchases_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StockPurchasesState {
  StockPurchasesStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StockPurchasesStateData? data) initial,
    required TResult Function(StockPurchasesStateData? data) status,
    required TResult Function(StockPurchasesStateData? data) getStockPurchases,
    required TResult Function(StockPurchasesStateData? data) getPurchaseLine,
    required TResult Function(StockPurchasesStateData? data) getContact,
    required TResult Function(StockPurchasesStateData? data) getLocation,
    required TResult Function(StockPurchasesStateData? data)
        getStockPurchaseDetailResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockPurchasesStateData? data)? initial,
    TResult? Function(StockPurchasesStateData? data)? status,
    TResult? Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult? Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult? Function(StockPurchasesStateData? data)? getContact,
    TResult? Function(StockPurchasesStateData? data)? getLocation,
    TResult? Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockPurchasesStateData? data)? initial,
    TResult Function(StockPurchasesStateData? data)? status,
    TResult Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult Function(StockPurchasesStateData? data)? getContact,
    TResult Function(StockPurchasesStateData? data)? getLocation,
    TResult Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetStockPurchases value) getStockPurchases,
    required TResult Function(GetPurchaseLine value) getPurchaseLine,
    required TResult Function(GetContact value) getContact,
    required TResult Function(GetLocation value) getLocation,
    required TResult Function(GetStockPurchaseDetailResponse value)
        getStockPurchaseDetailResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStockPurchases value)? getStockPurchases,
    TResult? Function(GetPurchaseLine value)? getPurchaseLine,
    TResult? Function(GetContact value)? getContact,
    TResult? Function(GetLocation value)? getLocation,
    TResult? Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStockPurchases value)? getStockPurchases,
    TResult Function(GetPurchaseLine value)? getPurchaseLine,
    TResult Function(GetContact value)? getContact,
    TResult Function(GetLocation value)? getLocation,
    TResult Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockPurchasesStateCopyWith<StockPurchasesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockPurchasesStateCopyWith<$Res> {
  factory $StockPurchasesStateCopyWith(
          StockPurchasesState value, $Res Function(StockPurchasesState) then) =
      _$StockPurchasesStateCopyWithImpl<$Res, StockPurchasesState>;
  @useResult
  $Res call({StockPurchasesStateData? data});

  $StockPurchasesStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$StockPurchasesStateCopyWithImpl<$Res, $Val extends StockPurchasesState>
    implements $StockPurchasesStateCopyWith<$Res> {
  _$StockPurchasesStateCopyWithImpl(this._value, this._then);

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
              as StockPurchasesStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StockPurchasesStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StockPurchasesStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $StockPurchasesStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockPurchasesStateData? data});

  @override
  $StockPurchasesStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$StockPurchasesStateCopyWithImpl<$Res, _$Initial>
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
              as StockPurchasesStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final StockPurchasesStateData? data;

  @override
  String toString() {
    return 'StockPurchasesState.initial(data: $data)';
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
    required TResult Function(StockPurchasesStateData? data) initial,
    required TResult Function(StockPurchasesStateData? data) status,
    required TResult Function(StockPurchasesStateData? data) getStockPurchases,
    required TResult Function(StockPurchasesStateData? data) getPurchaseLine,
    required TResult Function(StockPurchasesStateData? data) getContact,
    required TResult Function(StockPurchasesStateData? data) getLocation,
    required TResult Function(StockPurchasesStateData? data)
        getStockPurchaseDetailResponse,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockPurchasesStateData? data)? initial,
    TResult? Function(StockPurchasesStateData? data)? status,
    TResult? Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult? Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult? Function(StockPurchasesStateData? data)? getContact,
    TResult? Function(StockPurchasesStateData? data)? getLocation,
    TResult? Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockPurchasesStateData? data)? initial,
    TResult Function(StockPurchasesStateData? data)? status,
    TResult Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult Function(StockPurchasesStateData? data)? getContact,
    TResult Function(StockPurchasesStateData? data)? getLocation,
    TResult Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
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
    required TResult Function(GetStockPurchases value) getStockPurchases,
    required TResult Function(GetPurchaseLine value) getPurchaseLine,
    required TResult Function(GetContact value) getContact,
    required TResult Function(GetLocation value) getLocation,
    required TResult Function(GetStockPurchaseDetailResponse value)
        getStockPurchaseDetailResponse,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStockPurchases value)? getStockPurchases,
    TResult? Function(GetPurchaseLine value)? getPurchaseLine,
    TResult? Function(GetContact value)? getContact,
    TResult? Function(GetLocation value)? getLocation,
    TResult? Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStockPurchases value)? getStockPurchases,
    TResult Function(GetPurchaseLine value)? getPurchaseLine,
    TResult Function(GetContact value)? getContact,
    TResult Function(GetLocation value)? getLocation,
    TResult Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements StockPurchasesState {
  const factory Initial({final StockPurchasesStateData? data}) = _$Initial;

  @override
  StockPurchasesStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $StockPurchasesStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockPurchasesStateData? data});

  @override
  $StockPurchasesStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$StockPurchasesStateCopyWithImpl<$Res, _$Status>
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
              as StockPurchasesStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final StockPurchasesStateData? data;

  @override
  String toString() {
    return 'StockPurchasesState.status(data: $data)';
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
    required TResult Function(StockPurchasesStateData? data) initial,
    required TResult Function(StockPurchasesStateData? data) status,
    required TResult Function(StockPurchasesStateData? data) getStockPurchases,
    required TResult Function(StockPurchasesStateData? data) getPurchaseLine,
    required TResult Function(StockPurchasesStateData? data) getContact,
    required TResult Function(StockPurchasesStateData? data) getLocation,
    required TResult Function(StockPurchasesStateData? data)
        getStockPurchaseDetailResponse,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockPurchasesStateData? data)? initial,
    TResult? Function(StockPurchasesStateData? data)? status,
    TResult? Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult? Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult? Function(StockPurchasesStateData? data)? getContact,
    TResult? Function(StockPurchasesStateData? data)? getLocation,
    TResult? Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockPurchasesStateData? data)? initial,
    TResult Function(StockPurchasesStateData? data)? status,
    TResult Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult Function(StockPurchasesStateData? data)? getContact,
    TResult Function(StockPurchasesStateData? data)? getLocation,
    TResult Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
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
    required TResult Function(GetStockPurchases value) getStockPurchases,
    required TResult Function(GetPurchaseLine value) getPurchaseLine,
    required TResult Function(GetContact value) getContact,
    required TResult Function(GetLocation value) getLocation,
    required TResult Function(GetStockPurchaseDetailResponse value)
        getStockPurchaseDetailResponse,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStockPurchases value)? getStockPurchases,
    TResult? Function(GetPurchaseLine value)? getPurchaseLine,
    TResult? Function(GetContact value)? getContact,
    TResult? Function(GetLocation value)? getLocation,
    TResult? Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStockPurchases value)? getStockPurchases,
    TResult Function(GetPurchaseLine value)? getPurchaseLine,
    TResult Function(GetContact value)? getContact,
    TResult Function(GetLocation value)? getLocation,
    TResult Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements StockPurchasesState {
  const factory Status({final StockPurchasesStateData? data}) = _$Status;

  @override
  StockPurchasesStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStockPurchasesCopyWith<$Res>
    implements $StockPurchasesStateCopyWith<$Res> {
  factory _$$GetStockPurchasesCopyWith(
          _$GetStockPurchases value, $Res Function(_$GetStockPurchases) then) =
      __$$GetStockPurchasesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockPurchasesStateData? data});

  @override
  $StockPurchasesStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetStockPurchasesCopyWithImpl<$Res>
    extends _$StockPurchasesStateCopyWithImpl<$Res, _$GetStockPurchases>
    implements _$$GetStockPurchasesCopyWith<$Res> {
  __$$GetStockPurchasesCopyWithImpl(
      _$GetStockPurchases _value, $Res Function(_$GetStockPurchases) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetStockPurchases(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StockPurchasesStateData?,
    ));
  }
}

/// @nodoc

class _$GetStockPurchases implements GetStockPurchases {
  const _$GetStockPurchases({this.data});

  @override
  final StockPurchasesStateData? data;

  @override
  String toString() {
    return 'StockPurchasesState.getStockPurchases(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStockPurchases &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStockPurchasesCopyWith<_$GetStockPurchases> get copyWith =>
      __$$GetStockPurchasesCopyWithImpl<_$GetStockPurchases>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StockPurchasesStateData? data) initial,
    required TResult Function(StockPurchasesStateData? data) status,
    required TResult Function(StockPurchasesStateData? data) getStockPurchases,
    required TResult Function(StockPurchasesStateData? data) getPurchaseLine,
    required TResult Function(StockPurchasesStateData? data) getContact,
    required TResult Function(StockPurchasesStateData? data) getLocation,
    required TResult Function(StockPurchasesStateData? data)
        getStockPurchaseDetailResponse,
  }) {
    return getStockPurchases(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockPurchasesStateData? data)? initial,
    TResult? Function(StockPurchasesStateData? data)? status,
    TResult? Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult? Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult? Function(StockPurchasesStateData? data)? getContact,
    TResult? Function(StockPurchasesStateData? data)? getLocation,
    TResult? Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
  }) {
    return getStockPurchases?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockPurchasesStateData? data)? initial,
    TResult Function(StockPurchasesStateData? data)? status,
    TResult Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult Function(StockPurchasesStateData? data)? getContact,
    TResult Function(StockPurchasesStateData? data)? getLocation,
    TResult Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
    required TResult orElse(),
  }) {
    if (getStockPurchases != null) {
      return getStockPurchases(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetStockPurchases value) getStockPurchases,
    required TResult Function(GetPurchaseLine value) getPurchaseLine,
    required TResult Function(GetContact value) getContact,
    required TResult Function(GetLocation value) getLocation,
    required TResult Function(GetStockPurchaseDetailResponse value)
        getStockPurchaseDetailResponse,
  }) {
    return getStockPurchases(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStockPurchases value)? getStockPurchases,
    TResult? Function(GetPurchaseLine value)? getPurchaseLine,
    TResult? Function(GetContact value)? getContact,
    TResult? Function(GetLocation value)? getLocation,
    TResult? Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
  }) {
    return getStockPurchases?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStockPurchases value)? getStockPurchases,
    TResult Function(GetPurchaseLine value)? getPurchaseLine,
    TResult Function(GetContact value)? getContact,
    TResult Function(GetLocation value)? getLocation,
    TResult Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
    required TResult orElse(),
  }) {
    if (getStockPurchases != null) {
      return getStockPurchases(this);
    }
    return orElse();
  }
}

abstract class GetStockPurchases implements StockPurchasesState {
  const factory GetStockPurchases({final StockPurchasesStateData? data}) =
      _$GetStockPurchases;

  @override
  StockPurchasesStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetStockPurchasesCopyWith<_$GetStockPurchases> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPurchaseLineCopyWith<$Res>
    implements $StockPurchasesStateCopyWith<$Res> {
  factory _$$GetPurchaseLineCopyWith(
          _$GetPurchaseLine value, $Res Function(_$GetPurchaseLine) then) =
      __$$GetPurchaseLineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockPurchasesStateData? data});

  @override
  $StockPurchasesStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetPurchaseLineCopyWithImpl<$Res>
    extends _$StockPurchasesStateCopyWithImpl<$Res, _$GetPurchaseLine>
    implements _$$GetPurchaseLineCopyWith<$Res> {
  __$$GetPurchaseLineCopyWithImpl(
      _$GetPurchaseLine _value, $Res Function(_$GetPurchaseLine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetPurchaseLine(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StockPurchasesStateData?,
    ));
  }
}

/// @nodoc

class _$GetPurchaseLine implements GetPurchaseLine {
  const _$GetPurchaseLine({this.data});

  @override
  final StockPurchasesStateData? data;

  @override
  String toString() {
    return 'StockPurchasesState.getPurchaseLine(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPurchaseLine &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPurchaseLineCopyWith<_$GetPurchaseLine> get copyWith =>
      __$$GetPurchaseLineCopyWithImpl<_$GetPurchaseLine>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StockPurchasesStateData? data) initial,
    required TResult Function(StockPurchasesStateData? data) status,
    required TResult Function(StockPurchasesStateData? data) getStockPurchases,
    required TResult Function(StockPurchasesStateData? data) getPurchaseLine,
    required TResult Function(StockPurchasesStateData? data) getContact,
    required TResult Function(StockPurchasesStateData? data) getLocation,
    required TResult Function(StockPurchasesStateData? data)
        getStockPurchaseDetailResponse,
  }) {
    return getPurchaseLine(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockPurchasesStateData? data)? initial,
    TResult? Function(StockPurchasesStateData? data)? status,
    TResult? Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult? Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult? Function(StockPurchasesStateData? data)? getContact,
    TResult? Function(StockPurchasesStateData? data)? getLocation,
    TResult? Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
  }) {
    return getPurchaseLine?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockPurchasesStateData? data)? initial,
    TResult Function(StockPurchasesStateData? data)? status,
    TResult Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult Function(StockPurchasesStateData? data)? getContact,
    TResult Function(StockPurchasesStateData? data)? getLocation,
    TResult Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
    required TResult orElse(),
  }) {
    if (getPurchaseLine != null) {
      return getPurchaseLine(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetStockPurchases value) getStockPurchases,
    required TResult Function(GetPurchaseLine value) getPurchaseLine,
    required TResult Function(GetContact value) getContact,
    required TResult Function(GetLocation value) getLocation,
    required TResult Function(GetStockPurchaseDetailResponse value)
        getStockPurchaseDetailResponse,
  }) {
    return getPurchaseLine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStockPurchases value)? getStockPurchases,
    TResult? Function(GetPurchaseLine value)? getPurchaseLine,
    TResult? Function(GetContact value)? getContact,
    TResult? Function(GetLocation value)? getLocation,
    TResult? Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
  }) {
    return getPurchaseLine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStockPurchases value)? getStockPurchases,
    TResult Function(GetPurchaseLine value)? getPurchaseLine,
    TResult Function(GetContact value)? getContact,
    TResult Function(GetLocation value)? getLocation,
    TResult Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
    required TResult orElse(),
  }) {
    if (getPurchaseLine != null) {
      return getPurchaseLine(this);
    }
    return orElse();
  }
}

abstract class GetPurchaseLine implements StockPurchasesState {
  const factory GetPurchaseLine({final StockPurchasesStateData? data}) =
      _$GetPurchaseLine;

  @override
  StockPurchasesStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetPurchaseLineCopyWith<_$GetPurchaseLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetContactCopyWith<$Res>
    implements $StockPurchasesStateCopyWith<$Res> {
  factory _$$GetContactCopyWith(
          _$GetContact value, $Res Function(_$GetContact) then) =
      __$$GetContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockPurchasesStateData? data});

  @override
  $StockPurchasesStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetContactCopyWithImpl<$Res>
    extends _$StockPurchasesStateCopyWithImpl<$Res, _$GetContact>
    implements _$$GetContactCopyWith<$Res> {
  __$$GetContactCopyWithImpl(
      _$GetContact _value, $Res Function(_$GetContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetContact(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StockPurchasesStateData?,
    ));
  }
}

/// @nodoc

class _$GetContact implements GetContact {
  const _$GetContact({this.data});

  @override
  final StockPurchasesStateData? data;

  @override
  String toString() {
    return 'StockPurchasesState.getContact(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetContact &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetContactCopyWith<_$GetContact> get copyWith =>
      __$$GetContactCopyWithImpl<_$GetContact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StockPurchasesStateData? data) initial,
    required TResult Function(StockPurchasesStateData? data) status,
    required TResult Function(StockPurchasesStateData? data) getStockPurchases,
    required TResult Function(StockPurchasesStateData? data) getPurchaseLine,
    required TResult Function(StockPurchasesStateData? data) getContact,
    required TResult Function(StockPurchasesStateData? data) getLocation,
    required TResult Function(StockPurchasesStateData? data)
        getStockPurchaseDetailResponse,
  }) {
    return getContact(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockPurchasesStateData? data)? initial,
    TResult? Function(StockPurchasesStateData? data)? status,
    TResult? Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult? Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult? Function(StockPurchasesStateData? data)? getContact,
    TResult? Function(StockPurchasesStateData? data)? getLocation,
    TResult? Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
  }) {
    return getContact?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockPurchasesStateData? data)? initial,
    TResult Function(StockPurchasesStateData? data)? status,
    TResult Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult Function(StockPurchasesStateData? data)? getContact,
    TResult Function(StockPurchasesStateData? data)? getLocation,
    TResult Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
    required TResult orElse(),
  }) {
    if (getContact != null) {
      return getContact(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetStockPurchases value) getStockPurchases,
    required TResult Function(GetPurchaseLine value) getPurchaseLine,
    required TResult Function(GetContact value) getContact,
    required TResult Function(GetLocation value) getLocation,
    required TResult Function(GetStockPurchaseDetailResponse value)
        getStockPurchaseDetailResponse,
  }) {
    return getContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStockPurchases value)? getStockPurchases,
    TResult? Function(GetPurchaseLine value)? getPurchaseLine,
    TResult? Function(GetContact value)? getContact,
    TResult? Function(GetLocation value)? getLocation,
    TResult? Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
  }) {
    return getContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStockPurchases value)? getStockPurchases,
    TResult Function(GetPurchaseLine value)? getPurchaseLine,
    TResult Function(GetContact value)? getContact,
    TResult Function(GetLocation value)? getLocation,
    TResult Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
    required TResult orElse(),
  }) {
    if (getContact != null) {
      return getContact(this);
    }
    return orElse();
  }
}

abstract class GetContact implements StockPurchasesState {
  const factory GetContact({final StockPurchasesStateData? data}) =
      _$GetContact;

  @override
  StockPurchasesStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetContactCopyWith<_$GetContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLocationCopyWith<$Res>
    implements $StockPurchasesStateCopyWith<$Res> {
  factory _$$GetLocationCopyWith(
          _$GetLocation value, $Res Function(_$GetLocation) then) =
      __$$GetLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockPurchasesStateData? data});

  @override
  $StockPurchasesStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetLocationCopyWithImpl<$Res>
    extends _$StockPurchasesStateCopyWithImpl<$Res, _$GetLocation>
    implements _$$GetLocationCopyWith<$Res> {
  __$$GetLocationCopyWithImpl(
      _$GetLocation _value, $Res Function(_$GetLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetLocation(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StockPurchasesStateData?,
    ));
  }
}

/// @nodoc

class _$GetLocation implements GetLocation {
  const _$GetLocation({this.data});

  @override
  final StockPurchasesStateData? data;

  @override
  String toString() {
    return 'StockPurchasesState.getLocation(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocation &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLocationCopyWith<_$GetLocation> get copyWith =>
      __$$GetLocationCopyWithImpl<_$GetLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StockPurchasesStateData? data) initial,
    required TResult Function(StockPurchasesStateData? data) status,
    required TResult Function(StockPurchasesStateData? data) getStockPurchases,
    required TResult Function(StockPurchasesStateData? data) getPurchaseLine,
    required TResult Function(StockPurchasesStateData? data) getContact,
    required TResult Function(StockPurchasesStateData? data) getLocation,
    required TResult Function(StockPurchasesStateData? data)
        getStockPurchaseDetailResponse,
  }) {
    return getLocation(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockPurchasesStateData? data)? initial,
    TResult? Function(StockPurchasesStateData? data)? status,
    TResult? Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult? Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult? Function(StockPurchasesStateData? data)? getContact,
    TResult? Function(StockPurchasesStateData? data)? getLocation,
    TResult? Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
  }) {
    return getLocation?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockPurchasesStateData? data)? initial,
    TResult Function(StockPurchasesStateData? data)? status,
    TResult Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult Function(StockPurchasesStateData? data)? getContact,
    TResult Function(StockPurchasesStateData? data)? getLocation,
    TResult Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
    required TResult orElse(),
  }) {
    if (getLocation != null) {
      return getLocation(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetStockPurchases value) getStockPurchases,
    required TResult Function(GetPurchaseLine value) getPurchaseLine,
    required TResult Function(GetContact value) getContact,
    required TResult Function(GetLocation value) getLocation,
    required TResult Function(GetStockPurchaseDetailResponse value)
        getStockPurchaseDetailResponse,
  }) {
    return getLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStockPurchases value)? getStockPurchases,
    TResult? Function(GetPurchaseLine value)? getPurchaseLine,
    TResult? Function(GetContact value)? getContact,
    TResult? Function(GetLocation value)? getLocation,
    TResult? Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
  }) {
    return getLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStockPurchases value)? getStockPurchases,
    TResult Function(GetPurchaseLine value)? getPurchaseLine,
    TResult Function(GetContact value)? getContact,
    TResult Function(GetLocation value)? getLocation,
    TResult Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
    required TResult orElse(),
  }) {
    if (getLocation != null) {
      return getLocation(this);
    }
    return orElse();
  }
}

abstract class GetLocation implements StockPurchasesState {
  const factory GetLocation({final StockPurchasesStateData? data}) =
      _$GetLocation;

  @override
  StockPurchasesStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetLocationCopyWith<_$GetLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStockPurchaseDetailResponseCopyWith<$Res>
    implements $StockPurchasesStateCopyWith<$Res> {
  factory _$$GetStockPurchaseDetailResponseCopyWith(
          _$GetStockPurchaseDetailResponse value,
          $Res Function(_$GetStockPurchaseDetailResponse) then) =
      __$$GetStockPurchaseDetailResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockPurchasesStateData? data});

  @override
  $StockPurchasesStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetStockPurchaseDetailResponseCopyWithImpl<$Res>
    extends _$StockPurchasesStateCopyWithImpl<$Res,
        _$GetStockPurchaseDetailResponse>
    implements _$$GetStockPurchaseDetailResponseCopyWith<$Res> {
  __$$GetStockPurchaseDetailResponseCopyWithImpl(
      _$GetStockPurchaseDetailResponse _value,
      $Res Function(_$GetStockPurchaseDetailResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetStockPurchaseDetailResponse(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StockPurchasesStateData?,
    ));
  }
}

/// @nodoc

class _$GetStockPurchaseDetailResponse
    implements GetStockPurchaseDetailResponse {
  const _$GetStockPurchaseDetailResponse({this.data});

  @override
  final StockPurchasesStateData? data;

  @override
  String toString() {
    return 'StockPurchasesState.getStockPurchaseDetailResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStockPurchaseDetailResponse &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStockPurchaseDetailResponseCopyWith<_$GetStockPurchaseDetailResponse>
      get copyWith => __$$GetStockPurchaseDetailResponseCopyWithImpl<
          _$GetStockPurchaseDetailResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StockPurchasesStateData? data) initial,
    required TResult Function(StockPurchasesStateData? data) status,
    required TResult Function(StockPurchasesStateData? data) getStockPurchases,
    required TResult Function(StockPurchasesStateData? data) getPurchaseLine,
    required TResult Function(StockPurchasesStateData? data) getContact,
    required TResult Function(StockPurchasesStateData? data) getLocation,
    required TResult Function(StockPurchasesStateData? data)
        getStockPurchaseDetailResponse,
  }) {
    return getStockPurchaseDetailResponse(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockPurchasesStateData? data)? initial,
    TResult? Function(StockPurchasesStateData? data)? status,
    TResult? Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult? Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult? Function(StockPurchasesStateData? data)? getContact,
    TResult? Function(StockPurchasesStateData? data)? getLocation,
    TResult? Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
  }) {
    return getStockPurchaseDetailResponse?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockPurchasesStateData? data)? initial,
    TResult Function(StockPurchasesStateData? data)? status,
    TResult Function(StockPurchasesStateData? data)? getStockPurchases,
    TResult Function(StockPurchasesStateData? data)? getPurchaseLine,
    TResult Function(StockPurchasesStateData? data)? getContact,
    TResult Function(StockPurchasesStateData? data)? getLocation,
    TResult Function(StockPurchasesStateData? data)?
        getStockPurchaseDetailResponse,
    required TResult orElse(),
  }) {
    if (getStockPurchaseDetailResponse != null) {
      return getStockPurchaseDetailResponse(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetStockPurchases value) getStockPurchases,
    required TResult Function(GetPurchaseLine value) getPurchaseLine,
    required TResult Function(GetContact value) getContact,
    required TResult Function(GetLocation value) getLocation,
    required TResult Function(GetStockPurchaseDetailResponse value)
        getStockPurchaseDetailResponse,
  }) {
    return getStockPurchaseDetailResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStockPurchases value)? getStockPurchases,
    TResult? Function(GetPurchaseLine value)? getPurchaseLine,
    TResult? Function(GetContact value)? getContact,
    TResult? Function(GetLocation value)? getLocation,
    TResult? Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
  }) {
    return getStockPurchaseDetailResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStockPurchases value)? getStockPurchases,
    TResult Function(GetPurchaseLine value)? getPurchaseLine,
    TResult Function(GetContact value)? getContact,
    TResult Function(GetLocation value)? getLocation,
    TResult Function(GetStockPurchaseDetailResponse value)?
        getStockPurchaseDetailResponse,
    required TResult orElse(),
  }) {
    if (getStockPurchaseDetailResponse != null) {
      return getStockPurchaseDetailResponse(this);
    }
    return orElse();
  }
}

abstract class GetStockPurchaseDetailResponse implements StockPurchasesState {
  const factory GetStockPurchaseDetailResponse(
      {final StockPurchasesStateData? data}) = _$GetStockPurchaseDetailResponse;

  @override
  StockPurchasesStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetStockPurchaseDetailResponseCopyWith<_$GetStockPurchaseDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StockPurchasesStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<StockPurchasesData> get stockPurchases =>
      throw _privateConstructorUsedError;
  List<StockPurchasesData> get stockPurchasesOriginal =>
      throw _privateConstructorUsedError;
  List<PurchaseLine> get purchaseLine => throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  StockPurchaseDetailResponse? get stockPurchaseDetailResponse =>
      throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockPurchasesStateDataCopyWith<StockPurchasesStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockPurchasesStateDataCopyWith<$Res> {
  factory $StockPurchasesStateDataCopyWith(StockPurchasesStateData value,
          $Res Function(StockPurchasesStateData) then) =
      _$StockPurchasesStateDataCopyWithImpl<$Res, StockPurchasesStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<StockPurchasesData> stockPurchases,
      List<StockPurchasesData> stockPurchasesOriginal,
      List<PurchaseLine> purchaseLine,
      Contact? contact,
      Location? location,
      StockPurchaseDetailResponse? stockPurchaseDetailResponse,
      int? page});
}

/// @nodoc
class _$StockPurchasesStateDataCopyWithImpl<$Res,
        $Val extends StockPurchasesStateData>
    implements $StockPurchasesStateDataCopyWith<$Res> {
  _$StockPurchasesStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? stockPurchases = null,
    Object? stockPurchasesOriginal = null,
    Object? purchaseLine = null,
    Object? contact = freezed,
    Object? location = freezed,
    Object? stockPurchaseDetailResponse = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      stockPurchases: null == stockPurchases
          ? _value.stockPurchases
          : stockPurchases // ignore: cast_nullable_to_non_nullable
              as List<StockPurchasesData>,
      stockPurchasesOriginal: null == stockPurchasesOriginal
          ? _value.stockPurchasesOriginal
          : stockPurchasesOriginal // ignore: cast_nullable_to_non_nullable
              as List<StockPurchasesData>,
      purchaseLine: null == purchaseLine
          ? _value.purchaseLine
          : purchaseLine // ignore: cast_nullable_to_non_nullable
              as List<PurchaseLine>,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      stockPurchaseDetailResponse: freezed == stockPurchaseDetailResponse
          ? _value.stockPurchaseDetailResponse
          : stockPurchaseDetailResponse // ignore: cast_nullable_to_non_nullable
              as StockPurchaseDetailResponse?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StockTransfersStateDataCopyWith<$Res>
    implements $StockPurchasesStateDataCopyWith<$Res> {
  factory _$$_StockTransfersStateDataCopyWith(_$_StockTransfersStateData value,
          $Res Function(_$_StockTransfersStateData) then) =
      __$$_StockTransfersStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<StockPurchasesData> stockPurchases,
      List<StockPurchasesData> stockPurchasesOriginal,
      List<PurchaseLine> purchaseLine,
      Contact? contact,
      Location? location,
      StockPurchaseDetailResponse? stockPurchaseDetailResponse,
      int? page});
}

/// @nodoc
class __$$_StockTransfersStateDataCopyWithImpl<$Res>
    extends _$StockPurchasesStateDataCopyWithImpl<$Res,
        _$_StockTransfersStateData>
    implements _$$_StockTransfersStateDataCopyWith<$Res> {
  __$$_StockTransfersStateDataCopyWithImpl(_$_StockTransfersStateData _value,
      $Res Function(_$_StockTransfersStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? stockPurchases = null,
    Object? stockPurchasesOriginal = null,
    Object? purchaseLine = null,
    Object? contact = freezed,
    Object? location = freezed,
    Object? stockPurchaseDetailResponse = freezed,
    Object? page = freezed,
  }) {
    return _then(_$_StockTransfersStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      stockPurchases: null == stockPurchases
          ? _value._stockPurchases
          : stockPurchases // ignore: cast_nullable_to_non_nullable
              as List<StockPurchasesData>,
      stockPurchasesOriginal: null == stockPurchasesOriginal
          ? _value._stockPurchasesOriginal
          : stockPurchasesOriginal // ignore: cast_nullable_to_non_nullable
              as List<StockPurchasesData>,
      purchaseLine: null == purchaseLine
          ? _value._purchaseLine
          : purchaseLine // ignore: cast_nullable_to_non_nullable
              as List<PurchaseLine>,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      stockPurchaseDetailResponse: freezed == stockPurchaseDetailResponse
          ? _value.stockPurchaseDetailResponse
          : stockPurchaseDetailResponse // ignore: cast_nullable_to_non_nullable
              as StockPurchaseDetailResponse?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_StockTransfersStateData implements _StockTransfersStateData {
  const _$_StockTransfersStateData(
      {this.status = StatusType.init,
      final List<StockPurchasesData> stockPurchases = const [],
      final List<StockPurchasesData> stockPurchasesOriginal = const [],
      final List<PurchaseLine> purchaseLine = const [],
      this.contact,
      this.location,
      this.stockPurchaseDetailResponse,
      this.page = 0})
      : _stockPurchases = stockPurchases,
        _stockPurchasesOriginal = stockPurchasesOriginal,
        _purchaseLine = purchaseLine;

  @override
  @JsonKey()
  final StatusType status;
  final List<StockPurchasesData> _stockPurchases;
  @override
  @JsonKey()
  List<StockPurchasesData> get stockPurchases {
    if (_stockPurchases is EqualUnmodifiableListView) return _stockPurchases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stockPurchases);
  }

  final List<StockPurchasesData> _stockPurchasesOriginal;
  @override
  @JsonKey()
  List<StockPurchasesData> get stockPurchasesOriginal {
    if (_stockPurchasesOriginal is EqualUnmodifiableListView)
      return _stockPurchasesOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stockPurchasesOriginal);
  }

  final List<PurchaseLine> _purchaseLine;
  @override
  @JsonKey()
  List<PurchaseLine> get purchaseLine {
    if (_purchaseLine is EqualUnmodifiableListView) return _purchaseLine;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purchaseLine);
  }

  @override
  final Contact? contact;
  @override
  final Location? location;
  @override
  final StockPurchaseDetailResponse? stockPurchaseDetailResponse;
  @override
  @JsonKey()
  final int? page;

  @override
  String toString() {
    return 'StockPurchasesStateData(status: $status, stockPurchases: $stockPurchases, stockPurchasesOriginal: $stockPurchasesOriginal, purchaseLine: $purchaseLine, contact: $contact, location: $location, stockPurchaseDetailResponse: $stockPurchaseDetailResponse, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockTransfersStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._stockPurchases, _stockPurchases) &&
            const DeepCollectionEquality().equals(
                other._stockPurchasesOriginal, _stockPurchasesOriginal) &&
            const DeepCollectionEquality()
                .equals(other._purchaseLine, _purchaseLine) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.stockPurchaseDetailResponse,
                    stockPurchaseDetailResponse) ||
                other.stockPurchaseDetailResponse ==
                    stockPurchaseDetailResponse) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_stockPurchases),
      const DeepCollectionEquality().hash(_stockPurchasesOriginal),
      const DeepCollectionEquality().hash(_purchaseLine),
      contact,
      location,
      stockPurchaseDetailResponse,
      page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StockTransfersStateDataCopyWith<_$_StockTransfersStateData>
      get copyWith =>
          __$$_StockTransfersStateDataCopyWithImpl<_$_StockTransfersStateData>(
              this, _$identity);
}

abstract class _StockTransfersStateData implements StockPurchasesStateData {
  const factory _StockTransfersStateData(
      {final StatusType status,
      final List<StockPurchasesData> stockPurchases,
      final List<StockPurchasesData> stockPurchasesOriginal,
      final List<PurchaseLine> purchaseLine,
      final Contact? contact,
      final Location? location,
      final StockPurchaseDetailResponse? stockPurchaseDetailResponse,
      final int? page}) = _$_StockTransfersStateData;

  @override
  StatusType get status;
  @override
  List<StockPurchasesData> get stockPurchases;
  @override
  List<StockPurchasesData> get stockPurchasesOriginal;
  @override
  List<PurchaseLine> get purchaseLine;
  @override
  Contact? get contact;
  @override
  Location? get location;
  @override
  StockPurchaseDetailResponse? get stockPurchaseDetailResponse;
  @override
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$_StockTransfersStateDataCopyWith<_$_StockTransfersStateData>
      get copyWith => throw _privateConstructorUsedError;
}
