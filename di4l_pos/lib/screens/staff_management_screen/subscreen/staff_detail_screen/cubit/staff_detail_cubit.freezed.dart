// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StaffDetailStateData {
  StatusType get status => throw _privateConstructorUsedError;
  StaffDetailResponse? get staffDetail => throw _privateConstructorUsedError;
  BusinessLocationResponse? get businesslocations =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get staffRoles => throw _privateConstructorUsedError;
  StaffCreateResponse? get staffCreateInfomation =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaffDetailStateDataCopyWith<StaffDetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffDetailStateDataCopyWith<$Res> {
  factory $StaffDetailStateDataCopyWith(StaffDetailStateData value,
          $Res Function(StaffDetailStateData) then) =
      _$StaffDetailStateDataCopyWithImpl<$Res, StaffDetailStateData>;
  @useResult
  $Res call(
      {StatusType status,
      StaffDetailResponse? staffDetail,
      BusinessLocationResponse? businesslocations,
      Map<String, dynamic>? staffRoles,
      StaffCreateResponse? staffCreateInfomation});
}

/// @nodoc
class _$StaffDetailStateDataCopyWithImpl<$Res,
        $Val extends StaffDetailStateData>
    implements $StaffDetailStateDataCopyWith<$Res> {
  _$StaffDetailStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? staffDetail = freezed,
    Object? businesslocations = freezed,
    Object? staffRoles = freezed,
    Object? staffCreateInfomation = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      staffDetail: freezed == staffDetail
          ? _value.staffDetail
          : staffDetail // ignore: cast_nullable_to_non_nullable
              as StaffDetailResponse?,
      businesslocations: freezed == businesslocations
          ? _value.businesslocations
          : businesslocations // ignore: cast_nullable_to_non_nullable
              as BusinessLocationResponse?,
      staffRoles: freezed == staffRoles
          ? _value.staffRoles
          : staffRoles // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      staffCreateInfomation: freezed == staffCreateInfomation
          ? _value.staffCreateInfomation
          : staffCreateInfomation // ignore: cast_nullable_to_non_nullable
              as StaffCreateResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StaffDetailStateDataCopyWith<$Res>
    implements $StaffDetailStateDataCopyWith<$Res> {
  factory _$$_StaffDetailStateDataCopyWith(_$_StaffDetailStateData value,
          $Res Function(_$_StaffDetailStateData) then) =
      __$$_StaffDetailStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      StaffDetailResponse? staffDetail,
      BusinessLocationResponse? businesslocations,
      Map<String, dynamic>? staffRoles,
      StaffCreateResponse? staffCreateInfomation});
}

/// @nodoc
class __$$_StaffDetailStateDataCopyWithImpl<$Res>
    extends _$StaffDetailStateDataCopyWithImpl<$Res, _$_StaffDetailStateData>
    implements _$$_StaffDetailStateDataCopyWith<$Res> {
  __$$_StaffDetailStateDataCopyWithImpl(_$_StaffDetailStateData _value,
      $Res Function(_$_StaffDetailStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? staffDetail = freezed,
    Object? businesslocations = freezed,
    Object? staffRoles = freezed,
    Object? staffCreateInfomation = freezed,
  }) {
    return _then(_$_StaffDetailStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      staffDetail: freezed == staffDetail
          ? _value.staffDetail
          : staffDetail // ignore: cast_nullable_to_non_nullable
              as StaffDetailResponse?,
      businesslocations: freezed == businesslocations
          ? _value.businesslocations
          : businesslocations // ignore: cast_nullable_to_non_nullable
              as BusinessLocationResponse?,
      staffRoles: freezed == staffRoles
          ? _value._staffRoles
          : staffRoles // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      staffCreateInfomation: freezed == staffCreateInfomation
          ? _value.staffCreateInfomation
          : staffCreateInfomation // ignore: cast_nullable_to_non_nullable
              as StaffCreateResponse?,
    ));
  }
}

/// @nodoc

class _$_StaffDetailStateData implements _StaffDetailStateData {
  const _$_StaffDetailStateData(
      {this.status = StatusType.init,
      this.staffDetail,
      this.businesslocations,
      final Map<String, dynamic>? staffRoles,
      this.staffCreateInfomation})
      : _staffRoles = staffRoles;

  @override
  @JsonKey()
  final StatusType status;
  @override
  final StaffDetailResponse? staffDetail;
  @override
  final BusinessLocationResponse? businesslocations;
  final Map<String, dynamic>? _staffRoles;
  @override
  Map<String, dynamic>? get staffRoles {
    final value = _staffRoles;
    if (value == null) return null;
    if (_staffRoles is EqualUnmodifiableMapView) return _staffRoles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final StaffCreateResponse? staffCreateInfomation;

  @override
  String toString() {
    return 'StaffDetailStateData(status: $status, staffDetail: $staffDetail, businesslocations: $businesslocations, staffRoles: $staffRoles, staffCreateInfomation: $staffCreateInfomation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffDetailStateData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.staffDetail, staffDetail) ||
                other.staffDetail == staffDetail) &&
            (identical(other.businesslocations, businesslocations) ||
                other.businesslocations == businesslocations) &&
            const DeepCollectionEquality()
                .equals(other._staffRoles, _staffRoles) &&
            (identical(other.staffCreateInfomation, staffCreateInfomation) ||
                other.staffCreateInfomation == staffCreateInfomation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      staffDetail,
      businesslocations,
      const DeepCollectionEquality().hash(_staffRoles),
      staffCreateInfomation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffDetailStateDataCopyWith<_$_StaffDetailStateData> get copyWith =>
      __$$_StaffDetailStateDataCopyWithImpl<_$_StaffDetailStateData>(
          this, _$identity);
}

abstract class _StaffDetailStateData implements StaffDetailStateData {
  const factory _StaffDetailStateData(
          {final StatusType status,
          final StaffDetailResponse? staffDetail,
          final BusinessLocationResponse? businesslocations,
          final Map<String, dynamic>? staffRoles,
          final StaffCreateResponse? staffCreateInfomation}) =
      _$_StaffDetailStateData;

  @override
  StatusType get status;
  @override
  StaffDetailResponse? get staffDetail;
  @override
  BusinessLocationResponse? get businesslocations;
  @override
  Map<String, dynamic>? get staffRoles;
  @override
  StaffCreateResponse? get staffCreateInfomation;
  @override
  @JsonKey(ignore: true)
  _$$_StaffDetailStateDataCopyWith<_$_StaffDetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StaffDetailState {
  StaffDetailStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StaffDetailStateData? data) initial,
    required TResult Function(StaffDetailStateData? data) status,
    required TResult Function(StaffDetailStateData? data) getStaffDetail,
    required TResult Function(StaffDetailStateData? data) getBusinessLocation,
    required TResult Function(StaffDetailStateData? data) getStaffRoles,
    required TResult Function(StaffDetailStateData? data) getStaffInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StaffDetailStateData? data)? initial,
    TResult? Function(StaffDetailStateData? data)? status,
    TResult? Function(StaffDetailStateData? data)? getStaffDetail,
    TResult? Function(StaffDetailStateData? data)? getBusinessLocation,
    TResult? Function(StaffDetailStateData? data)? getStaffRoles,
    TResult? Function(StaffDetailStateData? data)? getStaffInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StaffDetailStateData? data)? initial,
    TResult Function(StaffDetailStateData? data)? status,
    TResult Function(StaffDetailStateData? data)? getStaffDetail,
    TResult Function(StaffDetailStateData? data)? getBusinessLocation,
    TResult Function(StaffDetailStateData? data)? getStaffRoles,
    TResult Function(StaffDetailStateData? data)? getStaffInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetStaffDetail value) getStaffDetail,
    required TResult Function(GetBusinessLocation value) getBusinessLocation,
    required TResult Function(GetStaffRoles value) getStaffRoles,
    required TResult Function(GetStaffCreateInformation value)
        getStaffInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStaffDetail value)? getStaffDetail,
    TResult? Function(GetBusinessLocation value)? getBusinessLocation,
    TResult? Function(GetStaffRoles value)? getStaffRoles,
    TResult? Function(GetStaffCreateInformation value)? getStaffInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStaffDetail value)? getStaffDetail,
    TResult Function(GetBusinessLocation value)? getBusinessLocation,
    TResult Function(GetStaffRoles value)? getStaffRoles,
    TResult Function(GetStaffCreateInformation value)? getStaffInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaffDetailStateCopyWith<StaffDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffDetailStateCopyWith<$Res> {
  factory $StaffDetailStateCopyWith(
          StaffDetailState value, $Res Function(StaffDetailState) then) =
      _$StaffDetailStateCopyWithImpl<$Res, StaffDetailState>;
  @useResult
  $Res call({StaffDetailStateData? data});

  $StaffDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$StaffDetailStateCopyWithImpl<$Res, $Val extends StaffDetailState>
    implements $StaffDetailStateCopyWith<$Res> {
  _$StaffDetailStateCopyWithImpl(this._value, this._then);

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
              as StaffDetailStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StaffDetailStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StaffDetailStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $StaffDetailStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StaffDetailStateData? data});

  @override
  $StaffDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$StaffDetailStateCopyWithImpl<$Res, _$Initial>
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
              as StaffDetailStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final StaffDetailStateData? data;

  @override
  String toString() {
    return 'StaffDetailState.initial(data: $data)';
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
    required TResult Function(StaffDetailStateData? data) initial,
    required TResult Function(StaffDetailStateData? data) status,
    required TResult Function(StaffDetailStateData? data) getStaffDetail,
    required TResult Function(StaffDetailStateData? data) getBusinessLocation,
    required TResult Function(StaffDetailStateData? data) getStaffRoles,
    required TResult Function(StaffDetailStateData? data) getStaffInformation,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StaffDetailStateData? data)? initial,
    TResult? Function(StaffDetailStateData? data)? status,
    TResult? Function(StaffDetailStateData? data)? getStaffDetail,
    TResult? Function(StaffDetailStateData? data)? getBusinessLocation,
    TResult? Function(StaffDetailStateData? data)? getStaffRoles,
    TResult? Function(StaffDetailStateData? data)? getStaffInformation,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StaffDetailStateData? data)? initial,
    TResult Function(StaffDetailStateData? data)? status,
    TResult Function(StaffDetailStateData? data)? getStaffDetail,
    TResult Function(StaffDetailStateData? data)? getBusinessLocation,
    TResult Function(StaffDetailStateData? data)? getStaffRoles,
    TResult Function(StaffDetailStateData? data)? getStaffInformation,
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
    required TResult Function(GetStaffDetail value) getStaffDetail,
    required TResult Function(GetBusinessLocation value) getBusinessLocation,
    required TResult Function(GetStaffRoles value) getStaffRoles,
    required TResult Function(GetStaffCreateInformation value)
        getStaffInformation,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStaffDetail value)? getStaffDetail,
    TResult? Function(GetBusinessLocation value)? getBusinessLocation,
    TResult? Function(GetStaffRoles value)? getStaffRoles,
    TResult? Function(GetStaffCreateInformation value)? getStaffInformation,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStaffDetail value)? getStaffDetail,
    TResult Function(GetBusinessLocation value)? getBusinessLocation,
    TResult Function(GetStaffRoles value)? getStaffRoles,
    TResult Function(GetStaffCreateInformation value)? getStaffInformation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements StaffDetailState {
  const factory Initial({final StaffDetailStateData? data}) = _$Initial;

  @override
  StaffDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $StaffDetailStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StaffDetailStateData? data});

  @override
  $StaffDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$StaffDetailStateCopyWithImpl<$Res, _$Status>
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
              as StaffDetailStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final StaffDetailStateData? data;

  @override
  String toString() {
    return 'StaffDetailState.status(data: $data)';
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
    required TResult Function(StaffDetailStateData? data) initial,
    required TResult Function(StaffDetailStateData? data) status,
    required TResult Function(StaffDetailStateData? data) getStaffDetail,
    required TResult Function(StaffDetailStateData? data) getBusinessLocation,
    required TResult Function(StaffDetailStateData? data) getStaffRoles,
    required TResult Function(StaffDetailStateData? data) getStaffInformation,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StaffDetailStateData? data)? initial,
    TResult? Function(StaffDetailStateData? data)? status,
    TResult? Function(StaffDetailStateData? data)? getStaffDetail,
    TResult? Function(StaffDetailStateData? data)? getBusinessLocation,
    TResult? Function(StaffDetailStateData? data)? getStaffRoles,
    TResult? Function(StaffDetailStateData? data)? getStaffInformation,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StaffDetailStateData? data)? initial,
    TResult Function(StaffDetailStateData? data)? status,
    TResult Function(StaffDetailStateData? data)? getStaffDetail,
    TResult Function(StaffDetailStateData? data)? getBusinessLocation,
    TResult Function(StaffDetailStateData? data)? getStaffRoles,
    TResult Function(StaffDetailStateData? data)? getStaffInformation,
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
    required TResult Function(GetStaffDetail value) getStaffDetail,
    required TResult Function(GetBusinessLocation value) getBusinessLocation,
    required TResult Function(GetStaffRoles value) getStaffRoles,
    required TResult Function(GetStaffCreateInformation value)
        getStaffInformation,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStaffDetail value)? getStaffDetail,
    TResult? Function(GetBusinessLocation value)? getBusinessLocation,
    TResult? Function(GetStaffRoles value)? getStaffRoles,
    TResult? Function(GetStaffCreateInformation value)? getStaffInformation,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStaffDetail value)? getStaffDetail,
    TResult Function(GetBusinessLocation value)? getBusinessLocation,
    TResult Function(GetStaffRoles value)? getStaffRoles,
    TResult Function(GetStaffCreateInformation value)? getStaffInformation,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements StaffDetailState {
  const factory Status({final StaffDetailStateData? data}) = _$Status;

  @override
  StaffDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStaffDetailCopyWith<$Res>
    implements $StaffDetailStateCopyWith<$Res> {
  factory _$$GetStaffDetailCopyWith(
          _$GetStaffDetail value, $Res Function(_$GetStaffDetail) then) =
      __$$GetStaffDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StaffDetailStateData? data});

  @override
  $StaffDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetStaffDetailCopyWithImpl<$Res>
    extends _$StaffDetailStateCopyWithImpl<$Res, _$GetStaffDetail>
    implements _$$GetStaffDetailCopyWith<$Res> {
  __$$GetStaffDetailCopyWithImpl(
      _$GetStaffDetail _value, $Res Function(_$GetStaffDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetStaffDetail(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StaffDetailStateData?,
    ));
  }
}

/// @nodoc

class _$GetStaffDetail implements GetStaffDetail {
  const _$GetStaffDetail({this.data});

  @override
  final StaffDetailStateData? data;

  @override
  String toString() {
    return 'StaffDetailState.getStaffDetail(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStaffDetail &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStaffDetailCopyWith<_$GetStaffDetail> get copyWith =>
      __$$GetStaffDetailCopyWithImpl<_$GetStaffDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StaffDetailStateData? data) initial,
    required TResult Function(StaffDetailStateData? data) status,
    required TResult Function(StaffDetailStateData? data) getStaffDetail,
    required TResult Function(StaffDetailStateData? data) getBusinessLocation,
    required TResult Function(StaffDetailStateData? data) getStaffRoles,
    required TResult Function(StaffDetailStateData? data) getStaffInformation,
  }) {
    return getStaffDetail(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StaffDetailStateData? data)? initial,
    TResult? Function(StaffDetailStateData? data)? status,
    TResult? Function(StaffDetailStateData? data)? getStaffDetail,
    TResult? Function(StaffDetailStateData? data)? getBusinessLocation,
    TResult? Function(StaffDetailStateData? data)? getStaffRoles,
    TResult? Function(StaffDetailStateData? data)? getStaffInformation,
  }) {
    return getStaffDetail?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StaffDetailStateData? data)? initial,
    TResult Function(StaffDetailStateData? data)? status,
    TResult Function(StaffDetailStateData? data)? getStaffDetail,
    TResult Function(StaffDetailStateData? data)? getBusinessLocation,
    TResult Function(StaffDetailStateData? data)? getStaffRoles,
    TResult Function(StaffDetailStateData? data)? getStaffInformation,
    required TResult orElse(),
  }) {
    if (getStaffDetail != null) {
      return getStaffDetail(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetStaffDetail value) getStaffDetail,
    required TResult Function(GetBusinessLocation value) getBusinessLocation,
    required TResult Function(GetStaffRoles value) getStaffRoles,
    required TResult Function(GetStaffCreateInformation value)
        getStaffInformation,
  }) {
    return getStaffDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStaffDetail value)? getStaffDetail,
    TResult? Function(GetBusinessLocation value)? getBusinessLocation,
    TResult? Function(GetStaffRoles value)? getStaffRoles,
    TResult? Function(GetStaffCreateInformation value)? getStaffInformation,
  }) {
    return getStaffDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStaffDetail value)? getStaffDetail,
    TResult Function(GetBusinessLocation value)? getBusinessLocation,
    TResult Function(GetStaffRoles value)? getStaffRoles,
    TResult Function(GetStaffCreateInformation value)? getStaffInformation,
    required TResult orElse(),
  }) {
    if (getStaffDetail != null) {
      return getStaffDetail(this);
    }
    return orElse();
  }
}

abstract class GetStaffDetail implements StaffDetailState {
  const factory GetStaffDetail({final StaffDetailStateData? data}) =
      _$GetStaffDetail;

  @override
  StaffDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetStaffDetailCopyWith<_$GetStaffDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBusinessLocationCopyWith<$Res>
    implements $StaffDetailStateCopyWith<$Res> {
  factory _$$GetBusinessLocationCopyWith(_$GetBusinessLocation value,
          $Res Function(_$GetBusinessLocation) then) =
      __$$GetBusinessLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StaffDetailStateData? data});

  @override
  $StaffDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetBusinessLocationCopyWithImpl<$Res>
    extends _$StaffDetailStateCopyWithImpl<$Res, _$GetBusinessLocation>
    implements _$$GetBusinessLocationCopyWith<$Res> {
  __$$GetBusinessLocationCopyWithImpl(
      _$GetBusinessLocation _value, $Res Function(_$GetBusinessLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetBusinessLocation(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StaffDetailStateData?,
    ));
  }
}

/// @nodoc

class _$GetBusinessLocation implements GetBusinessLocation {
  const _$GetBusinessLocation({this.data});

  @override
  final StaffDetailStateData? data;

  @override
  String toString() {
    return 'StaffDetailState.getBusinessLocation(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBusinessLocation &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBusinessLocationCopyWith<_$GetBusinessLocation> get copyWith =>
      __$$GetBusinessLocationCopyWithImpl<_$GetBusinessLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StaffDetailStateData? data) initial,
    required TResult Function(StaffDetailStateData? data) status,
    required TResult Function(StaffDetailStateData? data) getStaffDetail,
    required TResult Function(StaffDetailStateData? data) getBusinessLocation,
    required TResult Function(StaffDetailStateData? data) getStaffRoles,
    required TResult Function(StaffDetailStateData? data) getStaffInformation,
  }) {
    return getBusinessLocation(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StaffDetailStateData? data)? initial,
    TResult? Function(StaffDetailStateData? data)? status,
    TResult? Function(StaffDetailStateData? data)? getStaffDetail,
    TResult? Function(StaffDetailStateData? data)? getBusinessLocation,
    TResult? Function(StaffDetailStateData? data)? getStaffRoles,
    TResult? Function(StaffDetailStateData? data)? getStaffInformation,
  }) {
    return getBusinessLocation?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StaffDetailStateData? data)? initial,
    TResult Function(StaffDetailStateData? data)? status,
    TResult Function(StaffDetailStateData? data)? getStaffDetail,
    TResult Function(StaffDetailStateData? data)? getBusinessLocation,
    TResult Function(StaffDetailStateData? data)? getStaffRoles,
    TResult Function(StaffDetailStateData? data)? getStaffInformation,
    required TResult orElse(),
  }) {
    if (getBusinessLocation != null) {
      return getBusinessLocation(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetStaffDetail value) getStaffDetail,
    required TResult Function(GetBusinessLocation value) getBusinessLocation,
    required TResult Function(GetStaffRoles value) getStaffRoles,
    required TResult Function(GetStaffCreateInformation value)
        getStaffInformation,
  }) {
    return getBusinessLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStaffDetail value)? getStaffDetail,
    TResult? Function(GetBusinessLocation value)? getBusinessLocation,
    TResult? Function(GetStaffRoles value)? getStaffRoles,
    TResult? Function(GetStaffCreateInformation value)? getStaffInformation,
  }) {
    return getBusinessLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStaffDetail value)? getStaffDetail,
    TResult Function(GetBusinessLocation value)? getBusinessLocation,
    TResult Function(GetStaffRoles value)? getStaffRoles,
    TResult Function(GetStaffCreateInformation value)? getStaffInformation,
    required TResult orElse(),
  }) {
    if (getBusinessLocation != null) {
      return getBusinessLocation(this);
    }
    return orElse();
  }
}

abstract class GetBusinessLocation implements StaffDetailState {
  const factory GetBusinessLocation({final StaffDetailStateData? data}) =
      _$GetBusinessLocation;

  @override
  StaffDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetBusinessLocationCopyWith<_$GetBusinessLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStaffRolesCopyWith<$Res>
    implements $StaffDetailStateCopyWith<$Res> {
  factory _$$GetStaffRolesCopyWith(
          _$GetStaffRoles value, $Res Function(_$GetStaffRoles) then) =
      __$$GetStaffRolesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StaffDetailStateData? data});

  @override
  $StaffDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetStaffRolesCopyWithImpl<$Res>
    extends _$StaffDetailStateCopyWithImpl<$Res, _$GetStaffRoles>
    implements _$$GetStaffRolesCopyWith<$Res> {
  __$$GetStaffRolesCopyWithImpl(
      _$GetStaffRoles _value, $Res Function(_$GetStaffRoles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetStaffRoles(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StaffDetailStateData?,
    ));
  }
}

/// @nodoc

class _$GetStaffRoles implements GetStaffRoles {
  const _$GetStaffRoles({this.data});

  @override
  final StaffDetailStateData? data;

  @override
  String toString() {
    return 'StaffDetailState.getStaffRoles(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStaffRoles &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStaffRolesCopyWith<_$GetStaffRoles> get copyWith =>
      __$$GetStaffRolesCopyWithImpl<_$GetStaffRoles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StaffDetailStateData? data) initial,
    required TResult Function(StaffDetailStateData? data) status,
    required TResult Function(StaffDetailStateData? data) getStaffDetail,
    required TResult Function(StaffDetailStateData? data) getBusinessLocation,
    required TResult Function(StaffDetailStateData? data) getStaffRoles,
    required TResult Function(StaffDetailStateData? data) getStaffInformation,
  }) {
    return getStaffRoles(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StaffDetailStateData? data)? initial,
    TResult? Function(StaffDetailStateData? data)? status,
    TResult? Function(StaffDetailStateData? data)? getStaffDetail,
    TResult? Function(StaffDetailStateData? data)? getBusinessLocation,
    TResult? Function(StaffDetailStateData? data)? getStaffRoles,
    TResult? Function(StaffDetailStateData? data)? getStaffInformation,
  }) {
    return getStaffRoles?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StaffDetailStateData? data)? initial,
    TResult Function(StaffDetailStateData? data)? status,
    TResult Function(StaffDetailStateData? data)? getStaffDetail,
    TResult Function(StaffDetailStateData? data)? getBusinessLocation,
    TResult Function(StaffDetailStateData? data)? getStaffRoles,
    TResult Function(StaffDetailStateData? data)? getStaffInformation,
    required TResult orElse(),
  }) {
    if (getStaffRoles != null) {
      return getStaffRoles(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetStaffDetail value) getStaffDetail,
    required TResult Function(GetBusinessLocation value) getBusinessLocation,
    required TResult Function(GetStaffRoles value) getStaffRoles,
    required TResult Function(GetStaffCreateInformation value)
        getStaffInformation,
  }) {
    return getStaffRoles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStaffDetail value)? getStaffDetail,
    TResult? Function(GetBusinessLocation value)? getBusinessLocation,
    TResult? Function(GetStaffRoles value)? getStaffRoles,
    TResult? Function(GetStaffCreateInformation value)? getStaffInformation,
  }) {
    return getStaffRoles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStaffDetail value)? getStaffDetail,
    TResult Function(GetBusinessLocation value)? getBusinessLocation,
    TResult Function(GetStaffRoles value)? getStaffRoles,
    TResult Function(GetStaffCreateInformation value)? getStaffInformation,
    required TResult orElse(),
  }) {
    if (getStaffRoles != null) {
      return getStaffRoles(this);
    }
    return orElse();
  }
}

abstract class GetStaffRoles implements StaffDetailState {
  const factory GetStaffRoles({final StaffDetailStateData? data}) =
      _$GetStaffRoles;

  @override
  StaffDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetStaffRolesCopyWith<_$GetStaffRoles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStaffCreateInformationCopyWith<$Res>
    implements $StaffDetailStateCopyWith<$Res> {
  factory _$$GetStaffCreateInformationCopyWith(
          _$GetStaffCreateInformation value,
          $Res Function(_$GetStaffCreateInformation) then) =
      __$$GetStaffCreateInformationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StaffDetailStateData? data});

  @override
  $StaffDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetStaffCreateInformationCopyWithImpl<$Res>
    extends _$StaffDetailStateCopyWithImpl<$Res, _$GetStaffCreateInformation>
    implements _$$GetStaffCreateInformationCopyWith<$Res> {
  __$$GetStaffCreateInformationCopyWithImpl(_$GetStaffCreateInformation _value,
      $Res Function(_$GetStaffCreateInformation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetStaffCreateInformation(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StaffDetailStateData?,
    ));
  }
}

/// @nodoc

class _$GetStaffCreateInformation implements GetStaffCreateInformation {
  const _$GetStaffCreateInformation({this.data});

  @override
  final StaffDetailStateData? data;

  @override
  String toString() {
    return 'StaffDetailState.getStaffInformation(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStaffCreateInformation &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStaffCreateInformationCopyWith<_$GetStaffCreateInformation>
      get copyWith => __$$GetStaffCreateInformationCopyWithImpl<
          _$GetStaffCreateInformation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StaffDetailStateData? data) initial,
    required TResult Function(StaffDetailStateData? data) status,
    required TResult Function(StaffDetailStateData? data) getStaffDetail,
    required TResult Function(StaffDetailStateData? data) getBusinessLocation,
    required TResult Function(StaffDetailStateData? data) getStaffRoles,
    required TResult Function(StaffDetailStateData? data) getStaffInformation,
  }) {
    return getStaffInformation(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StaffDetailStateData? data)? initial,
    TResult? Function(StaffDetailStateData? data)? status,
    TResult? Function(StaffDetailStateData? data)? getStaffDetail,
    TResult? Function(StaffDetailStateData? data)? getBusinessLocation,
    TResult? Function(StaffDetailStateData? data)? getStaffRoles,
    TResult? Function(StaffDetailStateData? data)? getStaffInformation,
  }) {
    return getStaffInformation?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StaffDetailStateData? data)? initial,
    TResult Function(StaffDetailStateData? data)? status,
    TResult Function(StaffDetailStateData? data)? getStaffDetail,
    TResult Function(StaffDetailStateData? data)? getBusinessLocation,
    TResult Function(StaffDetailStateData? data)? getStaffRoles,
    TResult Function(StaffDetailStateData? data)? getStaffInformation,
    required TResult orElse(),
  }) {
    if (getStaffInformation != null) {
      return getStaffInformation(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetStaffDetail value) getStaffDetail,
    required TResult Function(GetBusinessLocation value) getBusinessLocation,
    required TResult Function(GetStaffRoles value) getStaffRoles,
    required TResult Function(GetStaffCreateInformation value)
        getStaffInformation,
  }) {
    return getStaffInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStaffDetail value)? getStaffDetail,
    TResult? Function(GetBusinessLocation value)? getBusinessLocation,
    TResult? Function(GetStaffRoles value)? getStaffRoles,
    TResult? Function(GetStaffCreateInformation value)? getStaffInformation,
  }) {
    return getStaffInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStaffDetail value)? getStaffDetail,
    TResult Function(GetBusinessLocation value)? getBusinessLocation,
    TResult Function(GetStaffRoles value)? getStaffRoles,
    TResult Function(GetStaffCreateInformation value)? getStaffInformation,
    required TResult orElse(),
  }) {
    if (getStaffInformation != null) {
      return getStaffInformation(this);
    }
    return orElse();
  }
}

abstract class GetStaffCreateInformation implements StaffDetailState {
  const factory GetStaffCreateInformation({final StaffDetailStateData? data}) =
      _$GetStaffCreateInformation;

  @override
  StaffDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetStaffCreateInformationCopyWith<_$GetStaffCreateInformation>
      get copyWith => throw _privateConstructorUsedError;
}
