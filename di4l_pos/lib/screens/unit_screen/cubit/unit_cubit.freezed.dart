// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UnitStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<Unit> get units => throw _privateConstructorUsedError;
  Unit? get unit => throw _privateConstructorUsedError;
  Unit? get unitSelect => throw _privateConstructorUsedError;
  List<Unit> get unitOriginal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnitStateDataCopyWith<UnitStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitStateDataCopyWith<$Res> {
  factory $UnitStateDataCopyWith(
          UnitStateData value, $Res Function(UnitStateData) then) =
      _$UnitStateDataCopyWithImpl<$Res, UnitStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<Unit> units,
      Unit? unit,
      Unit? unitSelect,
      List<Unit> unitOriginal});
}

/// @nodoc
class _$UnitStateDataCopyWithImpl<$Res, $Val extends UnitStateData>
    implements $UnitStateDataCopyWith<$Res> {
  _$UnitStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? units = null,
    Object? unit = freezed,
    Object? unitSelect = freezed,
    Object? unitOriginal = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as List<Unit>,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit?,
      unitSelect: freezed == unitSelect
          ? _value.unitSelect
          : unitSelect // ignore: cast_nullable_to_non_nullable
              as Unit?,
      unitOriginal: null == unitOriginal
          ? _value.unitOriginal
          : unitOriginal // ignore: cast_nullable_to_non_nullable
              as List<Unit>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnitStateDataCopyWith<$Res>
    implements $UnitStateDataCopyWith<$Res> {
  factory _$$_UnitStateDataCopyWith(
          _$_UnitStateData value, $Res Function(_$_UnitStateData) then) =
      __$$_UnitStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<Unit> units,
      Unit? unit,
      Unit? unitSelect,
      List<Unit> unitOriginal});
}

/// @nodoc
class __$$_UnitStateDataCopyWithImpl<$Res>
    extends _$UnitStateDataCopyWithImpl<$Res, _$_UnitStateData>
    implements _$$_UnitStateDataCopyWith<$Res> {
  __$$_UnitStateDataCopyWithImpl(
      _$_UnitStateData _value, $Res Function(_$_UnitStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? units = null,
    Object? unit = freezed,
    Object? unitSelect = freezed,
    Object? unitOriginal = null,
  }) {
    return _then(_$_UnitStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      units: null == units
          ? _value._units
          : units // ignore: cast_nullable_to_non_nullable
              as List<Unit>,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit?,
      unitSelect: freezed == unitSelect
          ? _value.unitSelect
          : unitSelect // ignore: cast_nullable_to_non_nullable
              as Unit?,
      unitOriginal: null == unitOriginal
          ? _value._unitOriginal
          : unitOriginal // ignore: cast_nullable_to_non_nullable
              as List<Unit>,
    ));
  }
}

/// @nodoc

class _$_UnitStateData with DiagnosticableTreeMixin implements _UnitStateData {
  const _$_UnitStateData(
      {this.status = StatusType.init,
      final List<Unit> units = const [],
      this.unit,
      this.unitSelect,
      final List<Unit> unitOriginal = const []})
      : _units = units,
        _unitOriginal = unitOriginal;

  @override
  @JsonKey()
  final StatusType status;
  final List<Unit> _units;
  @override
  @JsonKey()
  List<Unit> get units {
    if (_units is EqualUnmodifiableListView) return _units;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_units);
  }

  @override
  final Unit? unit;
  @override
  final Unit? unitSelect;
  final List<Unit> _unitOriginal;
  @override
  @JsonKey()
  List<Unit> get unitOriginal {
    if (_unitOriginal is EqualUnmodifiableListView) return _unitOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unitOriginal);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnitStateData(status: $status, units: $units, unit: $unit, unitSelect: $unitSelect, unitOriginal: $unitOriginal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UnitStateData'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('units', units))
      ..add(DiagnosticsProperty('unit', unit))
      ..add(DiagnosticsProperty('unitSelect', unitSelect))
      ..add(DiagnosticsProperty('unitOriginal', unitOriginal));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnitStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._units, _units) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitSelect, unitSelect) ||
                other.unitSelect == unitSelect) &&
            const DeepCollectionEquality()
                .equals(other._unitOriginal, _unitOriginal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_units),
      unit,
      unitSelect,
      const DeepCollectionEquality().hash(_unitOriginal));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnitStateDataCopyWith<_$_UnitStateData> get copyWith =>
      __$$_UnitStateDataCopyWithImpl<_$_UnitStateData>(this, _$identity);
}

abstract class _UnitStateData implements UnitStateData {
  const factory _UnitStateData(
      {final StatusType status,
      final List<Unit> units,
      final Unit? unit,
      final Unit? unitSelect,
      final List<Unit> unitOriginal}) = _$_UnitStateData;

  @override
  StatusType get status;
  @override
  List<Unit> get units;
  @override
  Unit? get unit;
  @override
  Unit? get unitSelect;
  @override
  List<Unit> get unitOriginal;
  @override
  @JsonKey(ignore: true)
  _$$_UnitStateDataCopyWith<_$_UnitStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UnitState {
  UnitStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UnitStateData? data) initial,
    required TResult Function(UnitStateData? data) status,
    required TResult Function(UnitStateData? data) getUnits,
    required TResult Function(UnitStateData? data) getUnit,
    required TResult Function(UnitStateData? data) setUnitSelect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UnitStateData? data)? initial,
    TResult? Function(UnitStateData? data)? status,
    TResult? Function(UnitStateData? data)? getUnits,
    TResult? Function(UnitStateData? data)? getUnit,
    TResult? Function(UnitStateData? data)? setUnitSelect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UnitStateData? data)? initial,
    TResult Function(UnitStateData? data)? status,
    TResult Function(UnitStateData? data)? getUnits,
    TResult Function(UnitStateData? data)? getUnit,
    TResult Function(UnitStateData? data)? setUnitSelect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetUnits value) getUnits,
    required TResult Function(GetUnit value) getUnit,
    required TResult Function(SetUnitSelect value) setUnitSelect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetUnits value)? getUnits,
    TResult? Function(GetUnit value)? getUnit,
    TResult? Function(SetUnitSelect value)? setUnitSelect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetUnits value)? getUnits,
    TResult Function(GetUnit value)? getUnit,
    TResult Function(SetUnitSelect value)? setUnitSelect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnitStateCopyWith<UnitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitStateCopyWith<$Res> {
  factory $UnitStateCopyWith(UnitState value, $Res Function(UnitState) then) =
      _$UnitStateCopyWithImpl<$Res, UnitState>;
  @useResult
  $Res call({UnitStateData? data});

  $UnitStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UnitStateCopyWithImpl<$Res, $Val extends UnitState>
    implements $UnitStateCopyWith<$Res> {
  _$UnitStateCopyWithImpl(this._value, this._then);

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
              as UnitStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UnitStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $UnitStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UnitStateData? data});

  @override
  $UnitStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$UnitStateCopyWithImpl<$Res, _$Initial>
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
              as UnitStateData?,
    ));
  }
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial({this.data});

  @override
  final UnitStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnitState.initial(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UnitState.initial'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(UnitStateData? data) initial,
    required TResult Function(UnitStateData? data) status,
    required TResult Function(UnitStateData? data) getUnits,
    required TResult Function(UnitStateData? data) getUnit,
    required TResult Function(UnitStateData? data) setUnitSelect,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UnitStateData? data)? initial,
    TResult? Function(UnitStateData? data)? status,
    TResult? Function(UnitStateData? data)? getUnits,
    TResult? Function(UnitStateData? data)? getUnit,
    TResult? Function(UnitStateData? data)? setUnitSelect,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UnitStateData? data)? initial,
    TResult Function(UnitStateData? data)? status,
    TResult Function(UnitStateData? data)? getUnits,
    TResult Function(UnitStateData? data)? getUnit,
    TResult Function(UnitStateData? data)? setUnitSelect,
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
    required TResult Function(GetUnits value) getUnits,
    required TResult Function(GetUnit value) getUnit,
    required TResult Function(SetUnitSelect value) setUnitSelect,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetUnits value)? getUnits,
    TResult? Function(GetUnit value)? getUnit,
    TResult? Function(SetUnitSelect value)? setUnitSelect,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetUnits value)? getUnits,
    TResult Function(GetUnit value)? getUnit,
    TResult Function(SetUnitSelect value)? setUnitSelect,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UnitState {
  const factory Initial({final UnitStateData? data}) = _$Initial;

  @override
  UnitStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $UnitStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UnitStateData? data});

  @override
  $UnitStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$UnitStateCopyWithImpl<$Res, _$Status>
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
              as UnitStateData?,
    ));
  }
}

/// @nodoc

class _$Status with DiagnosticableTreeMixin implements Status {
  const _$Status({this.data});

  @override
  final UnitStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnitState.status(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UnitState.status'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(UnitStateData? data) initial,
    required TResult Function(UnitStateData? data) status,
    required TResult Function(UnitStateData? data) getUnits,
    required TResult Function(UnitStateData? data) getUnit,
    required TResult Function(UnitStateData? data) setUnitSelect,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UnitStateData? data)? initial,
    TResult? Function(UnitStateData? data)? status,
    TResult? Function(UnitStateData? data)? getUnits,
    TResult? Function(UnitStateData? data)? getUnit,
    TResult? Function(UnitStateData? data)? setUnitSelect,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UnitStateData? data)? initial,
    TResult Function(UnitStateData? data)? status,
    TResult Function(UnitStateData? data)? getUnits,
    TResult Function(UnitStateData? data)? getUnit,
    TResult Function(UnitStateData? data)? setUnitSelect,
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
    required TResult Function(GetUnits value) getUnits,
    required TResult Function(GetUnit value) getUnit,
    required TResult Function(SetUnitSelect value) setUnitSelect,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetUnits value)? getUnits,
    TResult? Function(GetUnit value)? getUnit,
    TResult? Function(SetUnitSelect value)? setUnitSelect,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetUnits value)? getUnits,
    TResult Function(GetUnit value)? getUnit,
    TResult Function(SetUnitSelect value)? setUnitSelect,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements UnitState {
  const factory Status({final UnitStateData? data}) = _$Status;

  @override
  UnitStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUnitsCopyWith<$Res> implements $UnitStateCopyWith<$Res> {
  factory _$$GetUnitsCopyWith(
          _$GetUnits value, $Res Function(_$GetUnits) then) =
      __$$GetUnitsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UnitStateData? data});

  @override
  $UnitStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetUnitsCopyWithImpl<$Res>
    extends _$UnitStateCopyWithImpl<$Res, _$GetUnits>
    implements _$$GetUnitsCopyWith<$Res> {
  __$$GetUnitsCopyWithImpl(_$GetUnits _value, $Res Function(_$GetUnits) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetUnits(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UnitStateData?,
    ));
  }
}

/// @nodoc

class _$GetUnits with DiagnosticableTreeMixin implements GetUnits {
  const _$GetUnits({this.data});

  @override
  final UnitStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnitState.getUnits(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UnitState.getUnits'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUnits &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUnitsCopyWith<_$GetUnits> get copyWith =>
      __$$GetUnitsCopyWithImpl<_$GetUnits>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UnitStateData? data) initial,
    required TResult Function(UnitStateData? data) status,
    required TResult Function(UnitStateData? data) getUnits,
    required TResult Function(UnitStateData? data) getUnit,
    required TResult Function(UnitStateData? data) setUnitSelect,
  }) {
    return getUnits(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UnitStateData? data)? initial,
    TResult? Function(UnitStateData? data)? status,
    TResult? Function(UnitStateData? data)? getUnits,
    TResult? Function(UnitStateData? data)? getUnit,
    TResult? Function(UnitStateData? data)? setUnitSelect,
  }) {
    return getUnits?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UnitStateData? data)? initial,
    TResult Function(UnitStateData? data)? status,
    TResult Function(UnitStateData? data)? getUnits,
    TResult Function(UnitStateData? data)? getUnit,
    TResult Function(UnitStateData? data)? setUnitSelect,
    required TResult orElse(),
  }) {
    if (getUnits != null) {
      return getUnits(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetUnits value) getUnits,
    required TResult Function(GetUnit value) getUnit,
    required TResult Function(SetUnitSelect value) setUnitSelect,
  }) {
    return getUnits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetUnits value)? getUnits,
    TResult? Function(GetUnit value)? getUnit,
    TResult? Function(SetUnitSelect value)? setUnitSelect,
  }) {
    return getUnits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetUnits value)? getUnits,
    TResult Function(GetUnit value)? getUnit,
    TResult Function(SetUnitSelect value)? setUnitSelect,
    required TResult orElse(),
  }) {
    if (getUnits != null) {
      return getUnits(this);
    }
    return orElse();
  }
}

abstract class GetUnits implements UnitState {
  const factory GetUnits({final UnitStateData? data}) = _$GetUnits;

  @override
  UnitStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetUnitsCopyWith<_$GetUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUnitCopyWith<$Res> implements $UnitStateCopyWith<$Res> {
  factory _$$GetUnitCopyWith(_$GetUnit value, $Res Function(_$GetUnit) then) =
      __$$GetUnitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UnitStateData? data});

  @override
  $UnitStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetUnitCopyWithImpl<$Res>
    extends _$UnitStateCopyWithImpl<$Res, _$GetUnit>
    implements _$$GetUnitCopyWith<$Res> {
  __$$GetUnitCopyWithImpl(_$GetUnit _value, $Res Function(_$GetUnit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetUnit(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UnitStateData?,
    ));
  }
}

/// @nodoc

class _$GetUnit with DiagnosticableTreeMixin implements GetUnit {
  const _$GetUnit({this.data});

  @override
  final UnitStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnitState.getUnit(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UnitState.getUnit'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUnit &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUnitCopyWith<_$GetUnit> get copyWith =>
      __$$GetUnitCopyWithImpl<_$GetUnit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UnitStateData? data) initial,
    required TResult Function(UnitStateData? data) status,
    required TResult Function(UnitStateData? data) getUnits,
    required TResult Function(UnitStateData? data) getUnit,
    required TResult Function(UnitStateData? data) setUnitSelect,
  }) {
    return getUnit(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UnitStateData? data)? initial,
    TResult? Function(UnitStateData? data)? status,
    TResult? Function(UnitStateData? data)? getUnits,
    TResult? Function(UnitStateData? data)? getUnit,
    TResult? Function(UnitStateData? data)? setUnitSelect,
  }) {
    return getUnit?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UnitStateData? data)? initial,
    TResult Function(UnitStateData? data)? status,
    TResult Function(UnitStateData? data)? getUnits,
    TResult Function(UnitStateData? data)? getUnit,
    TResult Function(UnitStateData? data)? setUnitSelect,
    required TResult orElse(),
  }) {
    if (getUnit != null) {
      return getUnit(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetUnits value) getUnits,
    required TResult Function(GetUnit value) getUnit,
    required TResult Function(SetUnitSelect value) setUnitSelect,
  }) {
    return getUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetUnits value)? getUnits,
    TResult? Function(GetUnit value)? getUnit,
    TResult? Function(SetUnitSelect value)? setUnitSelect,
  }) {
    return getUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetUnits value)? getUnits,
    TResult Function(GetUnit value)? getUnit,
    TResult Function(SetUnitSelect value)? setUnitSelect,
    required TResult orElse(),
  }) {
    if (getUnit != null) {
      return getUnit(this);
    }
    return orElse();
  }
}

abstract class GetUnit implements UnitState {
  const factory GetUnit({final UnitStateData? data}) = _$GetUnit;

  @override
  UnitStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetUnitCopyWith<_$GetUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetUnitSelectCopyWith<$Res>
    implements $UnitStateCopyWith<$Res> {
  factory _$$SetUnitSelectCopyWith(
          _$SetUnitSelect value, $Res Function(_$SetUnitSelect) then) =
      __$$SetUnitSelectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UnitStateData? data});

  @override
  $UnitStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetUnitSelectCopyWithImpl<$Res>
    extends _$UnitStateCopyWithImpl<$Res, _$SetUnitSelect>
    implements _$$SetUnitSelectCopyWith<$Res> {
  __$$SetUnitSelectCopyWithImpl(
      _$SetUnitSelect _value, $Res Function(_$SetUnitSelect) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetUnitSelect(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UnitStateData?,
    ));
  }
}

/// @nodoc

class _$SetUnitSelect with DiagnosticableTreeMixin implements SetUnitSelect {
  const _$SetUnitSelect({this.data});

  @override
  final UnitStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnitState.setUnitSelect(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UnitState.setUnitSelect'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUnitSelect &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUnitSelectCopyWith<_$SetUnitSelect> get copyWith =>
      __$$SetUnitSelectCopyWithImpl<_$SetUnitSelect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UnitStateData? data) initial,
    required TResult Function(UnitStateData? data) status,
    required TResult Function(UnitStateData? data) getUnits,
    required TResult Function(UnitStateData? data) getUnit,
    required TResult Function(UnitStateData? data) setUnitSelect,
  }) {
    return setUnitSelect(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UnitStateData? data)? initial,
    TResult? Function(UnitStateData? data)? status,
    TResult? Function(UnitStateData? data)? getUnits,
    TResult? Function(UnitStateData? data)? getUnit,
    TResult? Function(UnitStateData? data)? setUnitSelect,
  }) {
    return setUnitSelect?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UnitStateData? data)? initial,
    TResult Function(UnitStateData? data)? status,
    TResult Function(UnitStateData? data)? getUnits,
    TResult Function(UnitStateData? data)? getUnit,
    TResult Function(UnitStateData? data)? setUnitSelect,
    required TResult orElse(),
  }) {
    if (setUnitSelect != null) {
      return setUnitSelect(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetUnits value) getUnits,
    required TResult Function(GetUnit value) getUnit,
    required TResult Function(SetUnitSelect value) setUnitSelect,
  }) {
    return setUnitSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetUnits value)? getUnits,
    TResult? Function(GetUnit value)? getUnit,
    TResult? Function(SetUnitSelect value)? setUnitSelect,
  }) {
    return setUnitSelect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetUnits value)? getUnits,
    TResult Function(GetUnit value)? getUnit,
    TResult Function(SetUnitSelect value)? setUnitSelect,
    required TResult orElse(),
  }) {
    if (setUnitSelect != null) {
      return setUnitSelect(this);
    }
    return orElse();
  }
}

abstract class SetUnitSelect implements UnitState {
  const factory SetUnitSelect({final UnitStateData? data}) = _$SetUnitSelect;

  @override
  UnitStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetUnitSelectCopyWith<_$SetUnitSelect> get copyWith =>
      throw _privateConstructorUsedError;
}
