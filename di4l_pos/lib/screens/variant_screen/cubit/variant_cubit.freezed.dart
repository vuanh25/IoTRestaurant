// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variant_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VariantStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  List<Variant> get variants => throw _privateConstructorUsedError;
  Variant? get variantSelected => throw _privateConstructorUsedError;
  Variant? get variant => throw _privateConstructorUsedError;
  int get showValue => throw _privateConstructorUsedError;
  List<Variant> get variantOriginal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VariantStateDataCopyWith<VariantStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantStateDataCopyWith<$Res> {
  factory $VariantStateDataCopyWith(
          VariantStateData value, $Res Function(VariantStateData) then) =
      _$VariantStateDataCopyWithImpl<$Res, VariantStateData>;
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<Variant> variants,
      Variant? variantSelected,
      Variant? variant,
      int showValue,
      List<Variant> variantOriginal});
}

/// @nodoc
class _$VariantStateDataCopyWithImpl<$Res, $Val extends VariantStateData>
    implements $VariantStateDataCopyWith<$Res> {
  _$VariantStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? variants = null,
    Object? variantSelected = freezed,
    Object? variant = freezed,
    Object? showValue = null,
    Object? variantOriginal = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>,
      variantSelected: freezed == variantSelected
          ? _value.variantSelected
          : variantSelected // ignore: cast_nullable_to_non_nullable
              as Variant?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as Variant?,
      showValue: null == showValue
          ? _value.showValue
          : showValue // ignore: cast_nullable_to_non_nullable
              as int,
      variantOriginal: null == variantOriginal
          ? _value.variantOriginal
          : variantOriginal // ignore: cast_nullable_to_non_nullable
              as List<Variant>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantStateDataCopyWith<$Res>
    implements $VariantStateDataCopyWith<$Res> {
  factory _$$_VariantStateDataCopyWith(
          _$_VariantStateData value, $Res Function(_$_VariantStateData) then) =
      __$$_VariantStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<Variant> variants,
      Variant? variantSelected,
      Variant? variant,
      int showValue,
      List<Variant> variantOriginal});
}

/// @nodoc
class __$$_VariantStateDataCopyWithImpl<$Res>
    extends _$VariantStateDataCopyWithImpl<$Res, _$_VariantStateData>
    implements _$$_VariantStateDataCopyWith<$Res> {
  __$$_VariantStateDataCopyWithImpl(
      _$_VariantStateData _value, $Res Function(_$_VariantStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? variants = null,
    Object? variantSelected = freezed,
    Object? variant = freezed,
    Object? showValue = null,
    Object? variantOriginal = null,
  }) {
    return _then(_$_VariantStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>,
      variantSelected: freezed == variantSelected
          ? _value.variantSelected
          : variantSelected // ignore: cast_nullable_to_non_nullable
              as Variant?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as Variant?,
      showValue: null == showValue
          ? _value.showValue
          : showValue // ignore: cast_nullable_to_non_nullable
              as int,
      variantOriginal: null == variantOriginal
          ? _value._variantOriginal
          : variantOriginal // ignore: cast_nullable_to_non_nullable
              as List<Variant>,
    ));
  }
}

/// @nodoc

class _$_VariantStateData implements _VariantStateData {
  const _$_VariantStateData(
      {this.error = '',
      this.status = StatusType.init,
      final List<Variant> variants = const [],
      this.variantSelected,
      this.variant,
      this.showValue = -1,
      final List<Variant> variantOriginal = const []})
      : _variants = variants,
        _variantOriginal = variantOriginal;

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  final List<Variant> _variants;
  @override
  @JsonKey()
  List<Variant> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  final Variant? variantSelected;
  @override
  final Variant? variant;
  @override
  @JsonKey()
  final int showValue;
  final List<Variant> _variantOriginal;
  @override
  @JsonKey()
  List<Variant> get variantOriginal {
    if (_variantOriginal is EqualUnmodifiableListView) return _variantOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variantOriginal);
  }

  @override
  String toString() {
    return 'VariantStateData(error: $error, status: $status, variants: $variants, variantSelected: $variantSelected, variant: $variant, showValue: $showValue, variantOriginal: $variantOriginal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            (identical(other.variantSelected, variantSelected) ||
                other.variantSelected == variantSelected) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.showValue, showValue) ||
                other.showValue == showValue) &&
            const DeepCollectionEquality()
                .equals(other._variantOriginal, _variantOriginal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      status,
      const DeepCollectionEquality().hash(_variants),
      variantSelected,
      variant,
      showValue,
      const DeepCollectionEquality().hash(_variantOriginal));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantStateDataCopyWith<_$_VariantStateData> get copyWith =>
      __$$_VariantStateDataCopyWithImpl<_$_VariantStateData>(this, _$identity);
}

abstract class _VariantStateData implements VariantStateData {
  const factory _VariantStateData(
      {final String error,
      final StatusType status,
      final List<Variant> variants,
      final Variant? variantSelected,
      final Variant? variant,
      final int showValue,
      final List<Variant> variantOriginal}) = _$_VariantStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  List<Variant> get variants;
  @override
  Variant? get variantSelected;
  @override
  Variant? get variant;
  @override
  int get showValue;
  @override
  List<Variant> get variantOriginal;
  @override
  @JsonKey(ignore: true)
  _$$_VariantStateDataCopyWith<_$_VariantStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VariantState {
  VariantStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VariantStateData? data) initial,
    required TResult Function(VariantStateData? data) status,
    required TResult Function(VariantStateData? data) getVariants,
    required TResult Function(VariantStateData? data) getVariant,
    required TResult Function(VariantStateData? data) variantSelected,
    required TResult Function(VariantStateData? data) showValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VariantStateData? data)? initial,
    TResult? Function(VariantStateData? data)? status,
    TResult? Function(VariantStateData? data)? getVariants,
    TResult? Function(VariantStateData? data)? getVariant,
    TResult? Function(VariantStateData? data)? variantSelected,
    TResult? Function(VariantStateData? data)? showValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VariantStateData? data)? initial,
    TResult Function(VariantStateData? data)? status,
    TResult Function(VariantStateData? data)? getVariants,
    TResult Function(VariantStateData? data)? getVariant,
    TResult Function(VariantStateData? data)? variantSelected,
    TResult Function(VariantStateData? data)? showValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetVariants value) getVariants,
    required TResult Function(GetVariant value) getVariant,
    required TResult Function(VariantSelected value) variantSelected,
    required TResult Function(ShowValue value) showValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetVariants value)? getVariants,
    TResult? Function(GetVariant value)? getVariant,
    TResult? Function(VariantSelected value)? variantSelected,
    TResult? Function(ShowValue value)? showValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetVariants value)? getVariants,
    TResult Function(GetVariant value)? getVariant,
    TResult Function(VariantSelected value)? variantSelected,
    TResult Function(ShowValue value)? showValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VariantStateCopyWith<VariantState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantStateCopyWith<$Res> {
  factory $VariantStateCopyWith(
          VariantState value, $Res Function(VariantState) then) =
      _$VariantStateCopyWithImpl<$Res, VariantState>;
  @useResult
  $Res call({VariantStateData? data});

  $VariantStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VariantStateCopyWithImpl<$Res, $Val extends VariantState>
    implements $VariantStateCopyWith<$Res> {
  _$VariantStateCopyWithImpl(this._value, this._then);

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
              as VariantStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VariantStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VariantStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $VariantStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VariantStateData? data});

  @override
  $VariantStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$VariantStateCopyWithImpl<$Res, _$Initial>
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
              as VariantStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final VariantStateData? data;

  @override
  String toString() {
    return 'VariantState.initial(data: $data)';
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
    required TResult Function(VariantStateData? data) initial,
    required TResult Function(VariantStateData? data) status,
    required TResult Function(VariantStateData? data) getVariants,
    required TResult Function(VariantStateData? data) getVariant,
    required TResult Function(VariantStateData? data) variantSelected,
    required TResult Function(VariantStateData? data) showValue,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VariantStateData? data)? initial,
    TResult? Function(VariantStateData? data)? status,
    TResult? Function(VariantStateData? data)? getVariants,
    TResult? Function(VariantStateData? data)? getVariant,
    TResult? Function(VariantStateData? data)? variantSelected,
    TResult? Function(VariantStateData? data)? showValue,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VariantStateData? data)? initial,
    TResult Function(VariantStateData? data)? status,
    TResult Function(VariantStateData? data)? getVariants,
    TResult Function(VariantStateData? data)? getVariant,
    TResult Function(VariantStateData? data)? variantSelected,
    TResult Function(VariantStateData? data)? showValue,
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
    required TResult Function(GetVariants value) getVariants,
    required TResult Function(GetVariant value) getVariant,
    required TResult Function(VariantSelected value) variantSelected,
    required TResult Function(ShowValue value) showValue,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetVariants value)? getVariants,
    TResult? Function(GetVariant value)? getVariant,
    TResult? Function(VariantSelected value)? variantSelected,
    TResult? Function(ShowValue value)? showValue,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetVariants value)? getVariants,
    TResult Function(GetVariant value)? getVariant,
    TResult Function(VariantSelected value)? variantSelected,
    TResult Function(ShowValue value)? showValue,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements VariantState {
  const factory Initial({final VariantStateData? data}) = _$Initial;

  @override
  VariantStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $VariantStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VariantStateData? data});

  @override
  $VariantStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$VariantStateCopyWithImpl<$Res, _$Status>
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
              as VariantStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final VariantStateData? data;

  @override
  String toString() {
    return 'VariantState.status(data: $data)';
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
    required TResult Function(VariantStateData? data) initial,
    required TResult Function(VariantStateData? data) status,
    required TResult Function(VariantStateData? data) getVariants,
    required TResult Function(VariantStateData? data) getVariant,
    required TResult Function(VariantStateData? data) variantSelected,
    required TResult Function(VariantStateData? data) showValue,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VariantStateData? data)? initial,
    TResult? Function(VariantStateData? data)? status,
    TResult? Function(VariantStateData? data)? getVariants,
    TResult? Function(VariantStateData? data)? getVariant,
    TResult? Function(VariantStateData? data)? variantSelected,
    TResult? Function(VariantStateData? data)? showValue,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VariantStateData? data)? initial,
    TResult Function(VariantStateData? data)? status,
    TResult Function(VariantStateData? data)? getVariants,
    TResult Function(VariantStateData? data)? getVariant,
    TResult Function(VariantStateData? data)? variantSelected,
    TResult Function(VariantStateData? data)? showValue,
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
    required TResult Function(GetVariants value) getVariants,
    required TResult Function(GetVariant value) getVariant,
    required TResult Function(VariantSelected value) variantSelected,
    required TResult Function(ShowValue value) showValue,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetVariants value)? getVariants,
    TResult? Function(GetVariant value)? getVariant,
    TResult? Function(VariantSelected value)? variantSelected,
    TResult? Function(ShowValue value)? showValue,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetVariants value)? getVariants,
    TResult Function(GetVariant value)? getVariant,
    TResult Function(VariantSelected value)? variantSelected,
    TResult Function(ShowValue value)? showValue,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements VariantState {
  const factory Status({final VariantStateData? data}) = _$Status;

  @override
  VariantStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetVariantsCopyWith<$Res>
    implements $VariantStateCopyWith<$Res> {
  factory _$$GetVariantsCopyWith(
          _$GetVariants value, $Res Function(_$GetVariants) then) =
      __$$GetVariantsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VariantStateData? data});

  @override
  $VariantStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetVariantsCopyWithImpl<$Res>
    extends _$VariantStateCopyWithImpl<$Res, _$GetVariants>
    implements _$$GetVariantsCopyWith<$Res> {
  __$$GetVariantsCopyWithImpl(
      _$GetVariants _value, $Res Function(_$GetVariants) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetVariants(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VariantStateData?,
    ));
  }
}

/// @nodoc

class _$GetVariants implements GetVariants {
  const _$GetVariants({this.data});

  @override
  final VariantStateData? data;

  @override
  String toString() {
    return 'VariantState.getVariants(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetVariants &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetVariantsCopyWith<_$GetVariants> get copyWith =>
      __$$GetVariantsCopyWithImpl<_$GetVariants>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VariantStateData? data) initial,
    required TResult Function(VariantStateData? data) status,
    required TResult Function(VariantStateData? data) getVariants,
    required TResult Function(VariantStateData? data) getVariant,
    required TResult Function(VariantStateData? data) variantSelected,
    required TResult Function(VariantStateData? data) showValue,
  }) {
    return getVariants(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VariantStateData? data)? initial,
    TResult? Function(VariantStateData? data)? status,
    TResult? Function(VariantStateData? data)? getVariants,
    TResult? Function(VariantStateData? data)? getVariant,
    TResult? Function(VariantStateData? data)? variantSelected,
    TResult? Function(VariantStateData? data)? showValue,
  }) {
    return getVariants?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VariantStateData? data)? initial,
    TResult Function(VariantStateData? data)? status,
    TResult Function(VariantStateData? data)? getVariants,
    TResult Function(VariantStateData? data)? getVariant,
    TResult Function(VariantStateData? data)? variantSelected,
    TResult Function(VariantStateData? data)? showValue,
    required TResult orElse(),
  }) {
    if (getVariants != null) {
      return getVariants(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetVariants value) getVariants,
    required TResult Function(GetVariant value) getVariant,
    required TResult Function(VariantSelected value) variantSelected,
    required TResult Function(ShowValue value) showValue,
  }) {
    return getVariants(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetVariants value)? getVariants,
    TResult? Function(GetVariant value)? getVariant,
    TResult? Function(VariantSelected value)? variantSelected,
    TResult? Function(ShowValue value)? showValue,
  }) {
    return getVariants?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetVariants value)? getVariants,
    TResult Function(GetVariant value)? getVariant,
    TResult Function(VariantSelected value)? variantSelected,
    TResult Function(ShowValue value)? showValue,
    required TResult orElse(),
  }) {
    if (getVariants != null) {
      return getVariants(this);
    }
    return orElse();
  }
}

abstract class GetVariants implements VariantState {
  const factory GetVariants({final VariantStateData? data}) = _$GetVariants;

  @override
  VariantStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetVariantsCopyWith<_$GetVariants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetVariantCopyWith<$Res>
    implements $VariantStateCopyWith<$Res> {
  factory _$$GetVariantCopyWith(
          _$GetVariant value, $Res Function(_$GetVariant) then) =
      __$$GetVariantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VariantStateData? data});

  @override
  $VariantStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetVariantCopyWithImpl<$Res>
    extends _$VariantStateCopyWithImpl<$Res, _$GetVariant>
    implements _$$GetVariantCopyWith<$Res> {
  __$$GetVariantCopyWithImpl(
      _$GetVariant _value, $Res Function(_$GetVariant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetVariant(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VariantStateData?,
    ));
  }
}

/// @nodoc

class _$GetVariant implements GetVariant {
  const _$GetVariant({this.data});

  @override
  final VariantStateData? data;

  @override
  String toString() {
    return 'VariantState.getVariant(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetVariant &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetVariantCopyWith<_$GetVariant> get copyWith =>
      __$$GetVariantCopyWithImpl<_$GetVariant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VariantStateData? data) initial,
    required TResult Function(VariantStateData? data) status,
    required TResult Function(VariantStateData? data) getVariants,
    required TResult Function(VariantStateData? data) getVariant,
    required TResult Function(VariantStateData? data) variantSelected,
    required TResult Function(VariantStateData? data) showValue,
  }) {
    return getVariant(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VariantStateData? data)? initial,
    TResult? Function(VariantStateData? data)? status,
    TResult? Function(VariantStateData? data)? getVariants,
    TResult? Function(VariantStateData? data)? getVariant,
    TResult? Function(VariantStateData? data)? variantSelected,
    TResult? Function(VariantStateData? data)? showValue,
  }) {
    return getVariant?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VariantStateData? data)? initial,
    TResult Function(VariantStateData? data)? status,
    TResult Function(VariantStateData? data)? getVariants,
    TResult Function(VariantStateData? data)? getVariant,
    TResult Function(VariantStateData? data)? variantSelected,
    TResult Function(VariantStateData? data)? showValue,
    required TResult orElse(),
  }) {
    if (getVariant != null) {
      return getVariant(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetVariants value) getVariants,
    required TResult Function(GetVariant value) getVariant,
    required TResult Function(VariantSelected value) variantSelected,
    required TResult Function(ShowValue value) showValue,
  }) {
    return getVariant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetVariants value)? getVariants,
    TResult? Function(GetVariant value)? getVariant,
    TResult? Function(VariantSelected value)? variantSelected,
    TResult? Function(ShowValue value)? showValue,
  }) {
    return getVariant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetVariants value)? getVariants,
    TResult Function(GetVariant value)? getVariant,
    TResult Function(VariantSelected value)? variantSelected,
    TResult Function(ShowValue value)? showValue,
    required TResult orElse(),
  }) {
    if (getVariant != null) {
      return getVariant(this);
    }
    return orElse();
  }
}

abstract class GetVariant implements VariantState {
  const factory GetVariant({final VariantStateData? data}) = _$GetVariant;

  @override
  VariantStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetVariantCopyWith<_$GetVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VariantSelectedCopyWith<$Res>
    implements $VariantStateCopyWith<$Res> {
  factory _$$VariantSelectedCopyWith(
          _$VariantSelected value, $Res Function(_$VariantSelected) then) =
      __$$VariantSelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VariantStateData? data});

  @override
  $VariantStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VariantSelectedCopyWithImpl<$Res>
    extends _$VariantStateCopyWithImpl<$Res, _$VariantSelected>
    implements _$$VariantSelectedCopyWith<$Res> {
  __$$VariantSelectedCopyWithImpl(
      _$VariantSelected _value, $Res Function(_$VariantSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$VariantSelected(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VariantStateData?,
    ));
  }
}

/// @nodoc

class _$VariantSelected implements VariantSelected {
  const _$VariantSelected({this.data});

  @override
  final VariantStateData? data;

  @override
  String toString() {
    return 'VariantState.variantSelected(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantSelected &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantSelectedCopyWith<_$VariantSelected> get copyWith =>
      __$$VariantSelectedCopyWithImpl<_$VariantSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VariantStateData? data) initial,
    required TResult Function(VariantStateData? data) status,
    required TResult Function(VariantStateData? data) getVariants,
    required TResult Function(VariantStateData? data) getVariant,
    required TResult Function(VariantStateData? data) variantSelected,
    required TResult Function(VariantStateData? data) showValue,
  }) {
    return variantSelected(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VariantStateData? data)? initial,
    TResult? Function(VariantStateData? data)? status,
    TResult? Function(VariantStateData? data)? getVariants,
    TResult? Function(VariantStateData? data)? getVariant,
    TResult? Function(VariantStateData? data)? variantSelected,
    TResult? Function(VariantStateData? data)? showValue,
  }) {
    return variantSelected?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VariantStateData? data)? initial,
    TResult Function(VariantStateData? data)? status,
    TResult Function(VariantStateData? data)? getVariants,
    TResult Function(VariantStateData? data)? getVariant,
    TResult Function(VariantStateData? data)? variantSelected,
    TResult Function(VariantStateData? data)? showValue,
    required TResult orElse(),
  }) {
    if (variantSelected != null) {
      return variantSelected(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetVariants value) getVariants,
    required TResult Function(GetVariant value) getVariant,
    required TResult Function(VariantSelected value) variantSelected,
    required TResult Function(ShowValue value) showValue,
  }) {
    return variantSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetVariants value)? getVariants,
    TResult? Function(GetVariant value)? getVariant,
    TResult? Function(VariantSelected value)? variantSelected,
    TResult? Function(ShowValue value)? showValue,
  }) {
    return variantSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetVariants value)? getVariants,
    TResult Function(GetVariant value)? getVariant,
    TResult Function(VariantSelected value)? variantSelected,
    TResult Function(ShowValue value)? showValue,
    required TResult orElse(),
  }) {
    if (variantSelected != null) {
      return variantSelected(this);
    }
    return orElse();
  }
}

abstract class VariantSelected implements VariantState {
  const factory VariantSelected({final VariantStateData? data}) =
      _$VariantSelected;

  @override
  VariantStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$VariantSelectedCopyWith<_$VariantSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowValueCopyWith<$Res>
    implements $VariantStateCopyWith<$Res> {
  factory _$$ShowValueCopyWith(
          _$ShowValue value, $Res Function(_$ShowValue) then) =
      __$$ShowValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VariantStateData? data});

  @override
  $VariantStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ShowValueCopyWithImpl<$Res>
    extends _$VariantStateCopyWithImpl<$Res, _$ShowValue>
    implements _$$ShowValueCopyWith<$Res> {
  __$$ShowValueCopyWithImpl(
      _$ShowValue _value, $Res Function(_$ShowValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ShowValue(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VariantStateData?,
    ));
  }
}

/// @nodoc

class _$ShowValue implements ShowValue {
  const _$ShowValue({this.data});

  @override
  final VariantStateData? data;

  @override
  String toString() {
    return 'VariantState.showValue(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowValue &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowValueCopyWith<_$ShowValue> get copyWith =>
      __$$ShowValueCopyWithImpl<_$ShowValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VariantStateData? data) initial,
    required TResult Function(VariantStateData? data) status,
    required TResult Function(VariantStateData? data) getVariants,
    required TResult Function(VariantStateData? data) getVariant,
    required TResult Function(VariantStateData? data) variantSelected,
    required TResult Function(VariantStateData? data) showValue,
  }) {
    return showValue(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VariantStateData? data)? initial,
    TResult? Function(VariantStateData? data)? status,
    TResult? Function(VariantStateData? data)? getVariants,
    TResult? Function(VariantStateData? data)? getVariant,
    TResult? Function(VariantStateData? data)? variantSelected,
    TResult? Function(VariantStateData? data)? showValue,
  }) {
    return showValue?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VariantStateData? data)? initial,
    TResult Function(VariantStateData? data)? status,
    TResult Function(VariantStateData? data)? getVariants,
    TResult Function(VariantStateData? data)? getVariant,
    TResult Function(VariantStateData? data)? variantSelected,
    TResult Function(VariantStateData? data)? showValue,
    required TResult orElse(),
  }) {
    if (showValue != null) {
      return showValue(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetVariants value) getVariants,
    required TResult Function(GetVariant value) getVariant,
    required TResult Function(VariantSelected value) variantSelected,
    required TResult Function(ShowValue value) showValue,
  }) {
    return showValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetVariants value)? getVariants,
    TResult? Function(GetVariant value)? getVariant,
    TResult? Function(VariantSelected value)? variantSelected,
    TResult? Function(ShowValue value)? showValue,
  }) {
    return showValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetVariants value)? getVariants,
    TResult Function(GetVariant value)? getVariant,
    TResult Function(VariantSelected value)? variantSelected,
    TResult Function(ShowValue value)? showValue,
    required TResult orElse(),
  }) {
    if (showValue != null) {
      return showValue(this);
    }
    return orElse();
  }
}

abstract class ShowValue implements VariantState {
  const factory ShowValue({final VariantStateData? data}) = _$ShowValue;

  @override
  VariantStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ShowValueCopyWith<_$ShowValue> get copyWith =>
      throw _privateConstructorUsedError;
}
