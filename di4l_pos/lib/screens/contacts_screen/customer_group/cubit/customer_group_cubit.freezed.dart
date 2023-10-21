// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_group_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerGroupStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<CustomerGroupModel>? get customerGroups =>
      throw _privateConstructorUsedError;
  List<CustomerGroupModel>? get customerGroupsOriginal =>
      throw _privateConstructorUsedError;
  CustomerGroupModel? get customerGroup => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerGroupStateDataCopyWith<CustomerGroupStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerGroupStateDataCopyWith<$Res> {
  factory $CustomerGroupStateDataCopyWith(CustomerGroupStateData value,
          $Res Function(CustomerGroupStateData) then) =
      _$CustomerGroupStateDataCopyWithImpl<$Res, CustomerGroupStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<CustomerGroupModel>? customerGroups,
      List<CustomerGroupModel>? customerGroupsOriginal,
      CustomerGroupModel? customerGroup});
}

/// @nodoc
class _$CustomerGroupStateDataCopyWithImpl<$Res,
        $Val extends CustomerGroupStateData>
    implements $CustomerGroupStateDataCopyWith<$Res> {
  _$CustomerGroupStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? customerGroups = freezed,
    Object? customerGroupsOriginal = freezed,
    Object? customerGroup = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      customerGroups: freezed == customerGroups
          ? _value.customerGroups
          : customerGroups // ignore: cast_nullable_to_non_nullable
              as List<CustomerGroupModel>?,
      customerGroupsOriginal: freezed == customerGroupsOriginal
          ? _value.customerGroupsOriginal
          : customerGroupsOriginal // ignore: cast_nullable_to_non_nullable
              as List<CustomerGroupModel>?,
      customerGroup: freezed == customerGroup
          ? _value.customerGroup
          : customerGroup // ignore: cast_nullable_to_non_nullable
              as CustomerGroupModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerGroupStateDataCopyWith<$Res>
    implements $CustomerGroupStateDataCopyWith<$Res> {
  factory _$$_CustomerGroupStateDataCopyWith(_$_CustomerGroupStateData value,
          $Res Function(_$_CustomerGroupStateData) then) =
      __$$_CustomerGroupStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<CustomerGroupModel>? customerGroups,
      List<CustomerGroupModel>? customerGroupsOriginal,
      CustomerGroupModel? customerGroup});
}

/// @nodoc
class __$$_CustomerGroupStateDataCopyWithImpl<$Res>
    extends _$CustomerGroupStateDataCopyWithImpl<$Res,
        _$_CustomerGroupStateData>
    implements _$$_CustomerGroupStateDataCopyWith<$Res> {
  __$$_CustomerGroupStateDataCopyWithImpl(_$_CustomerGroupStateData _value,
      $Res Function(_$_CustomerGroupStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? customerGroups = freezed,
    Object? customerGroupsOriginal = freezed,
    Object? customerGroup = freezed,
  }) {
    return _then(_$_CustomerGroupStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      customerGroups: freezed == customerGroups
          ? _value._customerGroups
          : customerGroups // ignore: cast_nullable_to_non_nullable
              as List<CustomerGroupModel>?,
      customerGroupsOriginal: freezed == customerGroupsOriginal
          ? _value._customerGroupsOriginal
          : customerGroupsOriginal // ignore: cast_nullable_to_non_nullable
              as List<CustomerGroupModel>?,
      customerGroup: freezed == customerGroup
          ? _value.customerGroup
          : customerGroup // ignore: cast_nullable_to_non_nullable
              as CustomerGroupModel?,
    ));
  }
}

/// @nodoc

class _$_CustomerGroupStateData implements _CustomerGroupStateData {
  const _$_CustomerGroupStateData(
      {this.status = StatusType.init,
      final List<CustomerGroupModel>? customerGroups = const [],
      final List<CustomerGroupModel>? customerGroupsOriginal = const [],
      this.customerGroup})
      : _customerGroups = customerGroups,
        _customerGroupsOriginal = customerGroupsOriginal;

  @override
  @JsonKey()
  final StatusType status;
  final List<CustomerGroupModel>? _customerGroups;
  @override
  @JsonKey()
  List<CustomerGroupModel>? get customerGroups {
    final value = _customerGroups;
    if (value == null) return null;
    if (_customerGroups is EqualUnmodifiableListView) return _customerGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CustomerGroupModel>? _customerGroupsOriginal;
  @override
  @JsonKey()
  List<CustomerGroupModel>? get customerGroupsOriginal {
    final value = _customerGroupsOriginal;
    if (value == null) return null;
    if (_customerGroupsOriginal is EqualUnmodifiableListView)
      return _customerGroupsOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CustomerGroupModel? customerGroup;

  @override
  String toString() {
    return 'CustomerGroupStateData(status: $status, customerGroups: $customerGroups, customerGroupsOriginal: $customerGroupsOriginal, customerGroup: $customerGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerGroupStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._customerGroups, _customerGroups) &&
            const DeepCollectionEquality().equals(
                other._customerGroupsOriginal, _customerGroupsOriginal) &&
            (identical(other.customerGroup, customerGroup) ||
                other.customerGroup == customerGroup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_customerGroups),
      const DeepCollectionEquality().hash(_customerGroupsOriginal),
      customerGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerGroupStateDataCopyWith<_$_CustomerGroupStateData> get copyWith =>
      __$$_CustomerGroupStateDataCopyWithImpl<_$_CustomerGroupStateData>(
          this, _$identity);
}

abstract class _CustomerGroupStateData implements CustomerGroupStateData {
  const factory _CustomerGroupStateData(
      {final StatusType status,
      final List<CustomerGroupModel>? customerGroups,
      final List<CustomerGroupModel>? customerGroupsOriginal,
      final CustomerGroupModel? customerGroup}) = _$_CustomerGroupStateData;

  @override
  StatusType get status;
  @override
  List<CustomerGroupModel>? get customerGroups;
  @override
  List<CustomerGroupModel>? get customerGroupsOriginal;
  @override
  CustomerGroupModel? get customerGroup;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerGroupStateDataCopyWith<_$_CustomerGroupStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerGroupState {
  CustomerGroupStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerGroupStateData? data) initial,
    required TResult Function(CustomerGroupStateData? data) status,
    required TResult Function(CustomerGroupStateData? data) getCustomerGroups,
    required TResult Function(CustomerGroupStateData? data) getCustomerGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerGroupStateData? data)? initial,
    TResult? Function(CustomerGroupStateData? data)? status,
    TResult? Function(CustomerGroupStateData? data)? getCustomerGroups,
    TResult? Function(CustomerGroupStateData? data)? getCustomerGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerGroupStateData? data)? initial,
    TResult Function(CustomerGroupStateData? data)? status,
    TResult Function(CustomerGroupStateData? data)? getCustomerGroups,
    TResult Function(CustomerGroupStateData? data)? getCustomerGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCustomerGroups value) getCustomerGroups,
    required TResult Function(GetCustomerGroup value) getCustomerGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCustomerGroups value)? getCustomerGroups,
    TResult? Function(GetCustomerGroup value)? getCustomerGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCustomerGroups value)? getCustomerGroups,
    TResult Function(GetCustomerGroup value)? getCustomerGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerGroupStateCopyWith<CustomerGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerGroupStateCopyWith<$Res> {
  factory $CustomerGroupStateCopyWith(
          CustomerGroupState value, $Res Function(CustomerGroupState) then) =
      _$CustomerGroupStateCopyWithImpl<$Res, CustomerGroupState>;
  @useResult
  $Res call({CustomerGroupStateData? data});

  $CustomerGroupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CustomerGroupStateCopyWithImpl<$Res, $Val extends CustomerGroupState>
    implements $CustomerGroupStateCopyWith<$Res> {
  _$CustomerGroupStateCopyWithImpl(this._value, this._then);

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
              as CustomerGroupStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerGroupStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CustomerGroupStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $CustomerGroupStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerGroupStateData? data});

  @override
  $CustomerGroupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$CustomerGroupStateCopyWithImpl<$Res, _$Initial>
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
              as CustomerGroupStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final CustomerGroupStateData? data;

  @override
  String toString() {
    return 'CustomerGroupState.initial(data: $data)';
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
    required TResult Function(CustomerGroupStateData? data) initial,
    required TResult Function(CustomerGroupStateData? data) status,
    required TResult Function(CustomerGroupStateData? data) getCustomerGroups,
    required TResult Function(CustomerGroupStateData? data) getCustomerGroup,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerGroupStateData? data)? initial,
    TResult? Function(CustomerGroupStateData? data)? status,
    TResult? Function(CustomerGroupStateData? data)? getCustomerGroups,
    TResult? Function(CustomerGroupStateData? data)? getCustomerGroup,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerGroupStateData? data)? initial,
    TResult Function(CustomerGroupStateData? data)? status,
    TResult Function(CustomerGroupStateData? data)? getCustomerGroups,
    TResult Function(CustomerGroupStateData? data)? getCustomerGroup,
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
    required TResult Function(GetCustomerGroups value) getCustomerGroups,
    required TResult Function(GetCustomerGroup value) getCustomerGroup,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCustomerGroups value)? getCustomerGroups,
    TResult? Function(GetCustomerGroup value)? getCustomerGroup,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCustomerGroups value)? getCustomerGroups,
    TResult Function(GetCustomerGroup value)? getCustomerGroup,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CustomerGroupState {
  const factory Initial({final CustomerGroupStateData? data}) = _$Initial;

  @override
  CustomerGroupStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $CustomerGroupStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerGroupStateData? data});

  @override
  $CustomerGroupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$CustomerGroupStateCopyWithImpl<$Res, _$Status>
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
              as CustomerGroupStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final CustomerGroupStateData? data;

  @override
  String toString() {
    return 'CustomerGroupState.status(data: $data)';
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
    required TResult Function(CustomerGroupStateData? data) initial,
    required TResult Function(CustomerGroupStateData? data) status,
    required TResult Function(CustomerGroupStateData? data) getCustomerGroups,
    required TResult Function(CustomerGroupStateData? data) getCustomerGroup,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerGroupStateData? data)? initial,
    TResult? Function(CustomerGroupStateData? data)? status,
    TResult? Function(CustomerGroupStateData? data)? getCustomerGroups,
    TResult? Function(CustomerGroupStateData? data)? getCustomerGroup,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerGroupStateData? data)? initial,
    TResult Function(CustomerGroupStateData? data)? status,
    TResult Function(CustomerGroupStateData? data)? getCustomerGroups,
    TResult Function(CustomerGroupStateData? data)? getCustomerGroup,
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
    required TResult Function(GetCustomerGroups value) getCustomerGroups,
    required TResult Function(GetCustomerGroup value) getCustomerGroup,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCustomerGroups value)? getCustomerGroups,
    TResult? Function(GetCustomerGroup value)? getCustomerGroup,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCustomerGroups value)? getCustomerGroups,
    TResult Function(GetCustomerGroup value)? getCustomerGroup,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements CustomerGroupState {
  const factory Status({final CustomerGroupStateData? data}) = _$Status;

  @override
  CustomerGroupStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCustomerGroupsCopyWith<$Res>
    implements $CustomerGroupStateCopyWith<$Res> {
  factory _$$GetCustomerGroupsCopyWith(
          _$GetCustomerGroups value, $Res Function(_$GetCustomerGroups) then) =
      __$$GetCustomerGroupsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerGroupStateData? data});

  @override
  $CustomerGroupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetCustomerGroupsCopyWithImpl<$Res>
    extends _$CustomerGroupStateCopyWithImpl<$Res, _$GetCustomerGroups>
    implements _$$GetCustomerGroupsCopyWith<$Res> {
  __$$GetCustomerGroupsCopyWithImpl(
      _$GetCustomerGroups _value, $Res Function(_$GetCustomerGroups) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCustomerGroups(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerGroupStateData?,
    ));
  }
}

/// @nodoc

class _$GetCustomerGroups implements GetCustomerGroups {
  const _$GetCustomerGroups({this.data});

  @override
  final CustomerGroupStateData? data;

  @override
  String toString() {
    return 'CustomerGroupState.getCustomerGroups(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomerGroups &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomerGroupsCopyWith<_$GetCustomerGroups> get copyWith =>
      __$$GetCustomerGroupsCopyWithImpl<_$GetCustomerGroups>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerGroupStateData? data) initial,
    required TResult Function(CustomerGroupStateData? data) status,
    required TResult Function(CustomerGroupStateData? data) getCustomerGroups,
    required TResult Function(CustomerGroupStateData? data) getCustomerGroup,
  }) {
    return getCustomerGroups(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerGroupStateData? data)? initial,
    TResult? Function(CustomerGroupStateData? data)? status,
    TResult? Function(CustomerGroupStateData? data)? getCustomerGroups,
    TResult? Function(CustomerGroupStateData? data)? getCustomerGroup,
  }) {
    return getCustomerGroups?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerGroupStateData? data)? initial,
    TResult Function(CustomerGroupStateData? data)? status,
    TResult Function(CustomerGroupStateData? data)? getCustomerGroups,
    TResult Function(CustomerGroupStateData? data)? getCustomerGroup,
    required TResult orElse(),
  }) {
    if (getCustomerGroups != null) {
      return getCustomerGroups(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCustomerGroups value) getCustomerGroups,
    required TResult Function(GetCustomerGroup value) getCustomerGroup,
  }) {
    return getCustomerGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCustomerGroups value)? getCustomerGroups,
    TResult? Function(GetCustomerGroup value)? getCustomerGroup,
  }) {
    return getCustomerGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCustomerGroups value)? getCustomerGroups,
    TResult Function(GetCustomerGroup value)? getCustomerGroup,
    required TResult orElse(),
  }) {
    if (getCustomerGroups != null) {
      return getCustomerGroups(this);
    }
    return orElse();
  }
}

abstract class GetCustomerGroups implements CustomerGroupState {
  const factory GetCustomerGroups({final CustomerGroupStateData? data}) =
      _$GetCustomerGroups;

  @override
  CustomerGroupStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetCustomerGroupsCopyWith<_$GetCustomerGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCustomerGroupCopyWith<$Res>
    implements $CustomerGroupStateCopyWith<$Res> {
  factory _$$GetCustomerGroupCopyWith(
          _$GetCustomerGroup value, $Res Function(_$GetCustomerGroup) then) =
      __$$GetCustomerGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerGroupStateData? data});

  @override
  $CustomerGroupStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetCustomerGroupCopyWithImpl<$Res>
    extends _$CustomerGroupStateCopyWithImpl<$Res, _$GetCustomerGroup>
    implements _$$GetCustomerGroupCopyWith<$Res> {
  __$$GetCustomerGroupCopyWithImpl(
      _$GetCustomerGroup _value, $Res Function(_$GetCustomerGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCustomerGroup(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerGroupStateData?,
    ));
  }
}

/// @nodoc

class _$GetCustomerGroup implements GetCustomerGroup {
  const _$GetCustomerGroup({this.data});

  @override
  final CustomerGroupStateData? data;

  @override
  String toString() {
    return 'CustomerGroupState.getCustomerGroup(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomerGroup &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomerGroupCopyWith<_$GetCustomerGroup> get copyWith =>
      __$$GetCustomerGroupCopyWithImpl<_$GetCustomerGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerGroupStateData? data) initial,
    required TResult Function(CustomerGroupStateData? data) status,
    required TResult Function(CustomerGroupStateData? data) getCustomerGroups,
    required TResult Function(CustomerGroupStateData? data) getCustomerGroup,
  }) {
    return getCustomerGroup(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerGroupStateData? data)? initial,
    TResult? Function(CustomerGroupStateData? data)? status,
    TResult? Function(CustomerGroupStateData? data)? getCustomerGroups,
    TResult? Function(CustomerGroupStateData? data)? getCustomerGroup,
  }) {
    return getCustomerGroup?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerGroupStateData? data)? initial,
    TResult Function(CustomerGroupStateData? data)? status,
    TResult Function(CustomerGroupStateData? data)? getCustomerGroups,
    TResult Function(CustomerGroupStateData? data)? getCustomerGroup,
    required TResult orElse(),
  }) {
    if (getCustomerGroup != null) {
      return getCustomerGroup(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCustomerGroups value) getCustomerGroups,
    required TResult Function(GetCustomerGroup value) getCustomerGroup,
  }) {
    return getCustomerGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCustomerGroups value)? getCustomerGroups,
    TResult? Function(GetCustomerGroup value)? getCustomerGroup,
  }) {
    return getCustomerGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCustomerGroups value)? getCustomerGroups,
    TResult Function(GetCustomerGroup value)? getCustomerGroup,
    required TResult orElse(),
  }) {
    if (getCustomerGroup != null) {
      return getCustomerGroup(this);
    }
    return orElse();
  }
}

abstract class GetCustomerGroup implements CustomerGroupState {
  const factory GetCustomerGroup({final CustomerGroupStateData? data}) =
      _$GetCustomerGroup;

  @override
  CustomerGroupStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetCustomerGroupCopyWith<_$GetCustomerGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
