// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kitchen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KitchenStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<KitchenData> get kitchens => throw _privateConstructorUsedError;
  List<KitchenData> get kitchensOriginal => throw _privateConstructorUsedError;
  Sell? get sells => throw _privateConstructorUsedError;
  PaymentTypes? get paymentTypes => throw _privateConstructorUsedError;
  PosSettings? get posSetTings => throw _privateConstructorUsedError;
  List<Activities> get activities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KitchenStateDataCopyWith<KitchenStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KitchenStateDataCopyWith<$Res> {
  factory $KitchenStateDataCopyWith(
          KitchenStateData value, $Res Function(KitchenStateData) then) =
      _$KitchenStateDataCopyWithImpl<$Res, KitchenStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<KitchenData> kitchens,
      List<KitchenData> kitchensOriginal,
      Sell? sells,
      PaymentTypes? paymentTypes,
      PosSettings? posSetTings,
      List<Activities> activities});
}

/// @nodoc
class _$KitchenStateDataCopyWithImpl<$Res, $Val extends KitchenStateData>
    implements $KitchenStateDataCopyWith<$Res> {
  _$KitchenStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? kitchens = null,
    Object? kitchensOriginal = null,
    Object? sells = freezed,
    Object? paymentTypes = freezed,
    Object? posSetTings = freezed,
    Object? activities = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      kitchens: null == kitchens
          ? _value.kitchens
          : kitchens // ignore: cast_nullable_to_non_nullable
              as List<KitchenData>,
      kitchensOriginal: null == kitchensOriginal
          ? _value.kitchensOriginal
          : kitchensOriginal // ignore: cast_nullable_to_non_nullable
              as List<KitchenData>,
      sells: freezed == sells
          ? _value.sells
          : sells // ignore: cast_nullable_to_non_nullable
              as Sell?,
      paymentTypes: freezed == paymentTypes
          ? _value.paymentTypes
          : paymentTypes // ignore: cast_nullable_to_non_nullable
              as PaymentTypes?,
      posSetTings: freezed == posSetTings
          ? _value.posSetTings
          : posSetTings // ignore: cast_nullable_to_non_nullable
              as PosSettings?,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activities>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KitchenStateDataCopyWith<$Res>
    implements $KitchenStateDataCopyWith<$Res> {
  factory _$$_KitchenStateDataCopyWith(
          _$_KitchenStateData value, $Res Function(_$_KitchenStateData) then) =
      __$$_KitchenStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<KitchenData> kitchens,
      List<KitchenData> kitchensOriginal,
      Sell? sells,
      PaymentTypes? paymentTypes,
      PosSettings? posSetTings,
      List<Activities> activities});
}

/// @nodoc
class __$$_KitchenStateDataCopyWithImpl<$Res>
    extends _$KitchenStateDataCopyWithImpl<$Res, _$_KitchenStateData>
    implements _$$_KitchenStateDataCopyWith<$Res> {
  __$$_KitchenStateDataCopyWithImpl(
      _$_KitchenStateData _value, $Res Function(_$_KitchenStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? kitchens = null,
    Object? kitchensOriginal = null,
    Object? sells = freezed,
    Object? paymentTypes = freezed,
    Object? posSetTings = freezed,
    Object? activities = null,
  }) {
    return _then(_$_KitchenStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      kitchens: null == kitchens
          ? _value._kitchens
          : kitchens // ignore: cast_nullable_to_non_nullable
              as List<KitchenData>,
      kitchensOriginal: null == kitchensOriginal
          ? _value._kitchensOriginal
          : kitchensOriginal // ignore: cast_nullable_to_non_nullable
              as List<KitchenData>,
      sells: freezed == sells
          ? _value.sells
          : sells // ignore: cast_nullable_to_non_nullable
              as Sell?,
      paymentTypes: freezed == paymentTypes
          ? _value.paymentTypes
          : paymentTypes // ignore: cast_nullable_to_non_nullable
              as PaymentTypes?,
      posSetTings: freezed == posSetTings
          ? _value.posSetTings
          : posSetTings // ignore: cast_nullable_to_non_nullable
              as PosSettings?,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activities>,
    ));
  }
}

/// @nodoc

class _$_KitchenStateData implements _KitchenStateData {
  const _$_KitchenStateData(
      {this.status = StatusType.init,
      final List<KitchenData> kitchens = const [],
      final List<KitchenData> kitchensOriginal = const [],
      this.sells,
      this.paymentTypes,
      this.posSetTings,
      final List<Activities> activities = const []})
      : _kitchens = kitchens,
        _kitchensOriginal = kitchensOriginal,
        _activities = activities;

  @override
  @JsonKey()
  final StatusType status;
  final List<KitchenData> _kitchens;
  @override
  @JsonKey()
  List<KitchenData> get kitchens {
    if (_kitchens is EqualUnmodifiableListView) return _kitchens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_kitchens);
  }

  final List<KitchenData> _kitchensOriginal;
  @override
  @JsonKey()
  List<KitchenData> get kitchensOriginal {
    if (_kitchensOriginal is EqualUnmodifiableListView)
      return _kitchensOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_kitchensOriginal);
  }

  @override
  final Sell? sells;
  @override
  final PaymentTypes? paymentTypes;
  @override
  final PosSettings? posSetTings;
  final List<Activities> _activities;
  @override
  @JsonKey()
  List<Activities> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  String toString() {
    return 'KitchenStateData(status: $status, kitchens: $kitchens, kitchensOriginal: $kitchensOriginal, sells: $sells, paymentTypes: $paymentTypes, posSetTings: $posSetTings, activities: $activities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KitchenStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._kitchens, _kitchens) &&
            const DeepCollectionEquality()
                .equals(other._kitchensOriginal, _kitchensOriginal) &&
            (identical(other.sells, sells) || other.sells == sells) &&
            (identical(other.paymentTypes, paymentTypes) ||
                other.paymentTypes == paymentTypes) &&
            (identical(other.posSetTings, posSetTings) ||
                other.posSetTings == posSetTings) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_kitchens),
      const DeepCollectionEquality().hash(_kitchensOriginal),
      sells,
      paymentTypes,
      posSetTings,
      const DeepCollectionEquality().hash(_activities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KitchenStateDataCopyWith<_$_KitchenStateData> get copyWith =>
      __$$_KitchenStateDataCopyWithImpl<_$_KitchenStateData>(this, _$identity);
}

abstract class _KitchenStateData implements KitchenStateData {
  const factory _KitchenStateData(
      {final StatusType status,
      final List<KitchenData> kitchens,
      final List<KitchenData> kitchensOriginal,
      final Sell? sells,
      final PaymentTypes? paymentTypes,
      final PosSettings? posSetTings,
      final List<Activities> activities}) = _$_KitchenStateData;

  @override
  StatusType get status;
  @override
  List<KitchenData> get kitchens;
  @override
  List<KitchenData> get kitchensOriginal;
  @override
  Sell? get sells;
  @override
  PaymentTypes? get paymentTypes;
  @override
  PosSettings? get posSetTings;
  @override
  List<Activities> get activities;
  @override
  @JsonKey(ignore: true)
  _$$_KitchenStateDataCopyWith<_$_KitchenStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KitchenState {
  KitchenStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KitchenStateData? data) initial,
    required TResult Function(KitchenStateData? data) status,
    required TResult Function(KitchenStateData? data) getKitchens,
    required TResult Function(KitchenStateData? data) getSells,
    required TResult Function(KitchenStateData? data) getPaymentTypes,
    required TResult Function(KitchenStateData? data) getPosSetTings,
    required TResult Function(KitchenStateData? data) getActivities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KitchenStateData? data)? initial,
    TResult? Function(KitchenStateData? data)? status,
    TResult? Function(KitchenStateData? data)? getKitchens,
    TResult? Function(KitchenStateData? data)? getSells,
    TResult? Function(KitchenStateData? data)? getPaymentTypes,
    TResult? Function(KitchenStateData? data)? getPosSetTings,
    TResult? Function(KitchenStateData? data)? getActivities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KitchenStateData? data)? initial,
    TResult Function(KitchenStateData? data)? status,
    TResult Function(KitchenStateData? data)? getKitchens,
    TResult Function(KitchenStateData? data)? getSells,
    TResult Function(KitchenStateData? data)? getPaymentTypes,
    TResult Function(KitchenStateData? data)? getPosSetTings,
    TResult Function(KitchenStateData? data)? getActivities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetKitchens value) getKitchens,
    required TResult Function(GetSells value) getSells,
    required TResult Function(GetPaymentTypes value) getPaymentTypes,
    required TResult Function(GetPosSetTings value) getPosSetTings,
    required TResult Function(GetActivities value) getActivities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetKitchens value)? getKitchens,
    TResult? Function(GetSells value)? getSells,
    TResult? Function(GetPaymentTypes value)? getPaymentTypes,
    TResult? Function(GetPosSetTings value)? getPosSetTings,
    TResult? Function(GetActivities value)? getActivities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetKitchens value)? getKitchens,
    TResult Function(GetSells value)? getSells,
    TResult Function(GetPaymentTypes value)? getPaymentTypes,
    TResult Function(GetPosSetTings value)? getPosSetTings,
    TResult Function(GetActivities value)? getActivities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KitchenStateCopyWith<KitchenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KitchenStateCopyWith<$Res> {
  factory $KitchenStateCopyWith(
          KitchenState value, $Res Function(KitchenState) then) =
      _$KitchenStateCopyWithImpl<$Res, KitchenState>;
  @useResult
  $Res call({KitchenStateData? data});

  $KitchenStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$KitchenStateCopyWithImpl<$Res, $Val extends KitchenState>
    implements $KitchenStateCopyWith<$Res> {
  _$KitchenStateCopyWithImpl(this._value, this._then);

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
              as KitchenStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KitchenStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $KitchenStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $KitchenStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KitchenStateData? data});

  @override
  $KitchenStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$KitchenStateCopyWithImpl<$Res, _$Initial>
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
              as KitchenStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final KitchenStateData? data;

  @override
  String toString() {
    return 'KitchenState.initial(data: $data)';
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
    required TResult Function(KitchenStateData? data) initial,
    required TResult Function(KitchenStateData? data) status,
    required TResult Function(KitchenStateData? data) getKitchens,
    required TResult Function(KitchenStateData? data) getSells,
    required TResult Function(KitchenStateData? data) getPaymentTypes,
    required TResult Function(KitchenStateData? data) getPosSetTings,
    required TResult Function(KitchenStateData? data) getActivities,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KitchenStateData? data)? initial,
    TResult? Function(KitchenStateData? data)? status,
    TResult? Function(KitchenStateData? data)? getKitchens,
    TResult? Function(KitchenStateData? data)? getSells,
    TResult? Function(KitchenStateData? data)? getPaymentTypes,
    TResult? Function(KitchenStateData? data)? getPosSetTings,
    TResult? Function(KitchenStateData? data)? getActivities,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KitchenStateData? data)? initial,
    TResult Function(KitchenStateData? data)? status,
    TResult Function(KitchenStateData? data)? getKitchens,
    TResult Function(KitchenStateData? data)? getSells,
    TResult Function(KitchenStateData? data)? getPaymentTypes,
    TResult Function(KitchenStateData? data)? getPosSetTings,
    TResult Function(KitchenStateData? data)? getActivities,
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
    required TResult Function(GetKitchens value) getKitchens,
    required TResult Function(GetSells value) getSells,
    required TResult Function(GetPaymentTypes value) getPaymentTypes,
    required TResult Function(GetPosSetTings value) getPosSetTings,
    required TResult Function(GetActivities value) getActivities,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetKitchens value)? getKitchens,
    TResult? Function(GetSells value)? getSells,
    TResult? Function(GetPaymentTypes value)? getPaymentTypes,
    TResult? Function(GetPosSetTings value)? getPosSetTings,
    TResult? Function(GetActivities value)? getActivities,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetKitchens value)? getKitchens,
    TResult Function(GetSells value)? getSells,
    TResult Function(GetPaymentTypes value)? getPaymentTypes,
    TResult Function(GetPosSetTings value)? getPosSetTings,
    TResult Function(GetActivities value)? getActivities,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements KitchenState {
  const factory Initial({final KitchenStateData? data}) = _$Initial;

  @override
  KitchenStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $KitchenStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KitchenStateData? data});

  @override
  $KitchenStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$KitchenStateCopyWithImpl<$Res, _$Status>
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
              as KitchenStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final KitchenStateData? data;

  @override
  String toString() {
    return 'KitchenState.status(data: $data)';
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
    required TResult Function(KitchenStateData? data) initial,
    required TResult Function(KitchenStateData? data) status,
    required TResult Function(KitchenStateData? data) getKitchens,
    required TResult Function(KitchenStateData? data) getSells,
    required TResult Function(KitchenStateData? data) getPaymentTypes,
    required TResult Function(KitchenStateData? data) getPosSetTings,
    required TResult Function(KitchenStateData? data) getActivities,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KitchenStateData? data)? initial,
    TResult? Function(KitchenStateData? data)? status,
    TResult? Function(KitchenStateData? data)? getKitchens,
    TResult? Function(KitchenStateData? data)? getSells,
    TResult? Function(KitchenStateData? data)? getPaymentTypes,
    TResult? Function(KitchenStateData? data)? getPosSetTings,
    TResult? Function(KitchenStateData? data)? getActivities,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KitchenStateData? data)? initial,
    TResult Function(KitchenStateData? data)? status,
    TResult Function(KitchenStateData? data)? getKitchens,
    TResult Function(KitchenStateData? data)? getSells,
    TResult Function(KitchenStateData? data)? getPaymentTypes,
    TResult Function(KitchenStateData? data)? getPosSetTings,
    TResult Function(KitchenStateData? data)? getActivities,
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
    required TResult Function(GetKitchens value) getKitchens,
    required TResult Function(GetSells value) getSells,
    required TResult Function(GetPaymentTypes value) getPaymentTypes,
    required TResult Function(GetPosSetTings value) getPosSetTings,
    required TResult Function(GetActivities value) getActivities,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetKitchens value)? getKitchens,
    TResult? Function(GetSells value)? getSells,
    TResult? Function(GetPaymentTypes value)? getPaymentTypes,
    TResult? Function(GetPosSetTings value)? getPosSetTings,
    TResult? Function(GetActivities value)? getActivities,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetKitchens value)? getKitchens,
    TResult Function(GetSells value)? getSells,
    TResult Function(GetPaymentTypes value)? getPaymentTypes,
    TResult Function(GetPosSetTings value)? getPosSetTings,
    TResult Function(GetActivities value)? getActivities,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements KitchenState {
  const factory Status({final KitchenStateData? data}) = _$Status;

  @override
  KitchenStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetKitchensCopyWith<$Res>
    implements $KitchenStateCopyWith<$Res> {
  factory _$$GetKitchensCopyWith(
          _$GetKitchens value, $Res Function(_$GetKitchens) then) =
      __$$GetKitchensCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KitchenStateData? data});

  @override
  $KitchenStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetKitchensCopyWithImpl<$Res>
    extends _$KitchenStateCopyWithImpl<$Res, _$GetKitchens>
    implements _$$GetKitchensCopyWith<$Res> {
  __$$GetKitchensCopyWithImpl(
      _$GetKitchens _value, $Res Function(_$GetKitchens) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetKitchens(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as KitchenStateData?,
    ));
  }
}

/// @nodoc

class _$GetKitchens implements GetKitchens {
  const _$GetKitchens({this.data});

  @override
  final KitchenStateData? data;

  @override
  String toString() {
    return 'KitchenState.getKitchens(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetKitchens &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetKitchensCopyWith<_$GetKitchens> get copyWith =>
      __$$GetKitchensCopyWithImpl<_$GetKitchens>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KitchenStateData? data) initial,
    required TResult Function(KitchenStateData? data) status,
    required TResult Function(KitchenStateData? data) getKitchens,
    required TResult Function(KitchenStateData? data) getSells,
    required TResult Function(KitchenStateData? data) getPaymentTypes,
    required TResult Function(KitchenStateData? data) getPosSetTings,
    required TResult Function(KitchenStateData? data) getActivities,
  }) {
    return getKitchens(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KitchenStateData? data)? initial,
    TResult? Function(KitchenStateData? data)? status,
    TResult? Function(KitchenStateData? data)? getKitchens,
    TResult? Function(KitchenStateData? data)? getSells,
    TResult? Function(KitchenStateData? data)? getPaymentTypes,
    TResult? Function(KitchenStateData? data)? getPosSetTings,
    TResult? Function(KitchenStateData? data)? getActivities,
  }) {
    return getKitchens?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KitchenStateData? data)? initial,
    TResult Function(KitchenStateData? data)? status,
    TResult Function(KitchenStateData? data)? getKitchens,
    TResult Function(KitchenStateData? data)? getSells,
    TResult Function(KitchenStateData? data)? getPaymentTypes,
    TResult Function(KitchenStateData? data)? getPosSetTings,
    TResult Function(KitchenStateData? data)? getActivities,
    required TResult orElse(),
  }) {
    if (getKitchens != null) {
      return getKitchens(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetKitchens value) getKitchens,
    required TResult Function(GetSells value) getSells,
    required TResult Function(GetPaymentTypes value) getPaymentTypes,
    required TResult Function(GetPosSetTings value) getPosSetTings,
    required TResult Function(GetActivities value) getActivities,
  }) {
    return getKitchens(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetKitchens value)? getKitchens,
    TResult? Function(GetSells value)? getSells,
    TResult? Function(GetPaymentTypes value)? getPaymentTypes,
    TResult? Function(GetPosSetTings value)? getPosSetTings,
    TResult? Function(GetActivities value)? getActivities,
  }) {
    return getKitchens?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetKitchens value)? getKitchens,
    TResult Function(GetSells value)? getSells,
    TResult Function(GetPaymentTypes value)? getPaymentTypes,
    TResult Function(GetPosSetTings value)? getPosSetTings,
    TResult Function(GetActivities value)? getActivities,
    required TResult orElse(),
  }) {
    if (getKitchens != null) {
      return getKitchens(this);
    }
    return orElse();
  }
}

abstract class GetKitchens implements KitchenState {
  const factory GetKitchens({final KitchenStateData? data}) = _$GetKitchens;

  @override
  KitchenStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetKitchensCopyWith<_$GetKitchens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSellsCopyWith<$Res>
    implements $KitchenStateCopyWith<$Res> {
  factory _$$GetSellsCopyWith(
          _$GetSells value, $Res Function(_$GetSells) then) =
      __$$GetSellsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KitchenStateData? data});

  @override
  $KitchenStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetSellsCopyWithImpl<$Res>
    extends _$KitchenStateCopyWithImpl<$Res, _$GetSells>
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
              as KitchenStateData?,
    ));
  }
}

/// @nodoc

class _$GetSells implements GetSells {
  const _$GetSells({this.data});

  @override
  final KitchenStateData? data;

  @override
  String toString() {
    return 'KitchenState.getSells(data: $data)';
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
    required TResult Function(KitchenStateData? data) initial,
    required TResult Function(KitchenStateData? data) status,
    required TResult Function(KitchenStateData? data) getKitchens,
    required TResult Function(KitchenStateData? data) getSells,
    required TResult Function(KitchenStateData? data) getPaymentTypes,
    required TResult Function(KitchenStateData? data) getPosSetTings,
    required TResult Function(KitchenStateData? data) getActivities,
  }) {
    return getSells(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KitchenStateData? data)? initial,
    TResult? Function(KitchenStateData? data)? status,
    TResult? Function(KitchenStateData? data)? getKitchens,
    TResult? Function(KitchenStateData? data)? getSells,
    TResult? Function(KitchenStateData? data)? getPaymentTypes,
    TResult? Function(KitchenStateData? data)? getPosSetTings,
    TResult? Function(KitchenStateData? data)? getActivities,
  }) {
    return getSells?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KitchenStateData? data)? initial,
    TResult Function(KitchenStateData? data)? status,
    TResult Function(KitchenStateData? data)? getKitchens,
    TResult Function(KitchenStateData? data)? getSells,
    TResult Function(KitchenStateData? data)? getPaymentTypes,
    TResult Function(KitchenStateData? data)? getPosSetTings,
    TResult Function(KitchenStateData? data)? getActivities,
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
    required TResult Function(GetKitchens value) getKitchens,
    required TResult Function(GetSells value) getSells,
    required TResult Function(GetPaymentTypes value) getPaymentTypes,
    required TResult Function(GetPosSetTings value) getPosSetTings,
    required TResult Function(GetActivities value) getActivities,
  }) {
    return getSells(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetKitchens value)? getKitchens,
    TResult? Function(GetSells value)? getSells,
    TResult? Function(GetPaymentTypes value)? getPaymentTypes,
    TResult? Function(GetPosSetTings value)? getPosSetTings,
    TResult? Function(GetActivities value)? getActivities,
  }) {
    return getSells?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetKitchens value)? getKitchens,
    TResult Function(GetSells value)? getSells,
    TResult Function(GetPaymentTypes value)? getPaymentTypes,
    TResult Function(GetPosSetTings value)? getPosSetTings,
    TResult Function(GetActivities value)? getActivities,
    required TResult orElse(),
  }) {
    if (getSells != null) {
      return getSells(this);
    }
    return orElse();
  }
}

abstract class GetSells implements KitchenState {
  const factory GetSells({final KitchenStateData? data}) = _$GetSells;

  @override
  KitchenStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetSellsCopyWith<_$GetSells> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPaymentTypesCopyWith<$Res>
    implements $KitchenStateCopyWith<$Res> {
  factory _$$GetPaymentTypesCopyWith(
          _$GetPaymentTypes value, $Res Function(_$GetPaymentTypes) then) =
      __$$GetPaymentTypesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KitchenStateData? data});

  @override
  $KitchenStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetPaymentTypesCopyWithImpl<$Res>
    extends _$KitchenStateCopyWithImpl<$Res, _$GetPaymentTypes>
    implements _$$GetPaymentTypesCopyWith<$Res> {
  __$$GetPaymentTypesCopyWithImpl(
      _$GetPaymentTypes _value, $Res Function(_$GetPaymentTypes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetPaymentTypes(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as KitchenStateData?,
    ));
  }
}

/// @nodoc

class _$GetPaymentTypes implements GetPaymentTypes {
  const _$GetPaymentTypes({this.data});

  @override
  final KitchenStateData? data;

  @override
  String toString() {
    return 'KitchenState.getPaymentTypes(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentTypes &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentTypesCopyWith<_$GetPaymentTypes> get copyWith =>
      __$$GetPaymentTypesCopyWithImpl<_$GetPaymentTypes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KitchenStateData? data) initial,
    required TResult Function(KitchenStateData? data) status,
    required TResult Function(KitchenStateData? data) getKitchens,
    required TResult Function(KitchenStateData? data) getSells,
    required TResult Function(KitchenStateData? data) getPaymentTypes,
    required TResult Function(KitchenStateData? data) getPosSetTings,
    required TResult Function(KitchenStateData? data) getActivities,
  }) {
    return getPaymentTypes(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KitchenStateData? data)? initial,
    TResult? Function(KitchenStateData? data)? status,
    TResult? Function(KitchenStateData? data)? getKitchens,
    TResult? Function(KitchenStateData? data)? getSells,
    TResult? Function(KitchenStateData? data)? getPaymentTypes,
    TResult? Function(KitchenStateData? data)? getPosSetTings,
    TResult? Function(KitchenStateData? data)? getActivities,
  }) {
    return getPaymentTypes?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KitchenStateData? data)? initial,
    TResult Function(KitchenStateData? data)? status,
    TResult Function(KitchenStateData? data)? getKitchens,
    TResult Function(KitchenStateData? data)? getSells,
    TResult Function(KitchenStateData? data)? getPaymentTypes,
    TResult Function(KitchenStateData? data)? getPosSetTings,
    TResult Function(KitchenStateData? data)? getActivities,
    required TResult orElse(),
  }) {
    if (getPaymentTypes != null) {
      return getPaymentTypes(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetKitchens value) getKitchens,
    required TResult Function(GetSells value) getSells,
    required TResult Function(GetPaymentTypes value) getPaymentTypes,
    required TResult Function(GetPosSetTings value) getPosSetTings,
    required TResult Function(GetActivities value) getActivities,
  }) {
    return getPaymentTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetKitchens value)? getKitchens,
    TResult? Function(GetSells value)? getSells,
    TResult? Function(GetPaymentTypes value)? getPaymentTypes,
    TResult? Function(GetPosSetTings value)? getPosSetTings,
    TResult? Function(GetActivities value)? getActivities,
  }) {
    return getPaymentTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetKitchens value)? getKitchens,
    TResult Function(GetSells value)? getSells,
    TResult Function(GetPaymentTypes value)? getPaymentTypes,
    TResult Function(GetPosSetTings value)? getPosSetTings,
    TResult Function(GetActivities value)? getActivities,
    required TResult orElse(),
  }) {
    if (getPaymentTypes != null) {
      return getPaymentTypes(this);
    }
    return orElse();
  }
}

abstract class GetPaymentTypes implements KitchenState {
  const factory GetPaymentTypes({final KitchenStateData? data}) =
      _$GetPaymentTypes;

  @override
  KitchenStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetPaymentTypesCopyWith<_$GetPaymentTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPosSetTingsCopyWith<$Res>
    implements $KitchenStateCopyWith<$Res> {
  factory _$$GetPosSetTingsCopyWith(
          _$GetPosSetTings value, $Res Function(_$GetPosSetTings) then) =
      __$$GetPosSetTingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KitchenStateData? data});

  @override
  $KitchenStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetPosSetTingsCopyWithImpl<$Res>
    extends _$KitchenStateCopyWithImpl<$Res, _$GetPosSetTings>
    implements _$$GetPosSetTingsCopyWith<$Res> {
  __$$GetPosSetTingsCopyWithImpl(
      _$GetPosSetTings _value, $Res Function(_$GetPosSetTings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetPosSetTings(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as KitchenStateData?,
    ));
  }
}

/// @nodoc

class _$GetPosSetTings implements GetPosSetTings {
  const _$GetPosSetTings({this.data});

  @override
  final KitchenStateData? data;

  @override
  String toString() {
    return 'KitchenState.getPosSetTings(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPosSetTings &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPosSetTingsCopyWith<_$GetPosSetTings> get copyWith =>
      __$$GetPosSetTingsCopyWithImpl<_$GetPosSetTings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KitchenStateData? data) initial,
    required TResult Function(KitchenStateData? data) status,
    required TResult Function(KitchenStateData? data) getKitchens,
    required TResult Function(KitchenStateData? data) getSells,
    required TResult Function(KitchenStateData? data) getPaymentTypes,
    required TResult Function(KitchenStateData? data) getPosSetTings,
    required TResult Function(KitchenStateData? data) getActivities,
  }) {
    return getPosSetTings(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KitchenStateData? data)? initial,
    TResult? Function(KitchenStateData? data)? status,
    TResult? Function(KitchenStateData? data)? getKitchens,
    TResult? Function(KitchenStateData? data)? getSells,
    TResult? Function(KitchenStateData? data)? getPaymentTypes,
    TResult? Function(KitchenStateData? data)? getPosSetTings,
    TResult? Function(KitchenStateData? data)? getActivities,
  }) {
    return getPosSetTings?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KitchenStateData? data)? initial,
    TResult Function(KitchenStateData? data)? status,
    TResult Function(KitchenStateData? data)? getKitchens,
    TResult Function(KitchenStateData? data)? getSells,
    TResult Function(KitchenStateData? data)? getPaymentTypes,
    TResult Function(KitchenStateData? data)? getPosSetTings,
    TResult Function(KitchenStateData? data)? getActivities,
    required TResult orElse(),
  }) {
    if (getPosSetTings != null) {
      return getPosSetTings(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetKitchens value) getKitchens,
    required TResult Function(GetSells value) getSells,
    required TResult Function(GetPaymentTypes value) getPaymentTypes,
    required TResult Function(GetPosSetTings value) getPosSetTings,
    required TResult Function(GetActivities value) getActivities,
  }) {
    return getPosSetTings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetKitchens value)? getKitchens,
    TResult? Function(GetSells value)? getSells,
    TResult? Function(GetPaymentTypes value)? getPaymentTypes,
    TResult? Function(GetPosSetTings value)? getPosSetTings,
    TResult? Function(GetActivities value)? getActivities,
  }) {
    return getPosSetTings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetKitchens value)? getKitchens,
    TResult Function(GetSells value)? getSells,
    TResult Function(GetPaymentTypes value)? getPaymentTypes,
    TResult Function(GetPosSetTings value)? getPosSetTings,
    TResult Function(GetActivities value)? getActivities,
    required TResult orElse(),
  }) {
    if (getPosSetTings != null) {
      return getPosSetTings(this);
    }
    return orElse();
  }
}

abstract class GetPosSetTings implements KitchenState {
  const factory GetPosSetTings({final KitchenStateData? data}) =
      _$GetPosSetTings;

  @override
  KitchenStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetPosSetTingsCopyWith<_$GetPosSetTings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetActivitiesCopyWith<$Res>
    implements $KitchenStateCopyWith<$Res> {
  factory _$$GetActivitiesCopyWith(
          _$GetActivities value, $Res Function(_$GetActivities) then) =
      __$$GetActivitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KitchenStateData? data});

  @override
  $KitchenStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetActivitiesCopyWithImpl<$Res>
    extends _$KitchenStateCopyWithImpl<$Res, _$GetActivities>
    implements _$$GetActivitiesCopyWith<$Res> {
  __$$GetActivitiesCopyWithImpl(
      _$GetActivities _value, $Res Function(_$GetActivities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetActivities(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as KitchenStateData?,
    ));
  }
}

/// @nodoc

class _$GetActivities implements GetActivities {
  const _$GetActivities({this.data});

  @override
  final KitchenStateData? data;

  @override
  String toString() {
    return 'KitchenState.getActivities(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActivities &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActivitiesCopyWith<_$GetActivities> get copyWith =>
      __$$GetActivitiesCopyWithImpl<_$GetActivities>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KitchenStateData? data) initial,
    required TResult Function(KitchenStateData? data) status,
    required TResult Function(KitchenStateData? data) getKitchens,
    required TResult Function(KitchenStateData? data) getSells,
    required TResult Function(KitchenStateData? data) getPaymentTypes,
    required TResult Function(KitchenStateData? data) getPosSetTings,
    required TResult Function(KitchenStateData? data) getActivities,
  }) {
    return getActivities(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KitchenStateData? data)? initial,
    TResult? Function(KitchenStateData? data)? status,
    TResult? Function(KitchenStateData? data)? getKitchens,
    TResult? Function(KitchenStateData? data)? getSells,
    TResult? Function(KitchenStateData? data)? getPaymentTypes,
    TResult? Function(KitchenStateData? data)? getPosSetTings,
    TResult? Function(KitchenStateData? data)? getActivities,
  }) {
    return getActivities?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KitchenStateData? data)? initial,
    TResult Function(KitchenStateData? data)? status,
    TResult Function(KitchenStateData? data)? getKitchens,
    TResult Function(KitchenStateData? data)? getSells,
    TResult Function(KitchenStateData? data)? getPaymentTypes,
    TResult Function(KitchenStateData? data)? getPosSetTings,
    TResult Function(KitchenStateData? data)? getActivities,
    required TResult orElse(),
  }) {
    if (getActivities != null) {
      return getActivities(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetKitchens value) getKitchens,
    required TResult Function(GetSells value) getSells,
    required TResult Function(GetPaymentTypes value) getPaymentTypes,
    required TResult Function(GetPosSetTings value) getPosSetTings,
    required TResult Function(GetActivities value) getActivities,
  }) {
    return getActivities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetKitchens value)? getKitchens,
    TResult? Function(GetSells value)? getSells,
    TResult? Function(GetPaymentTypes value)? getPaymentTypes,
    TResult? Function(GetPosSetTings value)? getPosSetTings,
    TResult? Function(GetActivities value)? getActivities,
  }) {
    return getActivities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetKitchens value)? getKitchens,
    TResult Function(GetSells value)? getSells,
    TResult Function(GetPaymentTypes value)? getPaymentTypes,
    TResult Function(GetPosSetTings value)? getPosSetTings,
    TResult Function(GetActivities value)? getActivities,
    required TResult orElse(),
  }) {
    if (getActivities != null) {
      return getActivities(this);
    }
    return orElse();
  }
}

abstract class GetActivities implements KitchenState {
  const factory GetActivities({final KitchenStateData? data}) = _$GetActivities;

  @override
  KitchenStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetActivitiesCopyWith<_$GetActivities> get copyWith =>
      throw _privateConstructorUsedError;
}
