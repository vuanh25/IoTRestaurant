// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_printer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddPrinterStateData {
  StatusType get status => throw _privateConstructorUsedError;
  String? get selectedConnectionType => throw _privateConstructorUsedError;
  String? get selectedCapabilityNetwork => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddPrinterStateDataCopyWith<AddPrinterStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPrinterStateDataCopyWith<$Res> {
  factory $AddPrinterStateDataCopyWith(
          AddPrinterStateData value, $Res Function(AddPrinterStateData) then) =
      _$AddPrinterStateDataCopyWithImpl<$Res, AddPrinterStateData>;
  @useResult
  $Res call(
      {StatusType status,
      String? selectedConnectionType,
      String? selectedCapabilityNetwork,
      String? error});
}

/// @nodoc
class _$AddPrinterStateDataCopyWithImpl<$Res, $Val extends AddPrinterStateData>
    implements $AddPrinterStateDataCopyWith<$Res> {
  _$AddPrinterStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedConnectionType = freezed,
    Object? selectedCapabilityNetwork = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      selectedConnectionType: freezed == selectedConnectionType
          ? _value.selectedConnectionType
          : selectedConnectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCapabilityNetwork: freezed == selectedCapabilityNetwork
          ? _value.selectedCapabilityNetwork
          : selectedCapabilityNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddPrinterStateDataCopyWith<$Res>
    implements $AddPrinterStateDataCopyWith<$Res> {
  factory _$$_AddPrinterStateDataCopyWith(_$_AddPrinterStateData value,
          $Res Function(_$_AddPrinterStateData) then) =
      __$$_AddPrinterStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      String? selectedConnectionType,
      String? selectedCapabilityNetwork,
      String? error});
}

/// @nodoc
class __$$_AddPrinterStateDataCopyWithImpl<$Res>
    extends _$AddPrinterStateDataCopyWithImpl<$Res, _$_AddPrinterStateData>
    implements _$$_AddPrinterStateDataCopyWith<$Res> {
  __$$_AddPrinterStateDataCopyWithImpl(_$_AddPrinterStateData _value,
      $Res Function(_$_AddPrinterStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedConnectionType = freezed,
    Object? selectedCapabilityNetwork = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_AddPrinterStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      selectedConnectionType: freezed == selectedConnectionType
          ? _value.selectedConnectionType
          : selectedConnectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCapabilityNetwork: freezed == selectedCapabilityNetwork
          ? _value.selectedCapabilityNetwork
          : selectedCapabilityNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddPrinterStateData implements _AddPrinterStateData {
  const _$_AddPrinterStateData(
      {this.status = StatusType.init,
      this.selectedConnectionType,
      this.selectedCapabilityNetwork,
      this.error});

  @override
  @JsonKey()
  final StatusType status;
  @override
  final String? selectedConnectionType;
  @override
  final String? selectedCapabilityNetwork;
  @override
  final String? error;

  @override
  String toString() {
    return 'AddPrinterStateData(status: $status, selectedConnectionType: $selectedConnectionType, selectedCapabilityNetwork: $selectedCapabilityNetwork, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddPrinterStateData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedConnectionType, selectedConnectionType) ||
                other.selectedConnectionType == selectedConnectionType) &&
            (identical(other.selectedCapabilityNetwork,
                    selectedCapabilityNetwork) ||
                other.selectedCapabilityNetwork == selectedCapabilityNetwork) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, selectedConnectionType,
      selectedCapabilityNetwork, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddPrinterStateDataCopyWith<_$_AddPrinterStateData> get copyWith =>
      __$$_AddPrinterStateDataCopyWithImpl<_$_AddPrinterStateData>(
          this, _$identity);
}

abstract class _AddPrinterStateData implements AddPrinterStateData {
  const factory _AddPrinterStateData(
      {final StatusType status,
      final String? selectedConnectionType,
      final String? selectedCapabilityNetwork,
      final String? error}) = _$_AddPrinterStateData;

  @override
  StatusType get status;
  @override
  String? get selectedConnectionType;
  @override
  String? get selectedCapabilityNetwork;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AddPrinterStateDataCopyWith<_$_AddPrinterStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddPrinterState {
  AddPrinterStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPrinterStateData? data) initial,
    required TResult Function(AddPrinterStateData? data) status,
    required TResult Function(AddPrinterStateData? data) error,
    required TResult Function(AddPrinterStateData? data)
        setSelectedConnectionType,
    required TResult Function(AddPrinterStateData? data)
        setSelectedCapabilityProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPrinterStateData? data)? initial,
    TResult? Function(AddPrinterStateData? data)? status,
    TResult? Function(AddPrinterStateData? data)? error,
    TResult? Function(AddPrinterStateData? data)? setSelectedConnectionType,
    TResult? Function(AddPrinterStateData? data)? setSelectedCapabilityProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPrinterStateData? data)? initial,
    TResult Function(AddPrinterStateData? data)? status,
    TResult Function(AddPrinterStateData? data)? error,
    TResult Function(AddPrinterStateData? data)? setSelectedConnectionType,
    TResult Function(AddPrinterStateData? data)? setSelectedCapabilityProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(Error value) error,
    required TResult Function(SetSelectedConnectionType value)
        setSelectedConnectionType,
    required TResult Function(SetSelectedCapabilityNetwork value)
        setSelectedCapabilityProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(Error value)? error,
    TResult? Function(SetSelectedConnectionType value)?
        setSelectedConnectionType,
    TResult? Function(SetSelectedCapabilityNetwork value)?
        setSelectedCapabilityProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(Error value)? error,
    TResult Function(SetSelectedConnectionType value)?
        setSelectedConnectionType,
    TResult Function(SetSelectedCapabilityNetwork value)?
        setSelectedCapabilityProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddPrinterStateCopyWith<AddPrinterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPrinterStateCopyWith<$Res> {
  factory $AddPrinterStateCopyWith(
          AddPrinterState value, $Res Function(AddPrinterState) then) =
      _$AddPrinterStateCopyWithImpl<$Res, AddPrinterState>;
  @useResult
  $Res call({AddPrinterStateData? data});

  $AddPrinterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddPrinterStateCopyWithImpl<$Res, $Val extends AddPrinterState>
    implements $AddPrinterStateCopyWith<$Res> {
  _$AddPrinterStateCopyWithImpl(this._value, this._then);

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
              as AddPrinterStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddPrinterStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddPrinterStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $AddPrinterStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddPrinterStateData? data});

  @override
  $AddPrinterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddPrinterStateCopyWithImpl<$Res, _$Initial>
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
              as AddPrinterStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final AddPrinterStateData? data;

  @override
  String toString() {
    return 'AddPrinterState.initial(data: $data)';
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
    required TResult Function(AddPrinterStateData? data) initial,
    required TResult Function(AddPrinterStateData? data) status,
    required TResult Function(AddPrinterStateData? data) error,
    required TResult Function(AddPrinterStateData? data)
        setSelectedConnectionType,
    required TResult Function(AddPrinterStateData? data)
        setSelectedCapabilityProfile,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPrinterStateData? data)? initial,
    TResult? Function(AddPrinterStateData? data)? status,
    TResult? Function(AddPrinterStateData? data)? error,
    TResult? Function(AddPrinterStateData? data)? setSelectedConnectionType,
    TResult? Function(AddPrinterStateData? data)? setSelectedCapabilityProfile,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPrinterStateData? data)? initial,
    TResult Function(AddPrinterStateData? data)? status,
    TResult Function(AddPrinterStateData? data)? error,
    TResult Function(AddPrinterStateData? data)? setSelectedConnectionType,
    TResult Function(AddPrinterStateData? data)? setSelectedCapabilityProfile,
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
    required TResult Function(Error value) error,
    required TResult Function(SetSelectedConnectionType value)
        setSelectedConnectionType,
    required TResult Function(SetSelectedCapabilityNetwork value)
        setSelectedCapabilityProfile,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(Error value)? error,
    TResult? Function(SetSelectedConnectionType value)?
        setSelectedConnectionType,
    TResult? Function(SetSelectedCapabilityNetwork value)?
        setSelectedCapabilityProfile,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(Error value)? error,
    TResult Function(SetSelectedConnectionType value)?
        setSelectedConnectionType,
    TResult Function(SetSelectedCapabilityNetwork value)?
        setSelectedCapabilityProfile,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddPrinterState {
  const factory Initial({final AddPrinterStateData? data}) = _$Initial;

  @override
  AddPrinterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $AddPrinterStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddPrinterStateData? data});

  @override
  $AddPrinterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$AddPrinterStateCopyWithImpl<$Res, _$Status>
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
              as AddPrinterStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final AddPrinterStateData? data;

  @override
  String toString() {
    return 'AddPrinterState.status(data: $data)';
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
    required TResult Function(AddPrinterStateData? data) initial,
    required TResult Function(AddPrinterStateData? data) status,
    required TResult Function(AddPrinterStateData? data) error,
    required TResult Function(AddPrinterStateData? data)
        setSelectedConnectionType,
    required TResult Function(AddPrinterStateData? data)
        setSelectedCapabilityProfile,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPrinterStateData? data)? initial,
    TResult? Function(AddPrinterStateData? data)? status,
    TResult? Function(AddPrinterStateData? data)? error,
    TResult? Function(AddPrinterStateData? data)? setSelectedConnectionType,
    TResult? Function(AddPrinterStateData? data)? setSelectedCapabilityProfile,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPrinterStateData? data)? initial,
    TResult Function(AddPrinterStateData? data)? status,
    TResult Function(AddPrinterStateData? data)? error,
    TResult Function(AddPrinterStateData? data)? setSelectedConnectionType,
    TResult Function(AddPrinterStateData? data)? setSelectedCapabilityProfile,
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
    required TResult Function(Error value) error,
    required TResult Function(SetSelectedConnectionType value)
        setSelectedConnectionType,
    required TResult Function(SetSelectedCapabilityNetwork value)
        setSelectedCapabilityProfile,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(Error value)? error,
    TResult? Function(SetSelectedConnectionType value)?
        setSelectedConnectionType,
    TResult? Function(SetSelectedCapabilityNetwork value)?
        setSelectedCapabilityProfile,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(Error value)? error,
    TResult Function(SetSelectedConnectionType value)?
        setSelectedConnectionType,
    TResult Function(SetSelectedCapabilityNetwork value)?
        setSelectedCapabilityProfile,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements AddPrinterState {
  const factory Status({final AddPrinterStateData? data}) = _$Status;

  @override
  AddPrinterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res>
    implements $AddPrinterStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddPrinterStateData? data});

  @override
  $AddPrinterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$AddPrinterStateCopyWithImpl<$Res, _$Error>
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
              as AddPrinterStateData?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.data});

  @override
  final AddPrinterStateData? data;

  @override
  String toString() {
    return 'AddPrinterState.error(data: $data)';
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
    required TResult Function(AddPrinterStateData? data) initial,
    required TResult Function(AddPrinterStateData? data) status,
    required TResult Function(AddPrinterStateData? data) error,
    required TResult Function(AddPrinterStateData? data)
        setSelectedConnectionType,
    required TResult Function(AddPrinterStateData? data)
        setSelectedCapabilityProfile,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPrinterStateData? data)? initial,
    TResult? Function(AddPrinterStateData? data)? status,
    TResult? Function(AddPrinterStateData? data)? error,
    TResult? Function(AddPrinterStateData? data)? setSelectedConnectionType,
    TResult? Function(AddPrinterStateData? data)? setSelectedCapabilityProfile,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPrinterStateData? data)? initial,
    TResult Function(AddPrinterStateData? data)? status,
    TResult Function(AddPrinterStateData? data)? error,
    TResult Function(AddPrinterStateData? data)? setSelectedConnectionType,
    TResult Function(AddPrinterStateData? data)? setSelectedCapabilityProfile,
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
    required TResult Function(Status value) status,
    required TResult Function(Error value) error,
    required TResult Function(SetSelectedConnectionType value)
        setSelectedConnectionType,
    required TResult Function(SetSelectedCapabilityNetwork value)
        setSelectedCapabilityProfile,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(Error value)? error,
    TResult? Function(SetSelectedConnectionType value)?
        setSelectedConnectionType,
    TResult? Function(SetSelectedCapabilityNetwork value)?
        setSelectedCapabilityProfile,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(Error value)? error,
    TResult Function(SetSelectedConnectionType value)?
        setSelectedConnectionType,
    TResult Function(SetSelectedCapabilityNetwork value)?
        setSelectedCapabilityProfile,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AddPrinterState {
  const factory Error({final AddPrinterStateData? data}) = _$Error;

  @override
  AddPrinterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSelectedConnectionTypeCopyWith<$Res>
    implements $AddPrinterStateCopyWith<$Res> {
  factory _$$SetSelectedConnectionTypeCopyWith(
          _$SetSelectedConnectionType value,
          $Res Function(_$SetSelectedConnectionType) then) =
      __$$SetSelectedConnectionTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddPrinterStateData? data});

  @override
  $AddPrinterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetSelectedConnectionTypeCopyWithImpl<$Res>
    extends _$AddPrinterStateCopyWithImpl<$Res, _$SetSelectedConnectionType>
    implements _$$SetSelectedConnectionTypeCopyWith<$Res> {
  __$$SetSelectedConnectionTypeCopyWithImpl(_$SetSelectedConnectionType _value,
      $Res Function(_$SetSelectedConnectionType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetSelectedConnectionType(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddPrinterStateData?,
    ));
  }
}

/// @nodoc

class _$SetSelectedConnectionType implements SetSelectedConnectionType {
  const _$SetSelectedConnectionType({this.data});

  @override
  final AddPrinterStateData? data;

  @override
  String toString() {
    return 'AddPrinterState.setSelectedConnectionType(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedConnectionType &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedConnectionTypeCopyWith<_$SetSelectedConnectionType>
      get copyWith => __$$SetSelectedConnectionTypeCopyWithImpl<
          _$SetSelectedConnectionType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPrinterStateData? data) initial,
    required TResult Function(AddPrinterStateData? data) status,
    required TResult Function(AddPrinterStateData? data) error,
    required TResult Function(AddPrinterStateData? data)
        setSelectedConnectionType,
    required TResult Function(AddPrinterStateData? data)
        setSelectedCapabilityProfile,
  }) {
    return setSelectedConnectionType(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPrinterStateData? data)? initial,
    TResult? Function(AddPrinterStateData? data)? status,
    TResult? Function(AddPrinterStateData? data)? error,
    TResult? Function(AddPrinterStateData? data)? setSelectedConnectionType,
    TResult? Function(AddPrinterStateData? data)? setSelectedCapabilityProfile,
  }) {
    return setSelectedConnectionType?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPrinterStateData? data)? initial,
    TResult Function(AddPrinterStateData? data)? status,
    TResult Function(AddPrinterStateData? data)? error,
    TResult Function(AddPrinterStateData? data)? setSelectedConnectionType,
    TResult Function(AddPrinterStateData? data)? setSelectedCapabilityProfile,
    required TResult orElse(),
  }) {
    if (setSelectedConnectionType != null) {
      return setSelectedConnectionType(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(Error value) error,
    required TResult Function(SetSelectedConnectionType value)
        setSelectedConnectionType,
    required TResult Function(SetSelectedCapabilityNetwork value)
        setSelectedCapabilityProfile,
  }) {
    return setSelectedConnectionType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(Error value)? error,
    TResult? Function(SetSelectedConnectionType value)?
        setSelectedConnectionType,
    TResult? Function(SetSelectedCapabilityNetwork value)?
        setSelectedCapabilityProfile,
  }) {
    return setSelectedConnectionType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(Error value)? error,
    TResult Function(SetSelectedConnectionType value)?
        setSelectedConnectionType,
    TResult Function(SetSelectedCapabilityNetwork value)?
        setSelectedCapabilityProfile,
    required TResult orElse(),
  }) {
    if (setSelectedConnectionType != null) {
      return setSelectedConnectionType(this);
    }
    return orElse();
  }
}

abstract class SetSelectedConnectionType implements AddPrinterState {
  const factory SetSelectedConnectionType({final AddPrinterStateData? data}) =
      _$SetSelectedConnectionType;

  @override
  AddPrinterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetSelectedConnectionTypeCopyWith<_$SetSelectedConnectionType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSelectedCapabilityNetworkCopyWith<$Res>
    implements $AddPrinterStateCopyWith<$Res> {
  factory _$$SetSelectedCapabilityNetworkCopyWith(
          _$SetSelectedCapabilityNetwork value,
          $Res Function(_$SetSelectedCapabilityNetwork) then) =
      __$$SetSelectedCapabilityNetworkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddPrinterStateData? data});

  @override
  $AddPrinterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetSelectedCapabilityNetworkCopyWithImpl<$Res>
    extends _$AddPrinterStateCopyWithImpl<$Res, _$SetSelectedCapabilityNetwork>
    implements _$$SetSelectedCapabilityNetworkCopyWith<$Res> {
  __$$SetSelectedCapabilityNetworkCopyWithImpl(
      _$SetSelectedCapabilityNetwork _value,
      $Res Function(_$SetSelectedCapabilityNetwork) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetSelectedCapabilityNetwork(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddPrinterStateData?,
    ));
  }
}

/// @nodoc

class _$SetSelectedCapabilityNetwork implements SetSelectedCapabilityNetwork {
  const _$SetSelectedCapabilityNetwork({this.data});

  @override
  final AddPrinterStateData? data;

  @override
  String toString() {
    return 'AddPrinterState.setSelectedCapabilityProfile(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedCapabilityNetwork &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedCapabilityNetworkCopyWith<_$SetSelectedCapabilityNetwork>
      get copyWith => __$$SetSelectedCapabilityNetworkCopyWithImpl<
          _$SetSelectedCapabilityNetwork>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPrinterStateData? data) initial,
    required TResult Function(AddPrinterStateData? data) status,
    required TResult Function(AddPrinterStateData? data) error,
    required TResult Function(AddPrinterStateData? data)
        setSelectedConnectionType,
    required TResult Function(AddPrinterStateData? data)
        setSelectedCapabilityProfile,
  }) {
    return setSelectedCapabilityProfile(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPrinterStateData? data)? initial,
    TResult? Function(AddPrinterStateData? data)? status,
    TResult? Function(AddPrinterStateData? data)? error,
    TResult? Function(AddPrinterStateData? data)? setSelectedConnectionType,
    TResult? Function(AddPrinterStateData? data)? setSelectedCapabilityProfile,
  }) {
    return setSelectedCapabilityProfile?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPrinterStateData? data)? initial,
    TResult Function(AddPrinterStateData? data)? status,
    TResult Function(AddPrinterStateData? data)? error,
    TResult Function(AddPrinterStateData? data)? setSelectedConnectionType,
    TResult Function(AddPrinterStateData? data)? setSelectedCapabilityProfile,
    required TResult orElse(),
  }) {
    if (setSelectedCapabilityProfile != null) {
      return setSelectedCapabilityProfile(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(Error value) error,
    required TResult Function(SetSelectedConnectionType value)
        setSelectedConnectionType,
    required TResult Function(SetSelectedCapabilityNetwork value)
        setSelectedCapabilityProfile,
  }) {
    return setSelectedCapabilityProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(Error value)? error,
    TResult? Function(SetSelectedConnectionType value)?
        setSelectedConnectionType,
    TResult? Function(SetSelectedCapabilityNetwork value)?
        setSelectedCapabilityProfile,
  }) {
    return setSelectedCapabilityProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(Error value)? error,
    TResult Function(SetSelectedConnectionType value)?
        setSelectedConnectionType,
    TResult Function(SetSelectedCapabilityNetwork value)?
        setSelectedCapabilityProfile,
    required TResult orElse(),
  }) {
    if (setSelectedCapabilityProfile != null) {
      return setSelectedCapabilityProfile(this);
    }
    return orElse();
  }
}

abstract class SetSelectedCapabilityNetwork implements AddPrinterState {
  const factory SetSelectedCapabilityNetwork(
      {final AddPrinterStateData? data}) = _$SetSelectedCapabilityNetwork;

  @override
  AddPrinterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetSelectedCapabilityNetworkCopyWith<_$SetSelectedCapabilityNetwork>
      get copyWith => throw _privateConstructorUsedError;
}
