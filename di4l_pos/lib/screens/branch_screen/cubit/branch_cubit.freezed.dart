// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BranchStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<Branch> get branches => throw _privateConstructorUsedError;
  Branch? get branch => throw _privateConstructorUsedError;
  Branch? get branchSelected => throw _privateConstructorUsedError;
  List<Branch> get branchesOriginal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BranchStateDataCopyWith<BranchStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchStateDataCopyWith<$Res> {
  factory $BranchStateDataCopyWith(
          BranchStateData value, $Res Function(BranchStateData) then) =
      _$BranchStateDataCopyWithImpl<$Res, BranchStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<Branch> branches,
      Branch? branch,
      Branch? branchSelected,
      List<Branch> branchesOriginal});
}

/// @nodoc
class _$BranchStateDataCopyWithImpl<$Res, $Val extends BranchStateData>
    implements $BranchStateDataCopyWith<$Res> {
  _$BranchStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? branches = null,
    Object? branch = freezed,
    Object? branchSelected = freezed,
    Object? branchesOriginal = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      branches: null == branches
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch?,
      branchSelected: freezed == branchSelected
          ? _value.branchSelected
          : branchSelected // ignore: cast_nullable_to_non_nullable
              as Branch?,
      branchesOriginal: null == branchesOriginal
          ? _value.branchesOriginal
          : branchesOriginal // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BranchStateDataCopyWith<$Res>
    implements $BranchStateDataCopyWith<$Res> {
  factory _$$_BranchStateDataCopyWith(
          _$_BranchStateData value, $Res Function(_$_BranchStateData) then) =
      __$$_BranchStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<Branch> branches,
      Branch? branch,
      Branch? branchSelected,
      List<Branch> branchesOriginal});
}

/// @nodoc
class __$$_BranchStateDataCopyWithImpl<$Res>
    extends _$BranchStateDataCopyWithImpl<$Res, _$_BranchStateData>
    implements _$$_BranchStateDataCopyWith<$Res> {
  __$$_BranchStateDataCopyWithImpl(
      _$_BranchStateData _value, $Res Function(_$_BranchStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? branches = null,
    Object? branch = freezed,
    Object? branchSelected = freezed,
    Object? branchesOriginal = null,
  }) {
    return _then(_$_BranchStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      branches: null == branches
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch?,
      branchSelected: freezed == branchSelected
          ? _value.branchSelected
          : branchSelected // ignore: cast_nullable_to_non_nullable
              as Branch?,
      branchesOriginal: null == branchesOriginal
          ? _value._branchesOriginal
          : branchesOriginal // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
    ));
  }
}

/// @nodoc

class _$_BranchStateData implements _BranchStateData {
  const _$_BranchStateData(
      {this.status = StatusType.init,
      final List<Branch> branches = const [],
      this.branch,
      this.branchSelected,
      final List<Branch> branchesOriginal = const []})
      : _branches = branches,
        _branchesOriginal = branchesOriginal;

  @override
  @JsonKey()
  final StatusType status;
  final List<Branch> _branches;
  @override
  @JsonKey()
  List<Branch> get branches {
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branches);
  }

  @override
  final Branch? branch;
  @override
  final Branch? branchSelected;
  final List<Branch> _branchesOriginal;
  @override
  @JsonKey()
  List<Branch> get branchesOriginal {
    if (_branchesOriginal is EqualUnmodifiableListView)
      return _branchesOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branchesOriginal);
  }

  @override
  String toString() {
    return 'BranchStateData(status: $status, branches: $branches, branch: $branch, branchSelected: $branchSelected, branchesOriginal: $branchesOriginal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BranchStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._branches, _branches) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.branchSelected, branchSelected) ||
                other.branchSelected == branchSelected) &&
            const DeepCollectionEquality()
                .equals(other._branchesOriginal, _branchesOriginal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_branches),
      branch,
      branchSelected,
      const DeepCollectionEquality().hash(_branchesOriginal));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BranchStateDataCopyWith<_$_BranchStateData> get copyWith =>
      __$$_BranchStateDataCopyWithImpl<_$_BranchStateData>(this, _$identity);
}

abstract class _BranchStateData implements BranchStateData {
  const factory _BranchStateData(
      {final StatusType status,
      final List<Branch> branches,
      final Branch? branch,
      final Branch? branchSelected,
      final List<Branch> branchesOriginal}) = _$_BranchStateData;

  @override
  StatusType get status;
  @override
  List<Branch> get branches;
  @override
  Branch? get branch;
  @override
  Branch? get branchSelected;
  @override
  List<Branch> get branchesOriginal;
  @override
  @JsonKey(ignore: true)
  _$$_BranchStateDataCopyWith<_$_BranchStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BranchState {
  BranchStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BranchStateData? data) initial,
    required TResult Function(BranchStateData? data) status,
    required TResult Function(BranchStateData? data) getBranch,
    required TResult Function(BranchStateData? data) getOneBranch,
    required TResult Function(BranchStateData? data) branchSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BranchStateData? data)? initial,
    TResult? Function(BranchStateData? data)? status,
    TResult? Function(BranchStateData? data)? getBranch,
    TResult? Function(BranchStateData? data)? getOneBranch,
    TResult? Function(BranchStateData? data)? branchSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BranchStateData? data)? initial,
    TResult Function(BranchStateData? data)? status,
    TResult Function(BranchStateData? data)? getBranch,
    TResult Function(BranchStateData? data)? getOneBranch,
    TResult Function(BranchStateData? data)? branchSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetBranch value) getBranch,
    required TResult Function(GetOneBranch value) getOneBranch,
    required TResult Function(BranchSelected value) branchSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBranch value)? getBranch,
    TResult? Function(GetOneBranch value)? getOneBranch,
    TResult? Function(BranchSelected value)? branchSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBranch value)? getBranch,
    TResult Function(GetOneBranch value)? getOneBranch,
    TResult Function(BranchSelected value)? branchSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BranchStateCopyWith<BranchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchStateCopyWith<$Res> {
  factory $BranchStateCopyWith(
          BranchState value, $Res Function(BranchState) then) =
      _$BranchStateCopyWithImpl<$Res, BranchState>;
  @useResult
  $Res call({BranchStateData? data});

  $BranchStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BranchStateCopyWithImpl<$Res, $Val extends BranchState>
    implements $BranchStateCopyWith<$Res> {
  _$BranchStateCopyWithImpl(this._value, this._then);

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
              as BranchStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BranchStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BranchStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $BranchStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BranchStateData? data});

  @override
  $BranchStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$BranchStateCopyWithImpl<$Res, _$Initial>
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
              as BranchStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final BranchStateData? data;

  @override
  String toString() {
    return 'BranchState.initial(data: $data)';
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
    required TResult Function(BranchStateData? data) initial,
    required TResult Function(BranchStateData? data) status,
    required TResult Function(BranchStateData? data) getBranch,
    required TResult Function(BranchStateData? data) getOneBranch,
    required TResult Function(BranchStateData? data) branchSelected,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BranchStateData? data)? initial,
    TResult? Function(BranchStateData? data)? status,
    TResult? Function(BranchStateData? data)? getBranch,
    TResult? Function(BranchStateData? data)? getOneBranch,
    TResult? Function(BranchStateData? data)? branchSelected,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BranchStateData? data)? initial,
    TResult Function(BranchStateData? data)? status,
    TResult Function(BranchStateData? data)? getBranch,
    TResult Function(BranchStateData? data)? getOneBranch,
    TResult Function(BranchStateData? data)? branchSelected,
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
    required TResult Function(GetBranch value) getBranch,
    required TResult Function(GetOneBranch value) getOneBranch,
    required TResult Function(BranchSelected value) branchSelected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBranch value)? getBranch,
    TResult? Function(GetOneBranch value)? getOneBranch,
    TResult? Function(BranchSelected value)? branchSelected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBranch value)? getBranch,
    TResult Function(GetOneBranch value)? getOneBranch,
    TResult Function(BranchSelected value)? branchSelected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BranchState {
  const factory Initial({final BranchStateData? data}) = _$Initial;

  @override
  BranchStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $BranchStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BranchStateData? data});

  @override
  $BranchStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$BranchStateCopyWithImpl<$Res, _$Status>
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
              as BranchStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final BranchStateData? data;

  @override
  String toString() {
    return 'BranchState.status(data: $data)';
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
    required TResult Function(BranchStateData? data) initial,
    required TResult Function(BranchStateData? data) status,
    required TResult Function(BranchStateData? data) getBranch,
    required TResult Function(BranchStateData? data) getOneBranch,
    required TResult Function(BranchStateData? data) branchSelected,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BranchStateData? data)? initial,
    TResult? Function(BranchStateData? data)? status,
    TResult? Function(BranchStateData? data)? getBranch,
    TResult? Function(BranchStateData? data)? getOneBranch,
    TResult? Function(BranchStateData? data)? branchSelected,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BranchStateData? data)? initial,
    TResult Function(BranchStateData? data)? status,
    TResult Function(BranchStateData? data)? getBranch,
    TResult Function(BranchStateData? data)? getOneBranch,
    TResult Function(BranchStateData? data)? branchSelected,
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
    required TResult Function(GetBranch value) getBranch,
    required TResult Function(GetOneBranch value) getOneBranch,
    required TResult Function(BranchSelected value) branchSelected,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBranch value)? getBranch,
    TResult? Function(GetOneBranch value)? getOneBranch,
    TResult? Function(BranchSelected value)? branchSelected,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBranch value)? getBranch,
    TResult Function(GetOneBranch value)? getOneBranch,
    TResult Function(BranchSelected value)? branchSelected,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements BranchState {
  const factory Status({final BranchStateData? data}) = _$Status;

  @override
  BranchStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBranchCopyWith<$Res>
    implements $BranchStateCopyWith<$Res> {
  factory _$$GetBranchCopyWith(
          _$GetBranch value, $Res Function(_$GetBranch) then) =
      __$$GetBranchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BranchStateData? data});

  @override
  $BranchStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetBranchCopyWithImpl<$Res>
    extends _$BranchStateCopyWithImpl<$Res, _$GetBranch>
    implements _$$GetBranchCopyWith<$Res> {
  __$$GetBranchCopyWithImpl(
      _$GetBranch _value, $Res Function(_$GetBranch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetBranch(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BranchStateData?,
    ));
  }
}

/// @nodoc

class _$GetBranch implements GetBranch {
  const _$GetBranch({this.data});

  @override
  final BranchStateData? data;

  @override
  String toString() {
    return 'BranchState.getBranch(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBranch &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBranchCopyWith<_$GetBranch> get copyWith =>
      __$$GetBranchCopyWithImpl<_$GetBranch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BranchStateData? data) initial,
    required TResult Function(BranchStateData? data) status,
    required TResult Function(BranchStateData? data) getBranch,
    required TResult Function(BranchStateData? data) getOneBranch,
    required TResult Function(BranchStateData? data) branchSelected,
  }) {
    return getBranch(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BranchStateData? data)? initial,
    TResult? Function(BranchStateData? data)? status,
    TResult? Function(BranchStateData? data)? getBranch,
    TResult? Function(BranchStateData? data)? getOneBranch,
    TResult? Function(BranchStateData? data)? branchSelected,
  }) {
    return getBranch?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BranchStateData? data)? initial,
    TResult Function(BranchStateData? data)? status,
    TResult Function(BranchStateData? data)? getBranch,
    TResult Function(BranchStateData? data)? getOneBranch,
    TResult Function(BranchStateData? data)? branchSelected,
    required TResult orElse(),
  }) {
    if (getBranch != null) {
      return getBranch(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetBranch value) getBranch,
    required TResult Function(GetOneBranch value) getOneBranch,
    required TResult Function(BranchSelected value) branchSelected,
  }) {
    return getBranch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBranch value)? getBranch,
    TResult? Function(GetOneBranch value)? getOneBranch,
    TResult? Function(BranchSelected value)? branchSelected,
  }) {
    return getBranch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBranch value)? getBranch,
    TResult Function(GetOneBranch value)? getOneBranch,
    TResult Function(BranchSelected value)? branchSelected,
    required TResult orElse(),
  }) {
    if (getBranch != null) {
      return getBranch(this);
    }
    return orElse();
  }
}

abstract class GetBranch implements BranchState {
  const factory GetBranch({final BranchStateData? data}) = _$GetBranch;

  @override
  BranchStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetBranchCopyWith<_$GetBranch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOneBranchCopyWith<$Res>
    implements $BranchStateCopyWith<$Res> {
  factory _$$GetOneBranchCopyWith(
          _$GetOneBranch value, $Res Function(_$GetOneBranch) then) =
      __$$GetOneBranchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BranchStateData? data});

  @override
  $BranchStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetOneBranchCopyWithImpl<$Res>
    extends _$BranchStateCopyWithImpl<$Res, _$GetOneBranch>
    implements _$$GetOneBranchCopyWith<$Res> {
  __$$GetOneBranchCopyWithImpl(
      _$GetOneBranch _value, $Res Function(_$GetOneBranch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetOneBranch(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BranchStateData?,
    ));
  }
}

/// @nodoc

class _$GetOneBranch implements GetOneBranch {
  const _$GetOneBranch({this.data});

  @override
  final BranchStateData? data;

  @override
  String toString() {
    return 'BranchState.getOneBranch(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOneBranch &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOneBranchCopyWith<_$GetOneBranch> get copyWith =>
      __$$GetOneBranchCopyWithImpl<_$GetOneBranch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BranchStateData? data) initial,
    required TResult Function(BranchStateData? data) status,
    required TResult Function(BranchStateData? data) getBranch,
    required TResult Function(BranchStateData? data) getOneBranch,
    required TResult Function(BranchStateData? data) branchSelected,
  }) {
    return getOneBranch(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BranchStateData? data)? initial,
    TResult? Function(BranchStateData? data)? status,
    TResult? Function(BranchStateData? data)? getBranch,
    TResult? Function(BranchStateData? data)? getOneBranch,
    TResult? Function(BranchStateData? data)? branchSelected,
  }) {
    return getOneBranch?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BranchStateData? data)? initial,
    TResult Function(BranchStateData? data)? status,
    TResult Function(BranchStateData? data)? getBranch,
    TResult Function(BranchStateData? data)? getOneBranch,
    TResult Function(BranchStateData? data)? branchSelected,
    required TResult orElse(),
  }) {
    if (getOneBranch != null) {
      return getOneBranch(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetBranch value) getBranch,
    required TResult Function(GetOneBranch value) getOneBranch,
    required TResult Function(BranchSelected value) branchSelected,
  }) {
    return getOneBranch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBranch value)? getBranch,
    TResult? Function(GetOneBranch value)? getOneBranch,
    TResult? Function(BranchSelected value)? branchSelected,
  }) {
    return getOneBranch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBranch value)? getBranch,
    TResult Function(GetOneBranch value)? getOneBranch,
    TResult Function(BranchSelected value)? branchSelected,
    required TResult orElse(),
  }) {
    if (getOneBranch != null) {
      return getOneBranch(this);
    }
    return orElse();
  }
}

abstract class GetOneBranch implements BranchState {
  const factory GetOneBranch({final BranchStateData? data}) = _$GetOneBranch;

  @override
  BranchStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetOneBranchCopyWith<_$GetOneBranch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BranchSelectedCopyWith<$Res>
    implements $BranchStateCopyWith<$Res> {
  factory _$$BranchSelectedCopyWith(
          _$BranchSelected value, $Res Function(_$BranchSelected) then) =
      __$$BranchSelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BranchStateData? data});

  @override
  $BranchStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BranchSelectedCopyWithImpl<$Res>
    extends _$BranchStateCopyWithImpl<$Res, _$BranchSelected>
    implements _$$BranchSelectedCopyWith<$Res> {
  __$$BranchSelectedCopyWithImpl(
      _$BranchSelected _value, $Res Function(_$BranchSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BranchSelected(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BranchStateData?,
    ));
  }
}

/// @nodoc

class _$BranchSelected implements BranchSelected {
  const _$BranchSelected({this.data});

  @override
  final BranchStateData? data;

  @override
  String toString() {
    return 'BranchState.branchSelected(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchSelected &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchSelectedCopyWith<_$BranchSelected> get copyWith =>
      __$$BranchSelectedCopyWithImpl<_$BranchSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BranchStateData? data) initial,
    required TResult Function(BranchStateData? data) status,
    required TResult Function(BranchStateData? data) getBranch,
    required TResult Function(BranchStateData? data) getOneBranch,
    required TResult Function(BranchStateData? data) branchSelected,
  }) {
    return branchSelected(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BranchStateData? data)? initial,
    TResult? Function(BranchStateData? data)? status,
    TResult? Function(BranchStateData? data)? getBranch,
    TResult? Function(BranchStateData? data)? getOneBranch,
    TResult? Function(BranchStateData? data)? branchSelected,
  }) {
    return branchSelected?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BranchStateData? data)? initial,
    TResult Function(BranchStateData? data)? status,
    TResult Function(BranchStateData? data)? getBranch,
    TResult Function(BranchStateData? data)? getOneBranch,
    TResult Function(BranchStateData? data)? branchSelected,
    required TResult orElse(),
  }) {
    if (branchSelected != null) {
      return branchSelected(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetBranch value) getBranch,
    required TResult Function(GetOneBranch value) getOneBranch,
    required TResult Function(BranchSelected value) branchSelected,
  }) {
    return branchSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetBranch value)? getBranch,
    TResult? Function(GetOneBranch value)? getOneBranch,
    TResult? Function(BranchSelected value)? branchSelected,
  }) {
    return branchSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetBranch value)? getBranch,
    TResult Function(GetOneBranch value)? getOneBranch,
    TResult Function(BranchSelected value)? branchSelected,
    required TResult orElse(),
  }) {
    if (branchSelected != null) {
      return branchSelected(this);
    }
    return orElse();
  }
}

abstract class BranchSelected implements BranchState {
  const factory BranchSelected({final BranchStateData? data}) =
      _$BranchSelected;

  @override
  BranchStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$BranchSelectedCopyWith<_$BranchSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
