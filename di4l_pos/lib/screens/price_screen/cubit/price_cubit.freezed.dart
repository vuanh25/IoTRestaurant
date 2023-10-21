// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PriceStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<Price> get prices => throw _privateConstructorUsedError;
  Price? get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceStateDataCopyWith<PriceStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceStateDataCopyWith<$Res> {
  factory $PriceStateDataCopyWith(
          PriceStateData value, $Res Function(PriceStateData) then) =
      _$PriceStateDataCopyWithImpl<$Res, PriceStateData>;
  @useResult
  $Res call({StatusType status, List<Price> prices, Price? price});
}

/// @nodoc
class _$PriceStateDataCopyWithImpl<$Res, $Val extends PriceStateData>
    implements $PriceStateDataCopyWith<$Res> {
  _$PriceStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? prices = null,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<Price>,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceStateDataCopyWith<$Res>
    implements $PriceStateDataCopyWith<$Res> {
  factory _$$_PriceStateDataCopyWith(
          _$_PriceStateData value, $Res Function(_$_PriceStateData) then) =
      __$$_PriceStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusType status, List<Price> prices, Price? price});
}

/// @nodoc
class __$$_PriceStateDataCopyWithImpl<$Res>
    extends _$PriceStateDataCopyWithImpl<$Res, _$_PriceStateData>
    implements _$$_PriceStateDataCopyWith<$Res> {
  __$$_PriceStateDataCopyWithImpl(
      _$_PriceStateData _value, $Res Function(_$_PriceStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? prices = null,
    Object? price = freezed,
  }) {
    return _then(_$_PriceStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<Price>,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price?,
    ));
  }
}

/// @nodoc

class _$_PriceStateData implements _PriceStateData {
  const _$_PriceStateData(
      {this.status = StatusType.init,
      final List<Price> prices = const [],
      this.price})
      : _prices = prices;

  @override
  @JsonKey()
  final StatusType status;
  final List<Price> _prices;
  @override
  @JsonKey()
  List<Price> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  @override
  final Price? price;

  @override
  String toString() {
    return 'PriceStateData(status: $status, prices: $prices, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_prices), price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceStateDataCopyWith<_$_PriceStateData> get copyWith =>
      __$$_PriceStateDataCopyWithImpl<_$_PriceStateData>(this, _$identity);
}

abstract class _PriceStateData implements PriceStateData {
  const factory _PriceStateData(
      {final StatusType status,
      final List<Price> prices,
      final Price? price}) = _$_PriceStateData;

  @override
  StatusType get status;
  @override
  List<Price> get prices;
  @override
  Price? get price;
  @override
  @JsonKey(ignore: true)
  _$$_PriceStateDataCopyWith<_$_PriceStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PriceState {
  PriceStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PriceStateData? data) initial,
    required TResult Function(PriceStateData? data) status,
    required TResult Function(PriceStateData? data) getPrices,
    required TResult Function(PriceStateData? data) getPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PriceStateData? data)? initial,
    TResult? Function(PriceStateData? data)? status,
    TResult? Function(PriceStateData? data)? getPrices,
    TResult? Function(PriceStateData? data)? getPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceStateData? data)? initial,
    TResult Function(PriceStateData? data)? status,
    TResult Function(PriceStateData? data)? getPrices,
    TResult Function(PriceStateData? data)? getPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetPrices value) getPrices,
    required TResult Function(GetPrice value) getPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPrices value)? getPrices,
    TResult? Function(GetPrice value)? getPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPrices value)? getPrices,
    TResult Function(GetPrice value)? getPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceStateCopyWith<PriceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceStateCopyWith<$Res> {
  factory $PriceStateCopyWith(
          PriceState value, $Res Function(PriceState) then) =
      _$PriceStateCopyWithImpl<$Res, PriceState>;
  @useResult
  $Res call({PriceStateData? data});

  $PriceStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PriceStateCopyWithImpl<$Res, $Val extends PriceState>
    implements $PriceStateCopyWith<$Res> {
  _$PriceStateCopyWithImpl(this._value, this._then);

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
              as PriceStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PriceStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $PriceStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PriceStateData? data});

  @override
  $PriceStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$PriceStateCopyWithImpl<$Res, _$Initial>
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
              as PriceStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final PriceStateData? data;

  @override
  String toString() {
    return 'PriceState.initial(data: $data)';
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
    required TResult Function(PriceStateData? data) initial,
    required TResult Function(PriceStateData? data) status,
    required TResult Function(PriceStateData? data) getPrices,
    required TResult Function(PriceStateData? data) getPrice,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PriceStateData? data)? initial,
    TResult? Function(PriceStateData? data)? status,
    TResult? Function(PriceStateData? data)? getPrices,
    TResult? Function(PriceStateData? data)? getPrice,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceStateData? data)? initial,
    TResult Function(PriceStateData? data)? status,
    TResult Function(PriceStateData? data)? getPrices,
    TResult Function(PriceStateData? data)? getPrice,
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
    required TResult Function(GetPrices value) getPrices,
    required TResult Function(GetPrice value) getPrice,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPrices value)? getPrices,
    TResult? Function(GetPrice value)? getPrice,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPrices value)? getPrices,
    TResult Function(GetPrice value)? getPrice,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PriceState {
  const factory Initial({final PriceStateData? data}) = _$Initial;

  @override
  PriceStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $PriceStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PriceStateData? data});

  @override
  $PriceStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$PriceStateCopyWithImpl<$Res, _$Status>
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
              as PriceStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final PriceStateData? data;

  @override
  String toString() {
    return 'PriceState.status(data: $data)';
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
    required TResult Function(PriceStateData? data) initial,
    required TResult Function(PriceStateData? data) status,
    required TResult Function(PriceStateData? data) getPrices,
    required TResult Function(PriceStateData? data) getPrice,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PriceStateData? data)? initial,
    TResult? Function(PriceStateData? data)? status,
    TResult? Function(PriceStateData? data)? getPrices,
    TResult? Function(PriceStateData? data)? getPrice,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceStateData? data)? initial,
    TResult Function(PriceStateData? data)? status,
    TResult Function(PriceStateData? data)? getPrices,
    TResult Function(PriceStateData? data)? getPrice,
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
    required TResult Function(GetPrices value) getPrices,
    required TResult Function(GetPrice value) getPrice,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPrices value)? getPrices,
    TResult? Function(GetPrice value)? getPrice,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPrices value)? getPrices,
    TResult Function(GetPrice value)? getPrice,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements PriceState {
  const factory Status({final PriceStateData? data}) = _$Status;

  @override
  PriceStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPricesCopyWith<$Res> implements $PriceStateCopyWith<$Res> {
  factory _$$GetPricesCopyWith(
          _$GetPrices value, $Res Function(_$GetPrices) then) =
      __$$GetPricesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PriceStateData? data});

  @override
  $PriceStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetPricesCopyWithImpl<$Res>
    extends _$PriceStateCopyWithImpl<$Res, _$GetPrices>
    implements _$$GetPricesCopyWith<$Res> {
  __$$GetPricesCopyWithImpl(
      _$GetPrices _value, $Res Function(_$GetPrices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetPrices(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PriceStateData?,
    ));
  }
}

/// @nodoc

class _$GetPrices implements GetPrices {
  const _$GetPrices({this.data});

  @override
  final PriceStateData? data;

  @override
  String toString() {
    return 'PriceState.getPrices(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPrices &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPricesCopyWith<_$GetPrices> get copyWith =>
      __$$GetPricesCopyWithImpl<_$GetPrices>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PriceStateData? data) initial,
    required TResult Function(PriceStateData? data) status,
    required TResult Function(PriceStateData? data) getPrices,
    required TResult Function(PriceStateData? data) getPrice,
  }) {
    return getPrices(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PriceStateData? data)? initial,
    TResult? Function(PriceStateData? data)? status,
    TResult? Function(PriceStateData? data)? getPrices,
    TResult? Function(PriceStateData? data)? getPrice,
  }) {
    return getPrices?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceStateData? data)? initial,
    TResult Function(PriceStateData? data)? status,
    TResult Function(PriceStateData? data)? getPrices,
    TResult Function(PriceStateData? data)? getPrice,
    required TResult orElse(),
  }) {
    if (getPrices != null) {
      return getPrices(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetPrices value) getPrices,
    required TResult Function(GetPrice value) getPrice,
  }) {
    return getPrices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPrices value)? getPrices,
    TResult? Function(GetPrice value)? getPrice,
  }) {
    return getPrices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPrices value)? getPrices,
    TResult Function(GetPrice value)? getPrice,
    required TResult orElse(),
  }) {
    if (getPrices != null) {
      return getPrices(this);
    }
    return orElse();
  }
}

abstract class GetPrices implements PriceState {
  const factory GetPrices({final PriceStateData? data}) = _$GetPrices;

  @override
  PriceStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetPricesCopyWith<_$GetPrices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPriceCopyWith<$Res> implements $PriceStateCopyWith<$Res> {
  factory _$$GetPriceCopyWith(
          _$GetPrice value, $Res Function(_$GetPrice) then) =
      __$$GetPriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PriceStateData? data});

  @override
  $PriceStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetPriceCopyWithImpl<$Res>
    extends _$PriceStateCopyWithImpl<$Res, _$GetPrice>
    implements _$$GetPriceCopyWith<$Res> {
  __$$GetPriceCopyWithImpl(_$GetPrice _value, $Res Function(_$GetPrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetPrice(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PriceStateData?,
    ));
  }
}

/// @nodoc

class _$GetPrice implements GetPrice {
  const _$GetPrice({this.data});

  @override
  final PriceStateData? data;

  @override
  String toString() {
    return 'PriceState.getPrice(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPrice &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPriceCopyWith<_$GetPrice> get copyWith =>
      __$$GetPriceCopyWithImpl<_$GetPrice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PriceStateData? data) initial,
    required TResult Function(PriceStateData? data) status,
    required TResult Function(PriceStateData? data) getPrices,
    required TResult Function(PriceStateData? data) getPrice,
  }) {
    return getPrice(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PriceStateData? data)? initial,
    TResult? Function(PriceStateData? data)? status,
    TResult? Function(PriceStateData? data)? getPrices,
    TResult? Function(PriceStateData? data)? getPrice,
  }) {
    return getPrice?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceStateData? data)? initial,
    TResult Function(PriceStateData? data)? status,
    TResult Function(PriceStateData? data)? getPrices,
    TResult Function(PriceStateData? data)? getPrice,
    required TResult orElse(),
  }) {
    if (getPrice != null) {
      return getPrice(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetPrices value) getPrices,
    required TResult Function(GetPrice value) getPrice,
  }) {
    return getPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPrices value)? getPrices,
    TResult? Function(GetPrice value)? getPrice,
  }) {
    return getPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPrices value)? getPrices,
    TResult Function(GetPrice value)? getPrice,
    required TResult orElse(),
  }) {
    if (getPrice != null) {
      return getPrice(this);
    }
    return orElse();
  }
}

abstract class GetPrice implements PriceState {
  const factory GetPrice({final PriceStateData? data}) = _$GetPrice;

  @override
  PriceStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetPriceCopyWith<_$GetPrice> get copyWith =>
      throw _privateConstructorUsedError;
}
