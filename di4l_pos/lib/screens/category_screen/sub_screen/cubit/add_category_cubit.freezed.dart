// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddCategoryStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  bool get addSubCategory => throw _privateConstructorUsedError;
  bool get nameCheck => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCategoryStateDataCopyWith<AddCategoryStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCategoryStateDataCopyWith<$Res> {
  factory $AddCategoryStateDataCopyWith(AddCategoryStateData value,
          $Res Function(AddCategoryStateData) then) =
      _$AddCategoryStateDataCopyWithImpl<$Res, AddCategoryStateData>;
  @useResult
  $Res call(
      {String error, StatusType status, bool addSubCategory, bool nameCheck});
}

/// @nodoc
class _$AddCategoryStateDataCopyWithImpl<$Res,
        $Val extends AddCategoryStateData>
    implements $AddCategoryStateDataCopyWith<$Res> {
  _$AddCategoryStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? addSubCategory = null,
    Object? nameCheck = null,
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
      addSubCategory: null == addSubCategory
          ? _value.addSubCategory
          : addSubCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      nameCheck: null == nameCheck
          ? _value.nameCheck
          : nameCheck // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCategoryStateDataCopyWith<$Res>
    implements $AddCategoryStateDataCopyWith<$Res> {
  factory _$$_AddCategoryStateDataCopyWith(_$_AddCategoryStateData value,
          $Res Function(_$_AddCategoryStateData) then) =
      __$$_AddCategoryStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error, StatusType status, bool addSubCategory, bool nameCheck});
}

/// @nodoc
class __$$_AddCategoryStateDataCopyWithImpl<$Res>
    extends _$AddCategoryStateDataCopyWithImpl<$Res, _$_AddCategoryStateData>
    implements _$$_AddCategoryStateDataCopyWith<$Res> {
  __$$_AddCategoryStateDataCopyWithImpl(_$_AddCategoryStateData _value,
      $Res Function(_$_AddCategoryStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? addSubCategory = null,
    Object? nameCheck = null,
  }) {
    return _then(_$_AddCategoryStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      addSubCategory: null == addSubCategory
          ? _value.addSubCategory
          : addSubCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      nameCheck: null == nameCheck
          ? _value.nameCheck
          : nameCheck // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddCategoryStateData implements _AddCategoryStateData {
  const _$_AddCategoryStateData(
      {this.error = '',
      this.status = StatusType.init,
      this.addSubCategory = false,
      this.nameCheck = false});

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final bool addSubCategory;
  @override
  @JsonKey()
  final bool nameCheck;

  @override
  String toString() {
    return 'AddCategoryStateData(error: $error, status: $status, addSubCategory: $addSubCategory, nameCheck: $nameCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCategoryStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.addSubCategory, addSubCategory) ||
                other.addSubCategory == addSubCategory) &&
            (identical(other.nameCheck, nameCheck) ||
                other.nameCheck == nameCheck));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, status, addSubCategory, nameCheck);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCategoryStateDataCopyWith<_$_AddCategoryStateData> get copyWith =>
      __$$_AddCategoryStateDataCopyWithImpl<_$_AddCategoryStateData>(
          this, _$identity);
}

abstract class _AddCategoryStateData implements AddCategoryStateData {
  const factory _AddCategoryStateData(
      {final String error,
      final StatusType status,
      final bool addSubCategory,
      final bool nameCheck}) = _$_AddCategoryStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  bool get addSubCategory;
  @override
  bool get nameCheck;
  @override
  @JsonKey(ignore: true)
  _$$_AddCategoryStateDataCopyWith<_$_AddCategoryStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddCategoryState {
  AddCategoryStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCategoryStateData? data) initial,
    required TResult Function(AddCategoryStateData? data) error,
    required TResult Function(AddCategoryStateData? data) status,
    required TResult Function(AddCategoryStateData? data) addSubCategory,
    required TResult Function(AddCategoryStateData? data) nameCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCategoryStateData? data)? initial,
    TResult? Function(AddCategoryStateData? data)? error,
    TResult? Function(AddCategoryStateData? data)? status,
    TResult? Function(AddCategoryStateData? data)? addSubCategory,
    TResult? Function(AddCategoryStateData? data)? nameCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCategoryStateData? data)? initial,
    TResult Function(AddCategoryStateData? data)? error,
    TResult Function(AddCategoryStateData? data)? status,
    TResult Function(AddCategoryStateData? data)? addSubCategory,
    TResult Function(AddCategoryStateData? data)? nameCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(AddSubCategory value) addSubCategory,
    required TResult Function(NameCheck value) nameCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(AddSubCategory value)? addSubCategory,
    TResult? Function(NameCheck value)? nameCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(AddSubCategory value)? addSubCategory,
    TResult Function(NameCheck value)? nameCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCategoryStateCopyWith<AddCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCategoryStateCopyWith<$Res> {
  factory $AddCategoryStateCopyWith(
          AddCategoryState value, $Res Function(AddCategoryState) then) =
      _$AddCategoryStateCopyWithImpl<$Res, AddCategoryState>;
  @useResult
  $Res call({AddCategoryStateData? data});

  $AddCategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddCategoryStateCopyWithImpl<$Res, $Val extends AddCategoryState>
    implements $AddCategoryStateCopyWith<$Res> {
  _$AddCategoryStateCopyWithImpl(this._value, this._then);

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
              as AddCategoryStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddCategoryStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddCategoryStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $AddCategoryStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCategoryStateData? data});

  @override
  $AddCategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddCategoryStateCopyWithImpl<$Res, _$Initial>
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
              as AddCategoryStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final AddCategoryStateData? data;

  @override
  String toString() {
    return 'AddCategoryState.initial(data: $data)';
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
    required TResult Function(AddCategoryStateData? data) initial,
    required TResult Function(AddCategoryStateData? data) error,
    required TResult Function(AddCategoryStateData? data) status,
    required TResult Function(AddCategoryStateData? data) addSubCategory,
    required TResult Function(AddCategoryStateData? data) nameCheck,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCategoryStateData? data)? initial,
    TResult? Function(AddCategoryStateData? data)? error,
    TResult? Function(AddCategoryStateData? data)? status,
    TResult? Function(AddCategoryStateData? data)? addSubCategory,
    TResult? Function(AddCategoryStateData? data)? nameCheck,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCategoryStateData? data)? initial,
    TResult Function(AddCategoryStateData? data)? error,
    TResult Function(AddCategoryStateData? data)? status,
    TResult Function(AddCategoryStateData? data)? addSubCategory,
    TResult Function(AddCategoryStateData? data)? nameCheck,
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
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(AddSubCategory value) addSubCategory,
    required TResult Function(NameCheck value) nameCheck,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(AddSubCategory value)? addSubCategory,
    TResult? Function(NameCheck value)? nameCheck,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(AddSubCategory value)? addSubCategory,
    TResult Function(NameCheck value)? nameCheck,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddCategoryState {
  const factory Initial({final AddCategoryStateData? data}) = _$Initial;

  @override
  AddCategoryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res>
    implements $AddCategoryStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCategoryStateData? data});

  @override
  $AddCategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$AddCategoryStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Error(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddCategoryStateData?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.data});

  @override
  final AddCategoryStateData? data;

  @override
  String toString() {
    return 'AddCategoryState.error(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCategoryStateData? data) initial,
    required TResult Function(AddCategoryStateData? data) error,
    required TResult Function(AddCategoryStateData? data) status,
    required TResult Function(AddCategoryStateData? data) addSubCategory,
    required TResult Function(AddCategoryStateData? data) nameCheck,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCategoryStateData? data)? initial,
    TResult? Function(AddCategoryStateData? data)? error,
    TResult? Function(AddCategoryStateData? data)? status,
    TResult? Function(AddCategoryStateData? data)? addSubCategory,
    TResult? Function(AddCategoryStateData? data)? nameCheck,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCategoryStateData? data)? initial,
    TResult Function(AddCategoryStateData? data)? error,
    TResult Function(AddCategoryStateData? data)? status,
    TResult Function(AddCategoryStateData? data)? addSubCategory,
    TResult Function(AddCategoryStateData? data)? nameCheck,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(AddSubCategory value) addSubCategory,
    required TResult Function(NameCheck value) nameCheck,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(AddSubCategory value)? addSubCategory,
    TResult? Function(NameCheck value)? nameCheck,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(AddSubCategory value)? addSubCategory,
    TResult Function(NameCheck value)? nameCheck,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AddCategoryState {
  const factory Error({final AddCategoryStateData? data}) = _$Error;

  @override
  AddCategoryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $AddCategoryStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCategoryStateData? data});

  @override
  $AddCategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$AddCategoryStateCopyWithImpl<$Res, _$Status>
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
              as AddCategoryStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final AddCategoryStateData? data;

  @override
  String toString() {
    return 'AddCategoryState.status(data: $data)';
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
    required TResult Function(AddCategoryStateData? data) initial,
    required TResult Function(AddCategoryStateData? data) error,
    required TResult Function(AddCategoryStateData? data) status,
    required TResult Function(AddCategoryStateData? data) addSubCategory,
    required TResult Function(AddCategoryStateData? data) nameCheck,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCategoryStateData? data)? initial,
    TResult? Function(AddCategoryStateData? data)? error,
    TResult? Function(AddCategoryStateData? data)? status,
    TResult? Function(AddCategoryStateData? data)? addSubCategory,
    TResult? Function(AddCategoryStateData? data)? nameCheck,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCategoryStateData? data)? initial,
    TResult Function(AddCategoryStateData? data)? error,
    TResult Function(AddCategoryStateData? data)? status,
    TResult Function(AddCategoryStateData? data)? addSubCategory,
    TResult Function(AddCategoryStateData? data)? nameCheck,
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
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(AddSubCategory value) addSubCategory,
    required TResult Function(NameCheck value) nameCheck,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(AddSubCategory value)? addSubCategory,
    TResult? Function(NameCheck value)? nameCheck,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(AddSubCategory value)? addSubCategory,
    TResult Function(NameCheck value)? nameCheck,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements AddCategoryState {
  const factory Status({final AddCategoryStateData? data}) = _$Status;

  @override
  AddCategoryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSubCategoryCopyWith<$Res>
    implements $AddCategoryStateCopyWith<$Res> {
  factory _$$AddSubCategoryCopyWith(
          _$AddSubCategory value, $Res Function(_$AddSubCategory) then) =
      __$$AddSubCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCategoryStateData? data});

  @override
  $AddCategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AddSubCategoryCopyWithImpl<$Res>
    extends _$AddCategoryStateCopyWithImpl<$Res, _$AddSubCategory>
    implements _$$AddSubCategoryCopyWith<$Res> {
  __$$AddSubCategoryCopyWithImpl(
      _$AddSubCategory _value, $Res Function(_$AddSubCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AddSubCategory(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddCategoryStateData?,
    ));
  }
}

/// @nodoc

class _$AddSubCategory implements AddSubCategory {
  const _$AddSubCategory({this.data});

  @override
  final AddCategoryStateData? data;

  @override
  String toString() {
    return 'AddCategoryState.addSubCategory(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSubCategory &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSubCategoryCopyWith<_$AddSubCategory> get copyWith =>
      __$$AddSubCategoryCopyWithImpl<_$AddSubCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCategoryStateData? data) initial,
    required TResult Function(AddCategoryStateData? data) error,
    required TResult Function(AddCategoryStateData? data) status,
    required TResult Function(AddCategoryStateData? data) addSubCategory,
    required TResult Function(AddCategoryStateData? data) nameCheck,
  }) {
    return addSubCategory(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCategoryStateData? data)? initial,
    TResult? Function(AddCategoryStateData? data)? error,
    TResult? Function(AddCategoryStateData? data)? status,
    TResult? Function(AddCategoryStateData? data)? addSubCategory,
    TResult? Function(AddCategoryStateData? data)? nameCheck,
  }) {
    return addSubCategory?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCategoryStateData? data)? initial,
    TResult Function(AddCategoryStateData? data)? error,
    TResult Function(AddCategoryStateData? data)? status,
    TResult Function(AddCategoryStateData? data)? addSubCategory,
    TResult Function(AddCategoryStateData? data)? nameCheck,
    required TResult orElse(),
  }) {
    if (addSubCategory != null) {
      return addSubCategory(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(AddSubCategory value) addSubCategory,
    required TResult Function(NameCheck value) nameCheck,
  }) {
    return addSubCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(AddSubCategory value)? addSubCategory,
    TResult? Function(NameCheck value)? nameCheck,
  }) {
    return addSubCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(AddSubCategory value)? addSubCategory,
    TResult Function(NameCheck value)? nameCheck,
    required TResult orElse(),
  }) {
    if (addSubCategory != null) {
      return addSubCategory(this);
    }
    return orElse();
  }
}

abstract class AddSubCategory implements AddCategoryState {
  const factory AddSubCategory({final AddCategoryStateData? data}) =
      _$AddSubCategory;

  @override
  AddCategoryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$AddSubCategoryCopyWith<_$AddSubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameCheckCopyWith<$Res>
    implements $AddCategoryStateCopyWith<$Res> {
  factory _$$NameCheckCopyWith(
          _$NameCheck value, $Res Function(_$NameCheck) then) =
      __$$NameCheckCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCategoryStateData? data});

  @override
  $AddCategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$NameCheckCopyWithImpl<$Res>
    extends _$AddCategoryStateCopyWithImpl<$Res, _$NameCheck>
    implements _$$NameCheckCopyWith<$Res> {
  __$$NameCheckCopyWithImpl(
      _$NameCheck _value, $Res Function(_$NameCheck) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$NameCheck(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddCategoryStateData?,
    ));
  }
}

/// @nodoc

class _$NameCheck implements NameCheck {
  const _$NameCheck({this.data});

  @override
  final AddCategoryStateData? data;

  @override
  String toString() {
    return 'AddCategoryState.nameCheck(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameCheck &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameCheckCopyWith<_$NameCheck> get copyWith =>
      __$$NameCheckCopyWithImpl<_$NameCheck>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCategoryStateData? data) initial,
    required TResult Function(AddCategoryStateData? data) error,
    required TResult Function(AddCategoryStateData? data) status,
    required TResult Function(AddCategoryStateData? data) addSubCategory,
    required TResult Function(AddCategoryStateData? data) nameCheck,
  }) {
    return nameCheck(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCategoryStateData? data)? initial,
    TResult? Function(AddCategoryStateData? data)? error,
    TResult? Function(AddCategoryStateData? data)? status,
    TResult? Function(AddCategoryStateData? data)? addSubCategory,
    TResult? Function(AddCategoryStateData? data)? nameCheck,
  }) {
    return nameCheck?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCategoryStateData? data)? initial,
    TResult Function(AddCategoryStateData? data)? error,
    TResult Function(AddCategoryStateData? data)? status,
    TResult Function(AddCategoryStateData? data)? addSubCategory,
    TResult Function(AddCategoryStateData? data)? nameCheck,
    required TResult orElse(),
  }) {
    if (nameCheck != null) {
      return nameCheck(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(AddSubCategory value) addSubCategory,
    required TResult Function(NameCheck value) nameCheck,
  }) {
    return nameCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(AddSubCategory value)? addSubCategory,
    TResult? Function(NameCheck value)? nameCheck,
  }) {
    return nameCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(AddSubCategory value)? addSubCategory,
    TResult Function(NameCheck value)? nameCheck,
    required TResult orElse(),
  }) {
    if (nameCheck != null) {
      return nameCheck(this);
    }
    return orElse();
  }
}

abstract class NameCheck implements AddCategoryState {
  const factory NameCheck({final AddCategoryStateData? data}) = _$NameCheck;

  @override
  AddCategoryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$NameCheckCopyWith<_$NameCheck> get copyWith =>
      throw _privateConstructorUsedError;
}
