// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_variantion_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddVariantionStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  List<ValueVariant> get valuesEdit => throw _privateConstructorUsedError;
  List<TextEditingController> get valuesAdd =>
      throw _privateConstructorUsedError;
  bool get isAddNewValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddVariantionStateDataCopyWith<AddVariantionStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddVariantionStateDataCopyWith<$Res> {
  factory $AddVariantionStateDataCopyWith(AddVariantionStateData value,
          $Res Function(AddVariantionStateData) then) =
      _$AddVariantionStateDataCopyWithImpl<$Res, AddVariantionStateData>;
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<ValueVariant> valuesEdit,
      List<TextEditingController> valuesAdd,
      bool isAddNewValue});
}

/// @nodoc
class _$AddVariantionStateDataCopyWithImpl<$Res,
        $Val extends AddVariantionStateData>
    implements $AddVariantionStateDataCopyWith<$Res> {
  _$AddVariantionStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? valuesEdit = null,
    Object? valuesAdd = null,
    Object? isAddNewValue = null,
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
      valuesEdit: null == valuesEdit
          ? _value.valuesEdit
          : valuesEdit // ignore: cast_nullable_to_non_nullable
              as List<ValueVariant>,
      valuesAdd: null == valuesAdd
          ? _value.valuesAdd
          : valuesAdd // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
      isAddNewValue: null == isAddNewValue
          ? _value.isAddNewValue
          : isAddNewValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddVariantionStateDataCopyWith<$Res>
    implements $AddVariantionStateDataCopyWith<$Res> {
  factory _$$_AddVariantionStateDataCopyWith(_$_AddVariantionStateData value,
          $Res Function(_$_AddVariantionStateData) then) =
      __$$_AddVariantionStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<ValueVariant> valuesEdit,
      List<TextEditingController> valuesAdd,
      bool isAddNewValue});
}

/// @nodoc
class __$$_AddVariantionStateDataCopyWithImpl<$Res>
    extends _$AddVariantionStateDataCopyWithImpl<$Res,
        _$_AddVariantionStateData>
    implements _$$_AddVariantionStateDataCopyWith<$Res> {
  __$$_AddVariantionStateDataCopyWithImpl(_$_AddVariantionStateData _value,
      $Res Function(_$_AddVariantionStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? valuesEdit = null,
    Object? valuesAdd = null,
    Object? isAddNewValue = null,
  }) {
    return _then(_$_AddVariantionStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      valuesEdit: null == valuesEdit
          ? _value._valuesEdit
          : valuesEdit // ignore: cast_nullable_to_non_nullable
              as List<ValueVariant>,
      valuesAdd: null == valuesAdd
          ? _value._valuesAdd
          : valuesAdd // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
      isAddNewValue: null == isAddNewValue
          ? _value.isAddNewValue
          : isAddNewValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddVariantionStateData implements _AddVariantionStateData {
  _$_AddVariantionStateData(
      {this.error = '',
      this.status = StatusType.init,
      final List<ValueVariant> valuesEdit = const [],
      final List<TextEditingController> valuesAdd = const [],
      this.isAddNewValue = false})
      : _valuesEdit = valuesEdit,
        _valuesAdd = valuesAdd;

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  final List<ValueVariant> _valuesEdit;
  @override
  @JsonKey()
  List<ValueVariant> get valuesEdit {
    if (_valuesEdit is EqualUnmodifiableListView) return _valuesEdit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_valuesEdit);
  }

  final List<TextEditingController> _valuesAdd;
  @override
  @JsonKey()
  List<TextEditingController> get valuesAdd {
    if (_valuesAdd is EqualUnmodifiableListView) return _valuesAdd;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_valuesAdd);
  }

  @override
  @JsonKey()
  final bool isAddNewValue;

  @override
  String toString() {
    return 'AddVariantionStateData(error: $error, status: $status, valuesEdit: $valuesEdit, valuesAdd: $valuesAdd, isAddNewValue: $isAddNewValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddVariantionStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._valuesEdit, _valuesEdit) &&
            const DeepCollectionEquality()
                .equals(other._valuesAdd, _valuesAdd) &&
            (identical(other.isAddNewValue, isAddNewValue) ||
                other.isAddNewValue == isAddNewValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      status,
      const DeepCollectionEquality().hash(_valuesEdit),
      const DeepCollectionEquality().hash(_valuesAdd),
      isAddNewValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddVariantionStateDataCopyWith<_$_AddVariantionStateData> get copyWith =>
      __$$_AddVariantionStateDataCopyWithImpl<_$_AddVariantionStateData>(
          this, _$identity);
}

abstract class _AddVariantionStateData implements AddVariantionStateData {
  factory _AddVariantionStateData(
      {final String error,
      final StatusType status,
      final List<ValueVariant> valuesEdit,
      final List<TextEditingController> valuesAdd,
      final bool isAddNewValue}) = _$_AddVariantionStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  List<ValueVariant> get valuesEdit;
  @override
  List<TextEditingController> get valuesAdd;
  @override
  bool get isAddNewValue;
  @override
  @JsonKey(ignore: true)
  _$$_AddVariantionStateDataCopyWith<_$_AddVariantionStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddVariantionState {
  AddVariantionStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddVariantionStateData? data) initial,
    required TResult Function(AddVariantionStateData? data) error,
    required TResult Function(AddVariantionStateData? data) status,
    required TResult Function(AddVariantionStateData? data) getValuesEdit,
    required TResult Function(AddVariantionStateData? data) getValuesAdd,
    required TResult Function(AddVariantionStateData? data) isAddNewValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddVariantionStateData? data)? initial,
    TResult? Function(AddVariantionStateData? data)? error,
    TResult? Function(AddVariantionStateData? data)? status,
    TResult? Function(AddVariantionStateData? data)? getValuesEdit,
    TResult? Function(AddVariantionStateData? data)? getValuesAdd,
    TResult? Function(AddVariantionStateData? data)? isAddNewValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddVariantionStateData? data)? initial,
    TResult Function(AddVariantionStateData? data)? error,
    TResult Function(AddVariantionStateData? data)? status,
    TResult Function(AddVariantionStateData? data)? getValuesEdit,
    TResult Function(AddVariantionStateData? data)? getValuesAdd,
    TResult Function(AddVariantionStateData? data)? isAddNewValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(GetValuesEdit value) getValuesEdit,
    required TResult Function(GetValuesAdd value) getValuesAdd,
    required TResult Function(IsAddNewValue value) isAddNewValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetValuesEdit value)? getValuesEdit,
    TResult? Function(GetValuesAdd value)? getValuesAdd,
    TResult? Function(IsAddNewValue value)? isAddNewValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetValuesEdit value)? getValuesEdit,
    TResult Function(GetValuesAdd value)? getValuesAdd,
    TResult Function(IsAddNewValue value)? isAddNewValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddVariantionStateCopyWith<AddVariantionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddVariantionStateCopyWith<$Res> {
  factory $AddVariantionStateCopyWith(
          AddVariantionState value, $Res Function(AddVariantionState) then) =
      _$AddVariantionStateCopyWithImpl<$Res, AddVariantionState>;
  @useResult
  $Res call({AddVariantionStateData? data});

  $AddVariantionStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddVariantionStateCopyWithImpl<$Res, $Val extends AddVariantionState>
    implements $AddVariantionStateCopyWith<$Res> {
  _$AddVariantionStateCopyWithImpl(this._value, this._then);

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
              as AddVariantionStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddVariantionStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddVariantionStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $AddVariantionStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddVariantionStateData? data});

  @override
  $AddVariantionStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddVariantionStateCopyWithImpl<$Res, _$Initial>
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
              as AddVariantionStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final AddVariantionStateData? data;

  @override
  String toString() {
    return 'AddVariantionState.initial(data: $data)';
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
    required TResult Function(AddVariantionStateData? data) initial,
    required TResult Function(AddVariantionStateData? data) error,
    required TResult Function(AddVariantionStateData? data) status,
    required TResult Function(AddVariantionStateData? data) getValuesEdit,
    required TResult Function(AddVariantionStateData? data) getValuesAdd,
    required TResult Function(AddVariantionStateData? data) isAddNewValue,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddVariantionStateData? data)? initial,
    TResult? Function(AddVariantionStateData? data)? error,
    TResult? Function(AddVariantionStateData? data)? status,
    TResult? Function(AddVariantionStateData? data)? getValuesEdit,
    TResult? Function(AddVariantionStateData? data)? getValuesAdd,
    TResult? Function(AddVariantionStateData? data)? isAddNewValue,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddVariantionStateData? data)? initial,
    TResult Function(AddVariantionStateData? data)? error,
    TResult Function(AddVariantionStateData? data)? status,
    TResult Function(AddVariantionStateData? data)? getValuesEdit,
    TResult Function(AddVariantionStateData? data)? getValuesAdd,
    TResult Function(AddVariantionStateData? data)? isAddNewValue,
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
    required TResult Function(GetValuesEdit value) getValuesEdit,
    required TResult Function(GetValuesAdd value) getValuesAdd,
    required TResult Function(IsAddNewValue value) isAddNewValue,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetValuesEdit value)? getValuesEdit,
    TResult? Function(GetValuesAdd value)? getValuesAdd,
    TResult? Function(IsAddNewValue value)? isAddNewValue,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetValuesEdit value)? getValuesEdit,
    TResult Function(GetValuesAdd value)? getValuesAdd,
    TResult Function(IsAddNewValue value)? isAddNewValue,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddVariantionState {
  const factory Initial({final AddVariantionStateData? data}) = _$Initial;

  @override
  AddVariantionStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res>
    implements $AddVariantionStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddVariantionStateData? data});

  @override
  $AddVariantionStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$AddVariantionStateCopyWithImpl<$Res, _$Error>
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
              as AddVariantionStateData?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.data});

  @override
  final AddVariantionStateData? data;

  @override
  String toString() {
    return 'AddVariantionState.error(data: $data)';
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
    required TResult Function(AddVariantionStateData? data) initial,
    required TResult Function(AddVariantionStateData? data) error,
    required TResult Function(AddVariantionStateData? data) status,
    required TResult Function(AddVariantionStateData? data) getValuesEdit,
    required TResult Function(AddVariantionStateData? data) getValuesAdd,
    required TResult Function(AddVariantionStateData? data) isAddNewValue,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddVariantionStateData? data)? initial,
    TResult? Function(AddVariantionStateData? data)? error,
    TResult? Function(AddVariantionStateData? data)? status,
    TResult? Function(AddVariantionStateData? data)? getValuesEdit,
    TResult? Function(AddVariantionStateData? data)? getValuesAdd,
    TResult? Function(AddVariantionStateData? data)? isAddNewValue,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddVariantionStateData? data)? initial,
    TResult Function(AddVariantionStateData? data)? error,
    TResult Function(AddVariantionStateData? data)? status,
    TResult Function(AddVariantionStateData? data)? getValuesEdit,
    TResult Function(AddVariantionStateData? data)? getValuesAdd,
    TResult Function(AddVariantionStateData? data)? isAddNewValue,
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
    required TResult Function(GetValuesEdit value) getValuesEdit,
    required TResult Function(GetValuesAdd value) getValuesAdd,
    required TResult Function(IsAddNewValue value) isAddNewValue,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetValuesEdit value)? getValuesEdit,
    TResult? Function(GetValuesAdd value)? getValuesAdd,
    TResult? Function(IsAddNewValue value)? isAddNewValue,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetValuesEdit value)? getValuesEdit,
    TResult Function(GetValuesAdd value)? getValuesAdd,
    TResult Function(IsAddNewValue value)? isAddNewValue,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AddVariantionState {
  const factory Error({final AddVariantionStateData? data}) = _$Error;

  @override
  AddVariantionStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $AddVariantionStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddVariantionStateData? data});

  @override
  $AddVariantionStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$AddVariantionStateCopyWithImpl<$Res, _$Status>
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
              as AddVariantionStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final AddVariantionStateData? data;

  @override
  String toString() {
    return 'AddVariantionState.status(data: $data)';
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
    required TResult Function(AddVariantionStateData? data) initial,
    required TResult Function(AddVariantionStateData? data) error,
    required TResult Function(AddVariantionStateData? data) status,
    required TResult Function(AddVariantionStateData? data) getValuesEdit,
    required TResult Function(AddVariantionStateData? data) getValuesAdd,
    required TResult Function(AddVariantionStateData? data) isAddNewValue,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddVariantionStateData? data)? initial,
    TResult? Function(AddVariantionStateData? data)? error,
    TResult? Function(AddVariantionStateData? data)? status,
    TResult? Function(AddVariantionStateData? data)? getValuesEdit,
    TResult? Function(AddVariantionStateData? data)? getValuesAdd,
    TResult? Function(AddVariantionStateData? data)? isAddNewValue,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddVariantionStateData? data)? initial,
    TResult Function(AddVariantionStateData? data)? error,
    TResult Function(AddVariantionStateData? data)? status,
    TResult Function(AddVariantionStateData? data)? getValuesEdit,
    TResult Function(AddVariantionStateData? data)? getValuesAdd,
    TResult Function(AddVariantionStateData? data)? isAddNewValue,
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
    required TResult Function(GetValuesEdit value) getValuesEdit,
    required TResult Function(GetValuesAdd value) getValuesAdd,
    required TResult Function(IsAddNewValue value) isAddNewValue,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetValuesEdit value)? getValuesEdit,
    TResult? Function(GetValuesAdd value)? getValuesAdd,
    TResult? Function(IsAddNewValue value)? isAddNewValue,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetValuesEdit value)? getValuesEdit,
    TResult Function(GetValuesAdd value)? getValuesAdd,
    TResult Function(IsAddNewValue value)? isAddNewValue,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements AddVariantionState {
  const factory Status({final AddVariantionStateData? data}) = _$Status;

  @override
  AddVariantionStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetValuesEditCopyWith<$Res>
    implements $AddVariantionStateCopyWith<$Res> {
  factory _$$GetValuesEditCopyWith(
          _$GetValuesEdit value, $Res Function(_$GetValuesEdit) then) =
      __$$GetValuesEditCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddVariantionStateData? data});

  @override
  $AddVariantionStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetValuesEditCopyWithImpl<$Res>
    extends _$AddVariantionStateCopyWithImpl<$Res, _$GetValuesEdit>
    implements _$$GetValuesEditCopyWith<$Res> {
  __$$GetValuesEditCopyWithImpl(
      _$GetValuesEdit _value, $Res Function(_$GetValuesEdit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetValuesEdit(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddVariantionStateData?,
    ));
  }
}

/// @nodoc

class _$GetValuesEdit implements GetValuesEdit {
  const _$GetValuesEdit({this.data});

  @override
  final AddVariantionStateData? data;

  @override
  String toString() {
    return 'AddVariantionState.getValuesEdit(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetValuesEdit &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetValuesEditCopyWith<_$GetValuesEdit> get copyWith =>
      __$$GetValuesEditCopyWithImpl<_$GetValuesEdit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddVariantionStateData? data) initial,
    required TResult Function(AddVariantionStateData? data) error,
    required TResult Function(AddVariantionStateData? data) status,
    required TResult Function(AddVariantionStateData? data) getValuesEdit,
    required TResult Function(AddVariantionStateData? data) getValuesAdd,
    required TResult Function(AddVariantionStateData? data) isAddNewValue,
  }) {
    return getValuesEdit(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddVariantionStateData? data)? initial,
    TResult? Function(AddVariantionStateData? data)? error,
    TResult? Function(AddVariantionStateData? data)? status,
    TResult? Function(AddVariantionStateData? data)? getValuesEdit,
    TResult? Function(AddVariantionStateData? data)? getValuesAdd,
    TResult? Function(AddVariantionStateData? data)? isAddNewValue,
  }) {
    return getValuesEdit?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddVariantionStateData? data)? initial,
    TResult Function(AddVariantionStateData? data)? error,
    TResult Function(AddVariantionStateData? data)? status,
    TResult Function(AddVariantionStateData? data)? getValuesEdit,
    TResult Function(AddVariantionStateData? data)? getValuesAdd,
    TResult Function(AddVariantionStateData? data)? isAddNewValue,
    required TResult orElse(),
  }) {
    if (getValuesEdit != null) {
      return getValuesEdit(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(GetValuesEdit value) getValuesEdit,
    required TResult Function(GetValuesAdd value) getValuesAdd,
    required TResult Function(IsAddNewValue value) isAddNewValue,
  }) {
    return getValuesEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetValuesEdit value)? getValuesEdit,
    TResult? Function(GetValuesAdd value)? getValuesAdd,
    TResult? Function(IsAddNewValue value)? isAddNewValue,
  }) {
    return getValuesEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetValuesEdit value)? getValuesEdit,
    TResult Function(GetValuesAdd value)? getValuesAdd,
    TResult Function(IsAddNewValue value)? isAddNewValue,
    required TResult orElse(),
  }) {
    if (getValuesEdit != null) {
      return getValuesEdit(this);
    }
    return orElse();
  }
}

abstract class GetValuesEdit implements AddVariantionState {
  const factory GetValuesEdit({final AddVariantionStateData? data}) =
      _$GetValuesEdit;

  @override
  AddVariantionStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetValuesEditCopyWith<_$GetValuesEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetValuesAddCopyWith<$Res>
    implements $AddVariantionStateCopyWith<$Res> {
  factory _$$GetValuesAddCopyWith(
          _$GetValuesAdd value, $Res Function(_$GetValuesAdd) then) =
      __$$GetValuesAddCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddVariantionStateData? data});

  @override
  $AddVariantionStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetValuesAddCopyWithImpl<$Res>
    extends _$AddVariantionStateCopyWithImpl<$Res, _$GetValuesAdd>
    implements _$$GetValuesAddCopyWith<$Res> {
  __$$GetValuesAddCopyWithImpl(
      _$GetValuesAdd _value, $Res Function(_$GetValuesAdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetValuesAdd(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddVariantionStateData?,
    ));
  }
}

/// @nodoc

class _$GetValuesAdd implements GetValuesAdd {
  const _$GetValuesAdd({this.data});

  @override
  final AddVariantionStateData? data;

  @override
  String toString() {
    return 'AddVariantionState.getValuesAdd(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetValuesAdd &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetValuesAddCopyWith<_$GetValuesAdd> get copyWith =>
      __$$GetValuesAddCopyWithImpl<_$GetValuesAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddVariantionStateData? data) initial,
    required TResult Function(AddVariantionStateData? data) error,
    required TResult Function(AddVariantionStateData? data) status,
    required TResult Function(AddVariantionStateData? data) getValuesEdit,
    required TResult Function(AddVariantionStateData? data) getValuesAdd,
    required TResult Function(AddVariantionStateData? data) isAddNewValue,
  }) {
    return getValuesAdd(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddVariantionStateData? data)? initial,
    TResult? Function(AddVariantionStateData? data)? error,
    TResult? Function(AddVariantionStateData? data)? status,
    TResult? Function(AddVariantionStateData? data)? getValuesEdit,
    TResult? Function(AddVariantionStateData? data)? getValuesAdd,
    TResult? Function(AddVariantionStateData? data)? isAddNewValue,
  }) {
    return getValuesAdd?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddVariantionStateData? data)? initial,
    TResult Function(AddVariantionStateData? data)? error,
    TResult Function(AddVariantionStateData? data)? status,
    TResult Function(AddVariantionStateData? data)? getValuesEdit,
    TResult Function(AddVariantionStateData? data)? getValuesAdd,
    TResult Function(AddVariantionStateData? data)? isAddNewValue,
    required TResult orElse(),
  }) {
    if (getValuesAdd != null) {
      return getValuesAdd(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(GetValuesEdit value) getValuesEdit,
    required TResult Function(GetValuesAdd value) getValuesAdd,
    required TResult Function(IsAddNewValue value) isAddNewValue,
  }) {
    return getValuesAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetValuesEdit value)? getValuesEdit,
    TResult? Function(GetValuesAdd value)? getValuesAdd,
    TResult? Function(IsAddNewValue value)? isAddNewValue,
  }) {
    return getValuesAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetValuesEdit value)? getValuesEdit,
    TResult Function(GetValuesAdd value)? getValuesAdd,
    TResult Function(IsAddNewValue value)? isAddNewValue,
    required TResult orElse(),
  }) {
    if (getValuesAdd != null) {
      return getValuesAdd(this);
    }
    return orElse();
  }
}

abstract class GetValuesAdd implements AddVariantionState {
  const factory GetValuesAdd({final AddVariantionStateData? data}) =
      _$GetValuesAdd;

  @override
  AddVariantionStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetValuesAddCopyWith<_$GetValuesAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsAddNewValueCopyWith<$Res>
    implements $AddVariantionStateCopyWith<$Res> {
  factory _$$IsAddNewValueCopyWith(
          _$IsAddNewValue value, $Res Function(_$IsAddNewValue) then) =
      __$$IsAddNewValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddVariantionStateData? data});

  @override
  $AddVariantionStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$IsAddNewValueCopyWithImpl<$Res>
    extends _$AddVariantionStateCopyWithImpl<$Res, _$IsAddNewValue>
    implements _$$IsAddNewValueCopyWith<$Res> {
  __$$IsAddNewValueCopyWithImpl(
      _$IsAddNewValue _value, $Res Function(_$IsAddNewValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$IsAddNewValue(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddVariantionStateData?,
    ));
  }
}

/// @nodoc

class _$IsAddNewValue implements IsAddNewValue {
  const _$IsAddNewValue({this.data});

  @override
  final AddVariantionStateData? data;

  @override
  String toString() {
    return 'AddVariantionState.isAddNewValue(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsAddNewValue &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsAddNewValueCopyWith<_$IsAddNewValue> get copyWith =>
      __$$IsAddNewValueCopyWithImpl<_$IsAddNewValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddVariantionStateData? data) initial,
    required TResult Function(AddVariantionStateData? data) error,
    required TResult Function(AddVariantionStateData? data) status,
    required TResult Function(AddVariantionStateData? data) getValuesEdit,
    required TResult Function(AddVariantionStateData? data) getValuesAdd,
    required TResult Function(AddVariantionStateData? data) isAddNewValue,
  }) {
    return isAddNewValue(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddVariantionStateData? data)? initial,
    TResult? Function(AddVariantionStateData? data)? error,
    TResult? Function(AddVariantionStateData? data)? status,
    TResult? Function(AddVariantionStateData? data)? getValuesEdit,
    TResult? Function(AddVariantionStateData? data)? getValuesAdd,
    TResult? Function(AddVariantionStateData? data)? isAddNewValue,
  }) {
    return isAddNewValue?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddVariantionStateData? data)? initial,
    TResult Function(AddVariantionStateData? data)? error,
    TResult Function(AddVariantionStateData? data)? status,
    TResult Function(AddVariantionStateData? data)? getValuesEdit,
    TResult Function(AddVariantionStateData? data)? getValuesAdd,
    TResult Function(AddVariantionStateData? data)? isAddNewValue,
    required TResult orElse(),
  }) {
    if (isAddNewValue != null) {
      return isAddNewValue(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Status value) status,
    required TResult Function(GetValuesEdit value) getValuesEdit,
    required TResult Function(GetValuesAdd value) getValuesAdd,
    required TResult Function(IsAddNewValue value) isAddNewValue,
  }) {
    return isAddNewValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Status value)? status,
    TResult? Function(GetValuesEdit value)? getValuesEdit,
    TResult? Function(GetValuesAdd value)? getValuesAdd,
    TResult? Function(IsAddNewValue value)? isAddNewValue,
  }) {
    return isAddNewValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Status value)? status,
    TResult Function(GetValuesEdit value)? getValuesEdit,
    TResult Function(GetValuesAdd value)? getValuesAdd,
    TResult Function(IsAddNewValue value)? isAddNewValue,
    required TResult orElse(),
  }) {
    if (isAddNewValue != null) {
      return isAddNewValue(this);
    }
    return orElse();
  }
}

abstract class IsAddNewValue implements AddVariantionState {
  const factory IsAddNewValue({final AddVariantionStateData? data}) =
      _$IsAddNewValue;

  @override
  AddVariantionStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$IsAddNewValueCopyWith<_$IsAddNewValue> get copyWith =>
      throw _privateConstructorUsedError;
}
