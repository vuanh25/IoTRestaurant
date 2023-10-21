// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_cash_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddCashStateData {
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCashStateDataCopyWith<AddCashStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCashStateDataCopyWith<$Res> {
  factory $AddCashStateDataCopyWith(
          AddCashStateData value, $Res Function(AddCashStateData) then) =
      _$AddCashStateDataCopyWithImpl<$Res, AddCashStateData>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class _$AddCashStateDataCopyWithImpl<$Res, $Val extends AddCashStateData>
    implements $AddCashStateDataCopyWith<$Res> {
  _$AddCashStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCashStateDataCopyWith<$Res>
    implements $AddCashStateDataCopyWith<$Res> {
  factory _$$_AddCashStateDataCopyWith(
          _$_AddCashStateData value, $Res Function(_$_AddCashStateData) then) =
      __$$_AddCashStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$_AddCashStateDataCopyWithImpl<$Res>
    extends _$AddCashStateDataCopyWithImpl<$Res, _$_AddCashStateData>
    implements _$$_AddCashStateDataCopyWith<$Res> {
  __$$_AddCashStateDataCopyWithImpl(
      _$_AddCashStateData _value, $Res Function(_$_AddCashStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_AddCashStateData(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddCashStateData implements _AddCashStateData {
  const _$_AddCashStateData({this.type = 'open'});

  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'AddCashStateData(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCashStateData &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCashStateDataCopyWith<_$_AddCashStateData> get copyWith =>
      __$$_AddCashStateDataCopyWithImpl<_$_AddCashStateData>(this, _$identity);
}

abstract class _AddCashStateData implements AddCashStateData {
  const factory _AddCashStateData({final String type}) = _$_AddCashStateData;

  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_AddCashStateDataCopyWith<_$_AddCashStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddCashRegisterState {
  AddCashStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCashStateData? data) initial,
    required TResult Function(AddCashStateData? data) getType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCashStateData? data)? initial,
    TResult? Function(AddCashStateData? data)? getType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCashStateData? data)? initial,
    TResult Function(AddCashStateData? data)? getType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetType value) getType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetType value)? getType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetType value)? getType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCashRegisterStateCopyWith<AddCashRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCashRegisterStateCopyWith<$Res> {
  factory $AddCashRegisterStateCopyWith(AddCashRegisterState value,
          $Res Function(AddCashRegisterState) then) =
      _$AddCashRegisterStateCopyWithImpl<$Res, AddCashRegisterState>;
  @useResult
  $Res call({AddCashStateData? data});

  $AddCashStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddCashRegisterStateCopyWithImpl<$Res,
        $Val extends AddCashRegisterState>
    implements $AddCashRegisterStateCopyWith<$Res> {
  _$AddCashRegisterStateCopyWithImpl(this._value, this._then);

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
              as AddCashStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddCashStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddCashStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $AddCashRegisterStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCashStateData? data});

  @override
  $AddCashStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddCashRegisterStateCopyWithImpl<$Res, _$Initial>
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
              as AddCashStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final AddCashStateData? data;

  @override
  String toString() {
    return 'AddCashRegisterState.initial(data: $data)';
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
    required TResult Function(AddCashStateData? data) initial,
    required TResult Function(AddCashStateData? data) getType,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCashStateData? data)? initial,
    TResult? Function(AddCashStateData? data)? getType,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCashStateData? data)? initial,
    TResult Function(AddCashStateData? data)? getType,
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
    required TResult Function(GetType value) getType,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetType value)? getType,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetType value)? getType,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddCashRegisterState {
  const factory Initial({final AddCashStateData? data}) = _$Initial;

  @override
  AddCashStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTypeCopyWith<$Res>
    implements $AddCashRegisterStateCopyWith<$Res> {
  factory _$$GetTypeCopyWith(_$GetType value, $Res Function(_$GetType) then) =
      __$$GetTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCashStateData? data});

  @override
  $AddCashStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetTypeCopyWithImpl<$Res>
    extends _$AddCashRegisterStateCopyWithImpl<$Res, _$GetType>
    implements _$$GetTypeCopyWith<$Res> {
  __$$GetTypeCopyWithImpl(_$GetType _value, $Res Function(_$GetType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetType(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddCashStateData?,
    ));
  }
}

/// @nodoc

class _$GetType implements GetType {
  const _$GetType({this.data});

  @override
  final AddCashStateData? data;

  @override
  String toString() {
    return 'AddCashRegisterState.getType(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetType &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTypeCopyWith<_$GetType> get copyWith =>
      __$$GetTypeCopyWithImpl<_$GetType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCashStateData? data) initial,
    required TResult Function(AddCashStateData? data) getType,
  }) {
    return getType(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCashStateData? data)? initial,
    TResult? Function(AddCashStateData? data)? getType,
  }) {
    return getType?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCashStateData? data)? initial,
    TResult Function(AddCashStateData? data)? getType,
    required TResult orElse(),
  }) {
    if (getType != null) {
      return getType(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetType value) getType,
  }) {
    return getType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetType value)? getType,
  }) {
    return getType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetType value)? getType,
    required TResult orElse(),
  }) {
    if (getType != null) {
      return getType(this);
    }
    return orElse();
  }
}

abstract class GetType implements AddCashRegisterState {
  const factory GetType({final AddCashStateData? data}) = _$GetType;

  @override
  AddCashStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetTypeCopyWith<_$GetType> get copyWith =>
      throw _privateConstructorUsedError;
}
