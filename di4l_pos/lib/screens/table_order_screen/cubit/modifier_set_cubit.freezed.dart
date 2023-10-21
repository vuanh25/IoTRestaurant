// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modifier_set_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ModifierStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<Modifier> get modifierSets => throw _privateConstructorUsedError;
  Modifier? get modifierSet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModifierStateDataCopyWith<ModifierStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifierStateDataCopyWith<$Res> {
  factory $ModifierStateDataCopyWith(
          ModifierStateData value, $Res Function(ModifierStateData) then) =
      _$ModifierStateDataCopyWithImpl<$Res, ModifierStateData>;
  @useResult
  $Res call(
      {StatusType status, List<Modifier> modifierSets, Modifier? modifierSet});
}

/// @nodoc
class _$ModifierStateDataCopyWithImpl<$Res, $Val extends ModifierStateData>
    implements $ModifierStateDataCopyWith<$Res> {
  _$ModifierStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? modifierSets = null,
    Object? modifierSet = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      modifierSets: null == modifierSets
          ? _value.modifierSets
          : modifierSets // ignore: cast_nullable_to_non_nullable
              as List<Modifier>,
      modifierSet: freezed == modifierSet
          ? _value.modifierSet
          : modifierSet // ignore: cast_nullable_to_non_nullable
              as Modifier?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModifierStateDataCopyWith<$Res>
    implements $ModifierStateDataCopyWith<$Res> {
  factory _$$_ModifierStateDataCopyWith(_$_ModifierStateData value,
          $Res Function(_$_ModifierStateData) then) =
      __$$_ModifierStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status, List<Modifier> modifierSets, Modifier? modifierSet});
}

/// @nodoc
class __$$_ModifierStateDataCopyWithImpl<$Res>
    extends _$ModifierStateDataCopyWithImpl<$Res, _$_ModifierStateData>
    implements _$$_ModifierStateDataCopyWith<$Res> {
  __$$_ModifierStateDataCopyWithImpl(
      _$_ModifierStateData _value, $Res Function(_$_ModifierStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? modifierSets = null,
    Object? modifierSet = freezed,
  }) {
    return _then(_$_ModifierStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      modifierSets: null == modifierSets
          ? _value._modifierSets
          : modifierSets // ignore: cast_nullable_to_non_nullable
              as List<Modifier>,
      modifierSet: freezed == modifierSet
          ? _value.modifierSet
          : modifierSet // ignore: cast_nullable_to_non_nullable
              as Modifier?,
    ));
  }
}

/// @nodoc

class _$_ModifierStateData implements _ModifierStateData {
  const _$_ModifierStateData(
      {this.status = StatusType.init,
      final List<Modifier> modifierSets = const [],
      this.modifierSet})
      : _modifierSets = modifierSets;

  @override
  @JsonKey()
  final StatusType status;
  final List<Modifier> _modifierSets;
  @override
  @JsonKey()
  List<Modifier> get modifierSets {
    if (_modifierSets is EqualUnmodifiableListView) return _modifierSets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modifierSets);
  }

  @override
  final Modifier? modifierSet;

  @override
  String toString() {
    return 'ModifierStateData(status: $status, modifierSets: $modifierSets, modifierSet: $modifierSet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModifierStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._modifierSets, _modifierSets) &&
            (identical(other.modifierSet, modifierSet) ||
                other.modifierSet == modifierSet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_modifierSets), modifierSet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModifierStateDataCopyWith<_$_ModifierStateData> get copyWith =>
      __$$_ModifierStateDataCopyWithImpl<_$_ModifierStateData>(
          this, _$identity);
}

abstract class _ModifierStateData implements ModifierStateData {
  const factory _ModifierStateData(
      {final StatusType status,
      final List<Modifier> modifierSets,
      final Modifier? modifierSet}) = _$_ModifierStateData;

  @override
  StatusType get status;
  @override
  List<Modifier> get modifierSets;
  @override
  Modifier? get modifierSet;
  @override
  @JsonKey(ignore: true)
  _$$_ModifierStateDataCopyWith<_$_ModifierStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ModifierState {
  ModifierStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ModifierStateData? data) initial,
    required TResult Function(ModifierStateData? data) status,
    required TResult Function(ModifierStateData? data) getModifiers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ModifierStateData? data)? initial,
    TResult? Function(ModifierStateData? data)? status,
    TResult? Function(ModifierStateData? data)? getModifiers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ModifierStateData? data)? initial,
    TResult Function(ModifierStateData? data)? status,
    TResult Function(ModifierStateData? data)? getModifiers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetModifiers value) getModifiers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetModifiers value)? getModifiers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetModifiers value)? getModifiers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModifierStateCopyWith<ModifierState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifierStateCopyWith<$Res> {
  factory $ModifierStateCopyWith(
          ModifierState value, $Res Function(ModifierState) then) =
      _$ModifierStateCopyWithImpl<$Res, ModifierState>;
  @useResult
  $Res call({ModifierStateData? data});

  $ModifierStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ModifierStateCopyWithImpl<$Res, $Val extends ModifierState>
    implements $ModifierStateCopyWith<$Res> {
  _$ModifierStateCopyWithImpl(this._value, this._then);

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
              as ModifierStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ModifierStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ModifierStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $ModifierStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ModifierStateData? data});

  @override
  $ModifierStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ModifierStateCopyWithImpl<$Res, _$Initial>
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
              as ModifierStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final ModifierStateData? data;

  @override
  String toString() {
    return 'ModifierState.initial(data: $data)';
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
    required TResult Function(ModifierStateData? data) initial,
    required TResult Function(ModifierStateData? data) status,
    required TResult Function(ModifierStateData? data) getModifiers,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ModifierStateData? data)? initial,
    TResult? Function(ModifierStateData? data)? status,
    TResult? Function(ModifierStateData? data)? getModifiers,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ModifierStateData? data)? initial,
    TResult Function(ModifierStateData? data)? status,
    TResult Function(ModifierStateData? data)? getModifiers,
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
    required TResult Function(GetModifiers value) getModifiers,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetModifiers value)? getModifiers,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetModifiers value)? getModifiers,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ModifierState {
  const factory Initial({final ModifierStateData? data}) = _$Initial;

  @override
  ModifierStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $ModifierStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ModifierStateData? data});

  @override
  $ModifierStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$ModifierStateCopyWithImpl<$Res, _$Status>
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
              as ModifierStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final ModifierStateData? data;

  @override
  String toString() {
    return 'ModifierState.status(data: $data)';
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
    required TResult Function(ModifierStateData? data) initial,
    required TResult Function(ModifierStateData? data) status,
    required TResult Function(ModifierStateData? data) getModifiers,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ModifierStateData? data)? initial,
    TResult? Function(ModifierStateData? data)? status,
    TResult? Function(ModifierStateData? data)? getModifiers,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ModifierStateData? data)? initial,
    TResult Function(ModifierStateData? data)? status,
    TResult Function(ModifierStateData? data)? getModifiers,
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
    required TResult Function(GetModifiers value) getModifiers,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetModifiers value)? getModifiers,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetModifiers value)? getModifiers,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements ModifierState {
  const factory Status({final ModifierStateData? data}) = _$Status;

  @override
  ModifierStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetModifiersCopyWith<$Res>
    implements $ModifierStateCopyWith<$Res> {
  factory _$$GetModifiersCopyWith(
          _$GetModifiers value, $Res Function(_$GetModifiers) then) =
      __$$GetModifiersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ModifierStateData? data});

  @override
  $ModifierStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetModifiersCopyWithImpl<$Res>
    extends _$ModifierStateCopyWithImpl<$Res, _$GetModifiers>
    implements _$$GetModifiersCopyWith<$Res> {
  __$$GetModifiersCopyWithImpl(
      _$GetModifiers _value, $Res Function(_$GetModifiers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetModifiers(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ModifierStateData?,
    ));
  }
}

/// @nodoc

class _$GetModifiers implements GetModifiers {
  const _$GetModifiers({this.data});

  @override
  final ModifierStateData? data;

  @override
  String toString() {
    return 'ModifierState.getModifiers(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetModifiers &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetModifiersCopyWith<_$GetModifiers> get copyWith =>
      __$$GetModifiersCopyWithImpl<_$GetModifiers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ModifierStateData? data) initial,
    required TResult Function(ModifierStateData? data) status,
    required TResult Function(ModifierStateData? data) getModifiers,
  }) {
    return getModifiers(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ModifierStateData? data)? initial,
    TResult? Function(ModifierStateData? data)? status,
    TResult? Function(ModifierStateData? data)? getModifiers,
  }) {
    return getModifiers?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ModifierStateData? data)? initial,
    TResult Function(ModifierStateData? data)? status,
    TResult Function(ModifierStateData? data)? getModifiers,
    required TResult orElse(),
  }) {
    if (getModifiers != null) {
      return getModifiers(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetModifiers value) getModifiers,
  }) {
    return getModifiers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetModifiers value)? getModifiers,
  }) {
    return getModifiers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetModifiers value)? getModifiers,
    required TResult orElse(),
  }) {
    if (getModifiers != null) {
      return getModifiers(this);
    }
    return orElse();
  }
}

abstract class GetModifiers implements ModifierState {
  const factory GetModifiers({final ModifierStateData? data}) = _$GetModifiers;

  @override
  ModifierStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetModifiersCopyWith<_$GetModifiers> get copyWith =>
      throw _privateConstructorUsedError;
}
