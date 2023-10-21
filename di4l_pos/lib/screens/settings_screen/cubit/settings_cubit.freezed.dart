// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsStateData {
  String get font => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateDataCopyWith<SettingsStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateDataCopyWith<$Res> {
  factory $SettingsStateDataCopyWith(
          SettingsStateData value, $Res Function(SettingsStateData) then) =
      _$SettingsStateDataCopyWithImpl<$Res, SettingsStateData>;
  @useResult
  $Res call({String font});
}

/// @nodoc
class _$SettingsStateDataCopyWithImpl<$Res, $Val extends SettingsStateData>
    implements $SettingsStateDataCopyWith<$Res> {
  _$SettingsStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? font = null,
  }) {
    return _then(_value.copyWith(
      font: null == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsStateDataCopyWith<$Res>
    implements $SettingsStateDataCopyWith<$Res> {
  factory _$$_SettingsStateDataCopyWith(_$_SettingsStateData value,
          $Res Function(_$_SettingsStateData) then) =
      __$$_SettingsStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String font});
}

/// @nodoc
class __$$_SettingsStateDataCopyWithImpl<$Res>
    extends _$SettingsStateDataCopyWithImpl<$Res, _$_SettingsStateData>
    implements _$$_SettingsStateDataCopyWith<$Res> {
  __$$_SettingsStateDataCopyWithImpl(
      _$_SettingsStateData _value, $Res Function(_$_SettingsStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? font = null,
  }) {
    return _then(_$_SettingsStateData(
      font: null == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SettingsStateData
    with DiagnosticableTreeMixin
    implements _SettingsStateData {
  const _$_SettingsStateData({this.font = 'Roboto'});

  @override
  @JsonKey()
  final String font;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsStateData(font: $font)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsStateData'))
      ..add(DiagnosticsProperty('font', font));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsStateData &&
            (identical(other.font, font) || other.font == font));
  }

  @override
  int get hashCode => Object.hash(runtimeType, font);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsStateDataCopyWith<_$_SettingsStateData> get copyWith =>
      __$$_SettingsStateDataCopyWithImpl<_$_SettingsStateData>(
          this, _$identity);
}

abstract class _SettingsStateData implements SettingsStateData {
  const factory _SettingsStateData({final String font}) = _$_SettingsStateData;

  @override
  String get font;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateDataCopyWith<_$_SettingsStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  SettingsStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsStateData? data) initial,
    required TResult Function(SettingsStateData? data) font,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsStateData? data)? initial,
    TResult? Function(SettingsStateData? data)? font,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsStateData? data)? initial,
    TResult Function(SettingsStateData? data)? font,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Font value) font,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Font value)? font,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Font value)? font,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({SettingsStateData? data});

  $SettingsStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

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
              as SettingsStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SettingsStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsStateData? data});

  @override
  $SettingsStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$Initial>
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
              as SettingsStateData?,
    ));
  }
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial({this.data});

  @override
  final SettingsStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.initial(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState.initial'))
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
    required TResult Function(SettingsStateData? data) initial,
    required TResult Function(SettingsStateData? data) font,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsStateData? data)? initial,
    TResult? Function(SettingsStateData? data)? font,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsStateData? data)? initial,
    TResult Function(SettingsStateData? data)? font,
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
    required TResult Function(Font value) font,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Font value)? font,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Font value)? font,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SettingsState {
  const factory Initial({final SettingsStateData? data}) = _$Initial;

  @override
  SettingsStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FontCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$$FontCopyWith(_$Font value, $Res Function(_$Font) then) =
      __$$FontCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsStateData? data});

  @override
  $SettingsStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FontCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$Font>
    implements _$$FontCopyWith<$Res> {
  __$$FontCopyWithImpl(_$Font _value, $Res Function(_$Font) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Font(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsStateData?,
    ));
  }
}

/// @nodoc

class _$Font with DiagnosticableTreeMixin implements Font {
  const _$Font({this.data});

  @override
  final SettingsStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.font(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState.font'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Font &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FontCopyWith<_$Font> get copyWith =>
      __$$FontCopyWithImpl<_$Font>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsStateData? data) initial,
    required TResult Function(SettingsStateData? data) font,
  }) {
    return font(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsStateData? data)? initial,
    TResult? Function(SettingsStateData? data)? font,
  }) {
    return font?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsStateData? data)? initial,
    TResult Function(SettingsStateData? data)? font,
    required TResult orElse(),
  }) {
    if (font != null) {
      return font(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Font value) font,
  }) {
    return font(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Font value)? font,
  }) {
    return font?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Font value)? font,
    required TResult orElse(),
  }) {
    if (font != null) {
      return font(this);
    }
    return orElse();
  }
}

abstract class Font implements SettingsState {
  const factory Font({final SettingsStateData? data}) = _$Font;

  @override
  SettingsStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$FontCopyWith<_$Font> get copyWith => throw _privateConstructorUsedError;
}
