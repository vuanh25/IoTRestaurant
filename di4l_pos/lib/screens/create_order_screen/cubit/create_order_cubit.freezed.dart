// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateOrderStateData {
  String get discountType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateOrderStateDataCopyWith<CreateOrderStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderStateDataCopyWith<$Res> {
  factory $CreateOrderStateDataCopyWith(CreateOrderStateData value,
          $Res Function(CreateOrderStateData) then) =
      _$CreateOrderStateDataCopyWithImpl<$Res, CreateOrderStateData>;
  @useResult
  $Res call({String discountType});
}

/// @nodoc
class _$CreateOrderStateDataCopyWithImpl<$Res,
        $Val extends CreateOrderStateData>
    implements $CreateOrderStateDataCopyWith<$Res> {
  _$CreateOrderStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountType = null,
  }) {
    return _then(_value.copyWith(
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateOrderStateDataCopyWith<$Res>
    implements $CreateOrderStateDataCopyWith<$Res> {
  factory _$$_CreateOrderStateDataCopyWith(_$_CreateOrderStateData value,
          $Res Function(_$_CreateOrderStateData) then) =
      __$$_CreateOrderStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String discountType});
}

/// @nodoc
class __$$_CreateOrderStateDataCopyWithImpl<$Res>
    extends _$CreateOrderStateDataCopyWithImpl<$Res, _$_CreateOrderStateData>
    implements _$$_CreateOrderStateDataCopyWith<$Res> {
  __$$_CreateOrderStateDataCopyWithImpl(_$_CreateOrderStateData _value,
      $Res Function(_$_CreateOrderStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountType = null,
  }) {
    return _then(_$_CreateOrderStateData(
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateOrderStateData implements _CreateOrderStateData {
  const _$_CreateOrderStateData({this.discountType = 'fixed'});

  @override
  @JsonKey()
  final String discountType;

  @override
  String toString() {
    return 'CreateOrderStateData(discountType: $discountType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrderStateData &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discountType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOrderStateDataCopyWith<_$_CreateOrderStateData> get copyWith =>
      __$$_CreateOrderStateDataCopyWithImpl<_$_CreateOrderStateData>(
          this, _$identity);
}

abstract class _CreateOrderStateData implements CreateOrderStateData {
  const factory _CreateOrderStateData({final String discountType}) =
      _$_CreateOrderStateData;

  @override
  String get discountType;
  @override
  @JsonKey(ignore: true)
  _$$_CreateOrderStateDataCopyWith<_$_CreateOrderStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateOrderState {
  CreateOrderStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateOrderStateData? data) initial,
    required TResult Function(CreateOrderStateData? data) getDiscountType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateOrderStateData? data)? initial,
    TResult? Function(CreateOrderStateData? data)? getDiscountType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateOrderStateData? data)? initial,
    TResult Function(CreateOrderStateData? data)? getDiscountType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetDiscountType value) getDiscountType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetDiscountType value)? getDiscountType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetDiscountType value)? getDiscountType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateOrderStateCopyWith<CreateOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderStateCopyWith<$Res> {
  factory $CreateOrderStateCopyWith(
          CreateOrderState value, $Res Function(CreateOrderState) then) =
      _$CreateOrderStateCopyWithImpl<$Res, CreateOrderState>;
  @useResult
  $Res call({CreateOrderStateData? data});

  $CreateOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateOrderStateCopyWithImpl<$Res, $Val extends CreateOrderState>
    implements $CreateOrderStateCopyWith<$Res> {
  _$CreateOrderStateCopyWithImpl(this._value, this._then);

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
              as CreateOrderStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateOrderStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CreateOrderStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $CreateOrderStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateOrderStateData? data});

  @override
  $CreateOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$CreateOrderStateCopyWithImpl<$Res, _$Initial>
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
              as CreateOrderStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final CreateOrderStateData? data;

  @override
  String toString() {
    return 'CreateOrderState.initial(data: $data)';
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
    required TResult Function(CreateOrderStateData? data) initial,
    required TResult Function(CreateOrderStateData? data) getDiscountType,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateOrderStateData? data)? initial,
    TResult? Function(CreateOrderStateData? data)? getDiscountType,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateOrderStateData? data)? initial,
    TResult Function(CreateOrderStateData? data)? getDiscountType,
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
    required TResult Function(GetDiscountType value) getDiscountType,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetDiscountType value)? getDiscountType,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetDiscountType value)? getDiscountType,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CreateOrderState {
  const factory Initial({final CreateOrderStateData? data}) = _$Initial;

  @override
  CreateOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDiscountTypeCopyWith<$Res>
    implements $CreateOrderStateCopyWith<$Res> {
  factory _$$GetDiscountTypeCopyWith(
          _$GetDiscountType value, $Res Function(_$GetDiscountType) then) =
      __$$GetDiscountTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateOrderStateData? data});

  @override
  $CreateOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetDiscountTypeCopyWithImpl<$Res>
    extends _$CreateOrderStateCopyWithImpl<$Res, _$GetDiscountType>
    implements _$$GetDiscountTypeCopyWith<$Res> {
  __$$GetDiscountTypeCopyWithImpl(
      _$GetDiscountType _value, $Res Function(_$GetDiscountType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetDiscountType(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateOrderStateData?,
    ));
  }
}

/// @nodoc

class _$GetDiscountType implements GetDiscountType {
  const _$GetDiscountType({this.data});

  @override
  final CreateOrderStateData? data;

  @override
  String toString() {
    return 'CreateOrderState.getDiscountType(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDiscountType &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDiscountTypeCopyWith<_$GetDiscountType> get copyWith =>
      __$$GetDiscountTypeCopyWithImpl<_$GetDiscountType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateOrderStateData? data) initial,
    required TResult Function(CreateOrderStateData? data) getDiscountType,
  }) {
    return getDiscountType(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateOrderStateData? data)? initial,
    TResult? Function(CreateOrderStateData? data)? getDiscountType,
  }) {
    return getDiscountType?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateOrderStateData? data)? initial,
    TResult Function(CreateOrderStateData? data)? getDiscountType,
    required TResult orElse(),
  }) {
    if (getDiscountType != null) {
      return getDiscountType(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetDiscountType value) getDiscountType,
  }) {
    return getDiscountType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetDiscountType value)? getDiscountType,
  }) {
    return getDiscountType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetDiscountType value)? getDiscountType,
    required TResult orElse(),
  }) {
    if (getDiscountType != null) {
      return getDiscountType(this);
    }
    return orElse();
  }
}

abstract class GetDiscountType implements CreateOrderState {
  const factory GetDiscountType({final CreateOrderStateData? data}) =
      _$GetDiscountType;

  @override
  CreateOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetDiscountTypeCopyWith<_$GetDiscountType> get copyWith =>
      throw _privateConstructorUsedError;
}
