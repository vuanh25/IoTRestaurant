// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_management_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StaffManagementStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<Staff> get staffs => throw _privateConstructorUsedError;
  List<Staff> get staffsOriginal => throw _privateConstructorUsedError;
  StaffDetailResponse? get staffDetail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaffManagementStateDataCopyWith<StaffManagementStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffManagementStateDataCopyWith<$Res> {
  factory $StaffManagementStateDataCopyWith(StaffManagementStateData value,
          $Res Function(StaffManagementStateData) then) =
      _$StaffManagementStateDataCopyWithImpl<$Res, StaffManagementStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<Staff> staffs,
      List<Staff> staffsOriginal,
      StaffDetailResponse? staffDetail});
}

/// @nodoc
class _$StaffManagementStateDataCopyWithImpl<$Res,
        $Val extends StaffManagementStateData>
    implements $StaffManagementStateDataCopyWith<$Res> {
  _$StaffManagementStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? staffs = null,
    Object? staffsOriginal = null,
    Object? staffDetail = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      staffs: null == staffs
          ? _value.staffs
          : staffs // ignore: cast_nullable_to_non_nullable
              as List<Staff>,
      staffsOriginal: null == staffsOriginal
          ? _value.staffsOriginal
          : staffsOriginal // ignore: cast_nullable_to_non_nullable
              as List<Staff>,
      staffDetail: freezed == staffDetail
          ? _value.staffDetail
          : staffDetail // ignore: cast_nullable_to_non_nullable
              as StaffDetailResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StaffManagementStateDataCopyWith<$Res>
    implements $StaffManagementStateDataCopyWith<$Res> {
  factory _$$_StaffManagementStateDataCopyWith(
          _$_StaffManagementStateData value,
          $Res Function(_$_StaffManagementStateData) then) =
      __$$_StaffManagementStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<Staff> staffs,
      List<Staff> staffsOriginal,
      StaffDetailResponse? staffDetail});
}

/// @nodoc
class __$$_StaffManagementStateDataCopyWithImpl<$Res>
    extends _$StaffManagementStateDataCopyWithImpl<$Res,
        _$_StaffManagementStateData>
    implements _$$_StaffManagementStateDataCopyWith<$Res> {
  __$$_StaffManagementStateDataCopyWithImpl(_$_StaffManagementStateData _value,
      $Res Function(_$_StaffManagementStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? staffs = null,
    Object? staffsOriginal = null,
    Object? staffDetail = freezed,
  }) {
    return _then(_$_StaffManagementStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      staffs: null == staffs
          ? _value._staffs
          : staffs // ignore: cast_nullable_to_non_nullable
              as List<Staff>,
      staffsOriginal: null == staffsOriginal
          ? _value._staffsOriginal
          : staffsOriginal // ignore: cast_nullable_to_non_nullable
              as List<Staff>,
      staffDetail: freezed == staffDetail
          ? _value.staffDetail
          : staffDetail // ignore: cast_nullable_to_non_nullable
              as StaffDetailResponse?,
    ));
  }
}

/// @nodoc

class _$_StaffManagementStateData implements _StaffManagementStateData {
  const _$_StaffManagementStateData(
      {this.status = StatusType.init,
      final List<Staff> staffs = const [],
      final List<Staff> staffsOriginal = const [],
      this.staffDetail})
      : _staffs = staffs,
        _staffsOriginal = staffsOriginal;

  @override
  @JsonKey()
  final StatusType status;
  final List<Staff> _staffs;
  @override
  @JsonKey()
  List<Staff> get staffs {
    if (_staffs is EqualUnmodifiableListView) return _staffs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_staffs);
  }

  final List<Staff> _staffsOriginal;
  @override
  @JsonKey()
  List<Staff> get staffsOriginal {
    if (_staffsOriginal is EqualUnmodifiableListView) return _staffsOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_staffsOriginal);
  }

  @override
  final StaffDetailResponse? staffDetail;

  @override
  String toString() {
    return 'StaffManagementStateData(status: $status, staffs: $staffs, staffsOriginal: $staffsOriginal, staffDetail: $staffDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffManagementStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._staffs, _staffs) &&
            const DeepCollectionEquality()
                .equals(other._staffsOriginal, _staffsOriginal) &&
            (identical(other.staffDetail, staffDetail) ||
                other.staffDetail == staffDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_staffs),
      const DeepCollectionEquality().hash(_staffsOriginal),
      staffDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffManagementStateDataCopyWith<_$_StaffManagementStateData>
      get copyWith => __$$_StaffManagementStateDataCopyWithImpl<
          _$_StaffManagementStateData>(this, _$identity);
}

abstract class _StaffManagementStateData implements StaffManagementStateData {
  const factory _StaffManagementStateData(
      {final StatusType status,
      final List<Staff> staffs,
      final List<Staff> staffsOriginal,
      final StaffDetailResponse? staffDetail}) = _$_StaffManagementStateData;

  @override
  StatusType get status;
  @override
  List<Staff> get staffs;
  @override
  List<Staff> get staffsOriginal;
  @override
  StaffDetailResponse? get staffDetail;
  @override
  @JsonKey(ignore: true)
  _$$_StaffManagementStateDataCopyWith<_$_StaffManagementStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StaffManagementState {
  StaffManagementStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StaffManagementStateData? data) initial,
    required TResult Function(StaffManagementStateData? data) status,
    required TResult Function(StaffManagementStateData? data) getStaffs,
    required TResult Function(StaffManagementStateData? data) getStaffDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StaffManagementStateData? data)? initial,
    TResult? Function(StaffManagementStateData? data)? status,
    TResult? Function(StaffManagementStateData? data)? getStaffs,
    TResult? Function(StaffManagementStateData? data)? getStaffDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StaffManagementStateData? data)? initial,
    TResult Function(StaffManagementStateData? data)? status,
    TResult Function(StaffManagementStateData? data)? getStaffs,
    TResult Function(StaffManagementStateData? data)? getStaffDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetStaffs value) getStaffs,
    required TResult Function(GetStaffDetail value) getStaffDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStaffs value)? getStaffs,
    TResult? Function(GetStaffDetail value)? getStaffDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStaffs value)? getStaffs,
    TResult Function(GetStaffDetail value)? getStaffDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaffManagementStateCopyWith<StaffManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffManagementStateCopyWith<$Res> {
  factory $StaffManagementStateCopyWith(StaffManagementState value,
          $Res Function(StaffManagementState) then) =
      _$StaffManagementStateCopyWithImpl<$Res, StaffManagementState>;
  @useResult
  $Res call({StaffManagementStateData? data});

  $StaffManagementStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$StaffManagementStateCopyWithImpl<$Res,
        $Val extends StaffManagementState>
    implements $StaffManagementStateCopyWith<$Res> {
  _$StaffManagementStateCopyWithImpl(this._value, this._then);

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
              as StaffManagementStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StaffManagementStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StaffManagementStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $StaffManagementStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StaffManagementStateData? data});

  @override
  $StaffManagementStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$StaffManagementStateCopyWithImpl<$Res, _$Initial>
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
              as StaffManagementStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final StaffManagementStateData? data;

  @override
  String toString() {
    return 'StaffManagementState.initial(data: $data)';
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
    required TResult Function(StaffManagementStateData? data) initial,
    required TResult Function(StaffManagementStateData? data) status,
    required TResult Function(StaffManagementStateData? data) getStaffs,
    required TResult Function(StaffManagementStateData? data) getStaffDetail,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StaffManagementStateData? data)? initial,
    TResult? Function(StaffManagementStateData? data)? status,
    TResult? Function(StaffManagementStateData? data)? getStaffs,
    TResult? Function(StaffManagementStateData? data)? getStaffDetail,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StaffManagementStateData? data)? initial,
    TResult Function(StaffManagementStateData? data)? status,
    TResult Function(StaffManagementStateData? data)? getStaffs,
    TResult Function(StaffManagementStateData? data)? getStaffDetail,
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
    required TResult Function(GetStaffs value) getStaffs,
    required TResult Function(GetStaffDetail value) getStaffDetail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStaffs value)? getStaffs,
    TResult? Function(GetStaffDetail value)? getStaffDetail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStaffs value)? getStaffs,
    TResult Function(GetStaffDetail value)? getStaffDetail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements StaffManagementState {
  const factory Initial({final StaffManagementStateData? data}) = _$Initial;

  @override
  StaffManagementStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $StaffManagementStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StaffManagementStateData? data});

  @override
  $StaffManagementStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$StaffManagementStateCopyWithImpl<$Res, _$Status>
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
              as StaffManagementStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final StaffManagementStateData? data;

  @override
  String toString() {
    return 'StaffManagementState.status(data: $data)';
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
    required TResult Function(StaffManagementStateData? data) initial,
    required TResult Function(StaffManagementStateData? data) status,
    required TResult Function(StaffManagementStateData? data) getStaffs,
    required TResult Function(StaffManagementStateData? data) getStaffDetail,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StaffManagementStateData? data)? initial,
    TResult? Function(StaffManagementStateData? data)? status,
    TResult? Function(StaffManagementStateData? data)? getStaffs,
    TResult? Function(StaffManagementStateData? data)? getStaffDetail,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StaffManagementStateData? data)? initial,
    TResult Function(StaffManagementStateData? data)? status,
    TResult Function(StaffManagementStateData? data)? getStaffs,
    TResult Function(StaffManagementStateData? data)? getStaffDetail,
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
    required TResult Function(GetStaffs value) getStaffs,
    required TResult Function(GetStaffDetail value) getStaffDetail,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStaffs value)? getStaffs,
    TResult? Function(GetStaffDetail value)? getStaffDetail,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStaffs value)? getStaffs,
    TResult Function(GetStaffDetail value)? getStaffDetail,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements StaffManagementState {
  const factory Status({final StaffManagementStateData? data}) = _$Status;

  @override
  StaffManagementStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStaffsCopyWith<$Res>
    implements $StaffManagementStateCopyWith<$Res> {
  factory _$$GetStaffsCopyWith(
          _$GetStaffs value, $Res Function(_$GetStaffs) then) =
      __$$GetStaffsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StaffManagementStateData? data});

  @override
  $StaffManagementStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetStaffsCopyWithImpl<$Res>
    extends _$StaffManagementStateCopyWithImpl<$Res, _$GetStaffs>
    implements _$$GetStaffsCopyWith<$Res> {
  __$$GetStaffsCopyWithImpl(
      _$GetStaffs _value, $Res Function(_$GetStaffs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetStaffs(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StaffManagementStateData?,
    ));
  }
}

/// @nodoc

class _$GetStaffs implements GetStaffs {
  const _$GetStaffs({this.data});

  @override
  final StaffManagementStateData? data;

  @override
  String toString() {
    return 'StaffManagementState.getStaffs(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStaffs &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStaffsCopyWith<_$GetStaffs> get copyWith =>
      __$$GetStaffsCopyWithImpl<_$GetStaffs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StaffManagementStateData? data) initial,
    required TResult Function(StaffManagementStateData? data) status,
    required TResult Function(StaffManagementStateData? data) getStaffs,
    required TResult Function(StaffManagementStateData? data) getStaffDetail,
  }) {
    return getStaffs(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StaffManagementStateData? data)? initial,
    TResult? Function(StaffManagementStateData? data)? status,
    TResult? Function(StaffManagementStateData? data)? getStaffs,
    TResult? Function(StaffManagementStateData? data)? getStaffDetail,
  }) {
    return getStaffs?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StaffManagementStateData? data)? initial,
    TResult Function(StaffManagementStateData? data)? status,
    TResult Function(StaffManagementStateData? data)? getStaffs,
    TResult Function(StaffManagementStateData? data)? getStaffDetail,
    required TResult orElse(),
  }) {
    if (getStaffs != null) {
      return getStaffs(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetStaffs value) getStaffs,
    required TResult Function(GetStaffDetail value) getStaffDetail,
  }) {
    return getStaffs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStaffs value)? getStaffs,
    TResult? Function(GetStaffDetail value)? getStaffDetail,
  }) {
    return getStaffs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStaffs value)? getStaffs,
    TResult Function(GetStaffDetail value)? getStaffDetail,
    required TResult orElse(),
  }) {
    if (getStaffs != null) {
      return getStaffs(this);
    }
    return orElse();
  }
}

abstract class GetStaffs implements StaffManagementState {
  const factory GetStaffs({final StaffManagementStateData? data}) = _$GetStaffs;

  @override
  StaffManagementStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetStaffsCopyWith<_$GetStaffs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStaffDetailCopyWith<$Res>
    implements $StaffManagementStateCopyWith<$Res> {
  factory _$$GetStaffDetailCopyWith(
          _$GetStaffDetail value, $Res Function(_$GetStaffDetail) then) =
      __$$GetStaffDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StaffManagementStateData? data});

  @override
  $StaffManagementStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetStaffDetailCopyWithImpl<$Res>
    extends _$StaffManagementStateCopyWithImpl<$Res, _$GetStaffDetail>
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
              as StaffManagementStateData?,
    ));
  }
}

/// @nodoc

class _$GetStaffDetail implements GetStaffDetail {
  const _$GetStaffDetail({this.data});

  @override
  final StaffManagementStateData? data;

  @override
  String toString() {
    return 'StaffManagementState.getStaffDetail(data: $data)';
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
    required TResult Function(StaffManagementStateData? data) initial,
    required TResult Function(StaffManagementStateData? data) status,
    required TResult Function(StaffManagementStateData? data) getStaffs,
    required TResult Function(StaffManagementStateData? data) getStaffDetail,
  }) {
    return getStaffDetail(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StaffManagementStateData? data)? initial,
    TResult? Function(StaffManagementStateData? data)? status,
    TResult? Function(StaffManagementStateData? data)? getStaffs,
    TResult? Function(StaffManagementStateData? data)? getStaffDetail,
  }) {
    return getStaffDetail?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StaffManagementStateData? data)? initial,
    TResult Function(StaffManagementStateData? data)? status,
    TResult Function(StaffManagementStateData? data)? getStaffs,
    TResult Function(StaffManagementStateData? data)? getStaffDetail,
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
    required TResult Function(GetStaffs value) getStaffs,
    required TResult Function(GetStaffDetail value) getStaffDetail,
  }) {
    return getStaffDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetStaffs value)? getStaffs,
    TResult? Function(GetStaffDetail value)? getStaffDetail,
  }) {
    return getStaffDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetStaffs value)? getStaffs,
    TResult Function(GetStaffDetail value)? getStaffDetail,
    required TResult orElse(),
  }) {
    if (getStaffDetail != null) {
      return getStaffDetail(this);
    }
    return orElse();
  }
}

abstract class GetStaffDetail implements StaffManagementState {
  const factory GetStaffDetail({final StaffManagementStateData? data}) =
      _$GetStaffDetail;

  @override
  StaffManagementStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetStaffDetailCopyWith<_$GetStaffDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
