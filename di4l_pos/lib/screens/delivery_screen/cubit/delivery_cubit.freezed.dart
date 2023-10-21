// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeliveryStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<DeliveryPartner> get deliveryPartners =>
      throw _privateConstructorUsedError;
  List<DeliveryPartner> get deliveryPartnersOriginal =>
      throw _privateConstructorUsedError; // @Default([]) List<Transaction> transactions,
  DeliveryPartner? get deliveryPartner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryStateDataCopyWith<DeliveryStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryStateDataCopyWith<$Res> {
  factory $DeliveryStateDataCopyWith(
          DeliveryStateData value, $Res Function(DeliveryStateData) then) =
      _$DeliveryStateDataCopyWithImpl<$Res, DeliveryStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<DeliveryPartner> deliveryPartners,
      List<DeliveryPartner> deliveryPartnersOriginal,
      DeliveryPartner? deliveryPartner});
}

/// @nodoc
class _$DeliveryStateDataCopyWithImpl<$Res, $Val extends DeliveryStateData>
    implements $DeliveryStateDataCopyWith<$Res> {
  _$DeliveryStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? deliveryPartners = null,
    Object? deliveryPartnersOriginal = null,
    Object? deliveryPartner = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      deliveryPartners: null == deliveryPartners
          ? _value.deliveryPartners
          : deliveryPartners // ignore: cast_nullable_to_non_nullable
              as List<DeliveryPartner>,
      deliveryPartnersOriginal: null == deliveryPartnersOriginal
          ? _value.deliveryPartnersOriginal
          : deliveryPartnersOriginal // ignore: cast_nullable_to_non_nullable
              as List<DeliveryPartner>,
      deliveryPartner: freezed == deliveryPartner
          ? _value.deliveryPartner
          : deliveryPartner // ignore: cast_nullable_to_non_nullable
              as DeliveryPartner?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryStateDataCopyWith<$Res>
    implements $DeliveryStateDataCopyWith<$Res> {
  factory _$$_DeliveryStateDataCopyWith(_$_DeliveryStateData value,
          $Res Function(_$_DeliveryStateData) then) =
      __$$_DeliveryStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<DeliveryPartner> deliveryPartners,
      List<DeliveryPartner> deliveryPartnersOriginal,
      DeliveryPartner? deliveryPartner});
}

/// @nodoc
class __$$_DeliveryStateDataCopyWithImpl<$Res>
    extends _$DeliveryStateDataCopyWithImpl<$Res, _$_DeliveryStateData>
    implements _$$_DeliveryStateDataCopyWith<$Res> {
  __$$_DeliveryStateDataCopyWithImpl(
      _$_DeliveryStateData _value, $Res Function(_$_DeliveryStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? deliveryPartners = null,
    Object? deliveryPartnersOriginal = null,
    Object? deliveryPartner = freezed,
  }) {
    return _then(_$_DeliveryStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      deliveryPartners: null == deliveryPartners
          ? _value._deliveryPartners
          : deliveryPartners // ignore: cast_nullable_to_non_nullable
              as List<DeliveryPartner>,
      deliveryPartnersOriginal: null == deliveryPartnersOriginal
          ? _value._deliveryPartnersOriginal
          : deliveryPartnersOriginal // ignore: cast_nullable_to_non_nullable
              as List<DeliveryPartner>,
      deliveryPartner: freezed == deliveryPartner
          ? _value.deliveryPartner
          : deliveryPartner // ignore: cast_nullable_to_non_nullable
              as DeliveryPartner?,
    ));
  }
}

/// @nodoc

class _$_DeliveryStateData implements _DeliveryStateData {
  const _$_DeliveryStateData(
      {this.status = StatusType.init,
      final List<DeliveryPartner> deliveryPartners = const [],
      final List<DeliveryPartner> deliveryPartnersOriginal = const [],
      this.deliveryPartner})
      : _deliveryPartners = deliveryPartners,
        _deliveryPartnersOriginal = deliveryPartnersOriginal;

  @override
  @JsonKey()
  final StatusType status;
  final List<DeliveryPartner> _deliveryPartners;
  @override
  @JsonKey()
  List<DeliveryPartner> get deliveryPartners {
    if (_deliveryPartners is EqualUnmodifiableListView)
      return _deliveryPartners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryPartners);
  }

  final List<DeliveryPartner> _deliveryPartnersOriginal;
  @override
  @JsonKey()
  List<DeliveryPartner> get deliveryPartnersOriginal {
    if (_deliveryPartnersOriginal is EqualUnmodifiableListView)
      return _deliveryPartnersOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryPartnersOriginal);
  }

// @Default([]) List<Transaction> transactions,
  @override
  final DeliveryPartner? deliveryPartner;

  @override
  String toString() {
    return 'DeliveryStateData(status: $status, deliveryPartners: $deliveryPartners, deliveryPartnersOriginal: $deliveryPartnersOriginal, deliveryPartner: $deliveryPartner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._deliveryPartners, _deliveryPartners) &&
            const DeepCollectionEquality().equals(
                other._deliveryPartnersOriginal, _deliveryPartnersOriginal) &&
            (identical(other.deliveryPartner, deliveryPartner) ||
                other.deliveryPartner == deliveryPartner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_deliveryPartners),
      const DeepCollectionEquality().hash(_deliveryPartnersOriginal),
      deliveryPartner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryStateDataCopyWith<_$_DeliveryStateData> get copyWith =>
      __$$_DeliveryStateDataCopyWithImpl<_$_DeliveryStateData>(
          this, _$identity);
}

abstract class _DeliveryStateData implements DeliveryStateData {
  const factory _DeliveryStateData(
      {final StatusType status,
      final List<DeliveryPartner> deliveryPartners,
      final List<DeliveryPartner> deliveryPartnersOriginal,
      final DeliveryPartner? deliveryPartner}) = _$_DeliveryStateData;

  @override
  StatusType get status;
  @override
  List<DeliveryPartner> get deliveryPartners;
  @override
  List<DeliveryPartner> get deliveryPartnersOriginal;
  @override // @Default([]) List<Transaction> transactions,
  DeliveryPartner? get deliveryPartner;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryStateDataCopyWith<_$_DeliveryStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeliveryState {
  DeliveryStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeliveryStateData? data) initial,
    required TResult Function(DeliveryStateData? data) status,
    required TResult Function(DeliveryStateData? data) getDeliveryPartners,
    required TResult Function(DeliveryStateData? data) getDeliveryPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeliveryStateData? data)? initial,
    TResult? Function(DeliveryStateData? data)? status,
    TResult? Function(DeliveryStateData? data)? getDeliveryPartners,
    TResult? Function(DeliveryStateData? data)? getDeliveryPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeliveryStateData? data)? initial,
    TResult Function(DeliveryStateData? data)? status,
    TResult Function(DeliveryStateData? data)? getDeliveryPartners,
    TResult Function(DeliveryStateData? data)? getDeliveryPartner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetDeliveryPartners value) getDeliveryPartners,
    required TResult Function(GetDeliveryPartner value) getDeliveryPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetDeliveryPartners value)? getDeliveryPartners,
    TResult? Function(GetDeliveryPartner value)? getDeliveryPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetDeliveryPartners value)? getDeliveryPartners,
    TResult Function(GetDeliveryPartner value)? getDeliveryPartner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryStateCopyWith<DeliveryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryStateCopyWith<$Res> {
  factory $DeliveryStateCopyWith(
          DeliveryState value, $Res Function(DeliveryState) then) =
      _$DeliveryStateCopyWithImpl<$Res, DeliveryState>;
  @useResult
  $Res call({DeliveryStateData? data});

  $DeliveryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DeliveryStateCopyWithImpl<$Res, $Val extends DeliveryState>
    implements $DeliveryStateCopyWith<$Res> {
  _$DeliveryStateCopyWithImpl(this._value, this._then);

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
              as DeliveryStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DeliveryStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $DeliveryStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeliveryStateData? data});

  @override
  $DeliveryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$DeliveryStateCopyWithImpl<$Res, _$Initial>
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
              as DeliveryStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final DeliveryStateData? data;

  @override
  String toString() {
    return 'DeliveryState.initial(data: $data)';
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
    required TResult Function(DeliveryStateData? data) initial,
    required TResult Function(DeliveryStateData? data) status,
    required TResult Function(DeliveryStateData? data) getDeliveryPartners,
    required TResult Function(DeliveryStateData? data) getDeliveryPartner,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeliveryStateData? data)? initial,
    TResult? Function(DeliveryStateData? data)? status,
    TResult? Function(DeliveryStateData? data)? getDeliveryPartners,
    TResult? Function(DeliveryStateData? data)? getDeliveryPartner,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeliveryStateData? data)? initial,
    TResult Function(DeliveryStateData? data)? status,
    TResult Function(DeliveryStateData? data)? getDeliveryPartners,
    TResult Function(DeliveryStateData? data)? getDeliveryPartner,
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
    required TResult Function(GetDeliveryPartners value) getDeliveryPartners,
    required TResult Function(GetDeliveryPartner value) getDeliveryPartner,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetDeliveryPartners value)? getDeliveryPartners,
    TResult? Function(GetDeliveryPartner value)? getDeliveryPartner,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetDeliveryPartners value)? getDeliveryPartners,
    TResult Function(GetDeliveryPartner value)? getDeliveryPartner,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DeliveryState {
  const factory Initial({final DeliveryStateData? data}) = _$Initial;

  @override
  DeliveryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $DeliveryStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeliveryStateData? data});

  @override
  $DeliveryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$DeliveryStateCopyWithImpl<$Res, _$Status>
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
              as DeliveryStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final DeliveryStateData? data;

  @override
  String toString() {
    return 'DeliveryState.status(data: $data)';
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
    required TResult Function(DeliveryStateData? data) initial,
    required TResult Function(DeliveryStateData? data) status,
    required TResult Function(DeliveryStateData? data) getDeliveryPartners,
    required TResult Function(DeliveryStateData? data) getDeliveryPartner,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeliveryStateData? data)? initial,
    TResult? Function(DeliveryStateData? data)? status,
    TResult? Function(DeliveryStateData? data)? getDeliveryPartners,
    TResult? Function(DeliveryStateData? data)? getDeliveryPartner,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeliveryStateData? data)? initial,
    TResult Function(DeliveryStateData? data)? status,
    TResult Function(DeliveryStateData? data)? getDeliveryPartners,
    TResult Function(DeliveryStateData? data)? getDeliveryPartner,
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
    required TResult Function(GetDeliveryPartners value) getDeliveryPartners,
    required TResult Function(GetDeliveryPartner value) getDeliveryPartner,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetDeliveryPartners value)? getDeliveryPartners,
    TResult? Function(GetDeliveryPartner value)? getDeliveryPartner,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetDeliveryPartners value)? getDeliveryPartners,
    TResult Function(GetDeliveryPartner value)? getDeliveryPartner,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements DeliveryState {
  const factory Status({final DeliveryStateData? data}) = _$Status;

  @override
  DeliveryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDeliveryPartnersCopyWith<$Res>
    implements $DeliveryStateCopyWith<$Res> {
  factory _$$GetDeliveryPartnersCopyWith(_$GetDeliveryPartners value,
          $Res Function(_$GetDeliveryPartners) then) =
      __$$GetDeliveryPartnersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeliveryStateData? data});

  @override
  $DeliveryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetDeliveryPartnersCopyWithImpl<$Res>
    extends _$DeliveryStateCopyWithImpl<$Res, _$GetDeliveryPartners>
    implements _$$GetDeliveryPartnersCopyWith<$Res> {
  __$$GetDeliveryPartnersCopyWithImpl(
      _$GetDeliveryPartners _value, $Res Function(_$GetDeliveryPartners) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetDeliveryPartners(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeliveryStateData?,
    ));
  }
}

/// @nodoc

class _$GetDeliveryPartners implements GetDeliveryPartners {
  const _$GetDeliveryPartners({this.data});

  @override
  final DeliveryStateData? data;

  @override
  String toString() {
    return 'DeliveryState.getDeliveryPartners(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDeliveryPartners &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDeliveryPartnersCopyWith<_$GetDeliveryPartners> get copyWith =>
      __$$GetDeliveryPartnersCopyWithImpl<_$GetDeliveryPartners>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeliveryStateData? data) initial,
    required TResult Function(DeliveryStateData? data) status,
    required TResult Function(DeliveryStateData? data) getDeliveryPartners,
    required TResult Function(DeliveryStateData? data) getDeliveryPartner,
  }) {
    return getDeliveryPartners(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeliveryStateData? data)? initial,
    TResult? Function(DeliveryStateData? data)? status,
    TResult? Function(DeliveryStateData? data)? getDeliveryPartners,
    TResult? Function(DeliveryStateData? data)? getDeliveryPartner,
  }) {
    return getDeliveryPartners?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeliveryStateData? data)? initial,
    TResult Function(DeliveryStateData? data)? status,
    TResult Function(DeliveryStateData? data)? getDeliveryPartners,
    TResult Function(DeliveryStateData? data)? getDeliveryPartner,
    required TResult orElse(),
  }) {
    if (getDeliveryPartners != null) {
      return getDeliveryPartners(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetDeliveryPartners value) getDeliveryPartners,
    required TResult Function(GetDeliveryPartner value) getDeliveryPartner,
  }) {
    return getDeliveryPartners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetDeliveryPartners value)? getDeliveryPartners,
    TResult? Function(GetDeliveryPartner value)? getDeliveryPartner,
  }) {
    return getDeliveryPartners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetDeliveryPartners value)? getDeliveryPartners,
    TResult Function(GetDeliveryPartner value)? getDeliveryPartner,
    required TResult orElse(),
  }) {
    if (getDeliveryPartners != null) {
      return getDeliveryPartners(this);
    }
    return orElse();
  }
}

abstract class GetDeliveryPartners implements DeliveryState {
  const factory GetDeliveryPartners({final DeliveryStateData? data}) =
      _$GetDeliveryPartners;

  @override
  DeliveryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetDeliveryPartnersCopyWith<_$GetDeliveryPartners> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDeliveryPartnerCopyWith<$Res>
    implements $DeliveryStateCopyWith<$Res> {
  factory _$$GetDeliveryPartnerCopyWith(_$GetDeliveryPartner value,
          $Res Function(_$GetDeliveryPartner) then) =
      __$$GetDeliveryPartnerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeliveryStateData? data});

  @override
  $DeliveryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetDeliveryPartnerCopyWithImpl<$Res>
    extends _$DeliveryStateCopyWithImpl<$Res, _$GetDeliveryPartner>
    implements _$$GetDeliveryPartnerCopyWith<$Res> {
  __$$GetDeliveryPartnerCopyWithImpl(
      _$GetDeliveryPartner _value, $Res Function(_$GetDeliveryPartner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetDeliveryPartner(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeliveryStateData?,
    ));
  }
}

/// @nodoc

class _$GetDeliveryPartner implements GetDeliveryPartner {
  const _$GetDeliveryPartner({this.data});

  @override
  final DeliveryStateData? data;

  @override
  String toString() {
    return 'DeliveryState.getDeliveryPartner(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDeliveryPartner &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDeliveryPartnerCopyWith<_$GetDeliveryPartner> get copyWith =>
      __$$GetDeliveryPartnerCopyWithImpl<_$GetDeliveryPartner>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeliveryStateData? data) initial,
    required TResult Function(DeliveryStateData? data) status,
    required TResult Function(DeliveryStateData? data) getDeliveryPartners,
    required TResult Function(DeliveryStateData? data) getDeliveryPartner,
  }) {
    return getDeliveryPartner(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeliveryStateData? data)? initial,
    TResult? Function(DeliveryStateData? data)? status,
    TResult? Function(DeliveryStateData? data)? getDeliveryPartners,
    TResult? Function(DeliveryStateData? data)? getDeliveryPartner,
  }) {
    return getDeliveryPartner?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeliveryStateData? data)? initial,
    TResult Function(DeliveryStateData? data)? status,
    TResult Function(DeliveryStateData? data)? getDeliveryPartners,
    TResult Function(DeliveryStateData? data)? getDeliveryPartner,
    required TResult orElse(),
  }) {
    if (getDeliveryPartner != null) {
      return getDeliveryPartner(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetDeliveryPartners value) getDeliveryPartners,
    required TResult Function(GetDeliveryPartner value) getDeliveryPartner,
  }) {
    return getDeliveryPartner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetDeliveryPartners value)? getDeliveryPartners,
    TResult? Function(GetDeliveryPartner value)? getDeliveryPartner,
  }) {
    return getDeliveryPartner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetDeliveryPartners value)? getDeliveryPartners,
    TResult Function(GetDeliveryPartner value)? getDeliveryPartner,
    required TResult orElse(),
  }) {
    if (getDeliveryPartner != null) {
      return getDeliveryPartner(this);
    }
    return orElse();
  }
}

abstract class GetDeliveryPartner implements DeliveryState {
  const factory GetDeliveryPartner({final DeliveryStateData? data}) =
      _$GetDeliveryPartner;

  @override
  DeliveryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetDeliveryPartnerCopyWith<_$GetDeliveryPartner> get copyWith =>
      throw _privateConstructorUsedError;
}
