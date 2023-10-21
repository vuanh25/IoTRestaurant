// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cash_register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CashRegisterStateData {
  List<CashResgisterData> get listCashRegisterData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CashRegisterStateDataCopyWith<CashRegisterStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashRegisterStateDataCopyWith<$Res> {
  factory $CashRegisterStateDataCopyWith(CashRegisterStateData value,
          $Res Function(CashRegisterStateData) then) =
      _$CashRegisterStateDataCopyWithImpl<$Res, CashRegisterStateData>;
  @useResult
  $Res call({List<CashResgisterData> listCashRegisterData});
}

/// @nodoc
class _$CashRegisterStateDataCopyWithImpl<$Res,
        $Val extends CashRegisterStateData>
    implements $CashRegisterStateDataCopyWith<$Res> {
  _$CashRegisterStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCashRegisterData = null,
  }) {
    return _then(_value.copyWith(
      listCashRegisterData: null == listCashRegisterData
          ? _value.listCashRegisterData
          : listCashRegisterData // ignore: cast_nullable_to_non_nullable
              as List<CashResgisterData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CashRegisteStateDataCopyWith<$Res>
    implements $CashRegisterStateDataCopyWith<$Res> {
  factory _$$_CashRegisteStateDataCopyWith(_$_CashRegisteStateData value,
          $Res Function(_$_CashRegisteStateData) then) =
      __$$_CashRegisteStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CashResgisterData> listCashRegisterData});
}

/// @nodoc
class __$$_CashRegisteStateDataCopyWithImpl<$Res>
    extends _$CashRegisterStateDataCopyWithImpl<$Res, _$_CashRegisteStateData>
    implements _$$_CashRegisteStateDataCopyWith<$Res> {
  __$$_CashRegisteStateDataCopyWithImpl(_$_CashRegisteStateData _value,
      $Res Function(_$_CashRegisteStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCashRegisterData = null,
  }) {
    return _then(_$_CashRegisteStateData(
      listCashRegisterData: null == listCashRegisterData
          ? _value._listCashRegisterData
          : listCashRegisterData // ignore: cast_nullable_to_non_nullable
              as List<CashResgisterData>,
    ));
  }
}

/// @nodoc

class _$_CashRegisteStateData
    with DiagnosticableTreeMixin
    implements _CashRegisteStateData {
  const _$_CashRegisteStateData(
      {final List<CashResgisterData> listCashRegisterData = const []})
      : _listCashRegisterData = listCashRegisterData;

  final List<CashResgisterData> _listCashRegisterData;
  @override
  @JsonKey()
  List<CashResgisterData> get listCashRegisterData {
    if (_listCashRegisterData is EqualUnmodifiableListView)
      return _listCashRegisterData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listCashRegisterData);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CashRegisterStateData(listCashRegisterData: $listCashRegisterData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CashRegisterStateData'))
      ..add(DiagnosticsProperty('listCashRegisterData', listCashRegisterData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CashRegisteStateData &&
            const DeepCollectionEquality()
                .equals(other._listCashRegisterData, _listCashRegisterData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listCashRegisterData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CashRegisteStateDataCopyWith<_$_CashRegisteStateData> get copyWith =>
      __$$_CashRegisteStateDataCopyWithImpl<_$_CashRegisteStateData>(
          this, _$identity);
}

abstract class _CashRegisteStateData implements CashRegisterStateData {
  const factory _CashRegisteStateData(
          {final List<CashResgisterData> listCashRegisterData}) =
      _$_CashRegisteStateData;

  @override
  List<CashResgisterData> get listCashRegisterData;
  @override
  @JsonKey(ignore: true)
  _$$_CashRegisteStateDataCopyWith<_$_CashRegisteStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CashRegisterState {
  CashRegisterStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CashRegisterStateData? data) initial,
    required TResult Function(CashRegisterStateData? data) getCashRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CashRegisterStateData? data)? initial,
    TResult? Function(CashRegisterStateData? data)? getCashRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CashRegisterStateData? data)? initial,
    TResult Function(CashRegisterStateData? data)? getCashRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetCashRegister value) getCashRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetCashRegister value)? getCashRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetCashRegister value)? getCashRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CashRegisterStateCopyWith<CashRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashRegisterStateCopyWith<$Res> {
  factory $CashRegisterStateCopyWith(
          CashRegisterState value, $Res Function(CashRegisterState) then) =
      _$CashRegisterStateCopyWithImpl<$Res, CashRegisterState>;
  @useResult
  $Res call({CashRegisterStateData? data});

  $CashRegisterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CashRegisterStateCopyWithImpl<$Res, $Val extends CashRegisterState>
    implements $CashRegisterStateCopyWith<$Res> {
  _$CashRegisterStateCopyWithImpl(this._value, this._then);

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
              as CashRegisterStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CashRegisterStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CashRegisterStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $CashRegisterStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CashRegisterStateData? data});

  @override
  $CashRegisterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$CashRegisterStateCopyWithImpl<$Res, _$Initial>
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
              as CashRegisterStateData?,
    ));
  }
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial({this.data});

  @override
  final CashRegisterStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CashRegisterState.initial(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CashRegisterState.initial'))
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
    required TResult Function(CashRegisterStateData? data) initial,
    required TResult Function(CashRegisterStateData? data) getCashRegister,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CashRegisterStateData? data)? initial,
    TResult? Function(CashRegisterStateData? data)? getCashRegister,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CashRegisterStateData? data)? initial,
    TResult Function(CashRegisterStateData? data)? getCashRegister,
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
    required TResult Function(GetCashRegister value) getCashRegister,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetCashRegister value)? getCashRegister,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetCashRegister value)? getCashRegister,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CashRegisterState {
  const factory Initial({final CashRegisterStateData? data}) = _$Initial;

  @override
  CashRegisterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCashRegisterCopyWith<$Res>
    implements $CashRegisterStateCopyWith<$Res> {
  factory _$$GetCashRegisterCopyWith(
          _$GetCashRegister value, $Res Function(_$GetCashRegister) then) =
      __$$GetCashRegisterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CashRegisterStateData? data});

  @override
  $CashRegisterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetCashRegisterCopyWithImpl<$Res>
    extends _$CashRegisterStateCopyWithImpl<$Res, _$GetCashRegister>
    implements _$$GetCashRegisterCopyWith<$Res> {
  __$$GetCashRegisterCopyWithImpl(
      _$GetCashRegister _value, $Res Function(_$GetCashRegister) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCashRegister(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CashRegisterStateData?,
    ));
  }
}

/// @nodoc

class _$GetCashRegister
    with DiagnosticableTreeMixin
    implements GetCashRegister {
  const _$GetCashRegister({this.data});

  @override
  final CashRegisterStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CashRegisterState.getCashRegister(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CashRegisterState.getCashRegister'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCashRegister &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCashRegisterCopyWith<_$GetCashRegister> get copyWith =>
      __$$GetCashRegisterCopyWithImpl<_$GetCashRegister>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CashRegisterStateData? data) initial,
    required TResult Function(CashRegisterStateData? data) getCashRegister,
  }) {
    return getCashRegister(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CashRegisterStateData? data)? initial,
    TResult? Function(CashRegisterStateData? data)? getCashRegister,
  }) {
    return getCashRegister?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CashRegisterStateData? data)? initial,
    TResult Function(CashRegisterStateData? data)? getCashRegister,
    required TResult orElse(),
  }) {
    if (getCashRegister != null) {
      return getCashRegister(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetCashRegister value) getCashRegister,
  }) {
    return getCashRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetCashRegister value)? getCashRegister,
  }) {
    return getCashRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetCashRegister value)? getCashRegister,
    required TResult orElse(),
  }) {
    if (getCashRegister != null) {
      return getCashRegister(this);
    }
    return orElse();
  }
}

abstract class GetCashRegister implements CashRegisterState {
  const factory GetCashRegister({final CashRegisterStateData? data}) =
      _$GetCashRegister;

  @override
  CashRegisterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetCashRegisterCopyWith<_$GetCashRegister> get copyWith =>
      throw _privateConstructorUsedError;
}
