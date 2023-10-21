// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_language_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangeLanguageStateData {
  List<CountryModel> get countries => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeLanguageStateDataCopyWith<ChangeLanguageStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeLanguageStateDataCopyWith<$Res> {
  factory $ChangeLanguageStateDataCopyWith(ChangeLanguageStateData value,
          $Res Function(ChangeLanguageStateData) then) =
      _$ChangeLanguageStateDataCopyWithImpl<$Res, ChangeLanguageStateData>;
  @useResult
  $Res call({List<CountryModel> countries});
}

/// @nodoc
class _$ChangeLanguageStateDataCopyWithImpl<$Res,
        $Val extends ChangeLanguageStateData>
    implements $ChangeLanguageStateDataCopyWith<$Res> {
  _$ChangeLanguageStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
  }) {
    return _then(_value.copyWith(
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangeLanguageStateDataCopyWith<$Res>
    implements $ChangeLanguageStateDataCopyWith<$Res> {
  factory _$$_ChangeLanguageStateDataCopyWith(_$_ChangeLanguageStateData value,
          $Res Function(_$_ChangeLanguageStateData) then) =
      __$$_ChangeLanguageStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CountryModel> countries});
}

/// @nodoc
class __$$_ChangeLanguageStateDataCopyWithImpl<$Res>
    extends _$ChangeLanguageStateDataCopyWithImpl<$Res,
        _$_ChangeLanguageStateData>
    implements _$$_ChangeLanguageStateDataCopyWith<$Res> {
  __$$_ChangeLanguageStateDataCopyWithImpl(_$_ChangeLanguageStateData _value,
      $Res Function(_$_ChangeLanguageStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
  }) {
    return _then(_$_ChangeLanguageStateData(
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ));
  }
}

/// @nodoc

class _$_ChangeLanguageStateData implements _ChangeLanguageStateData {
  const _$_ChangeLanguageStateData(
      {final List<CountryModel> countries = const []})
      : _countries = countries;

  final List<CountryModel> _countries;
  @override
  @JsonKey()
  List<CountryModel> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'ChangeLanguageStateData(countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeLanguageStateData &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_countries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeLanguageStateDataCopyWith<_$_ChangeLanguageStateData>
      get copyWith =>
          __$$_ChangeLanguageStateDataCopyWithImpl<_$_ChangeLanguageStateData>(
              this, _$identity);
}

abstract class _ChangeLanguageStateData implements ChangeLanguageStateData {
  const factory _ChangeLanguageStateData({final List<CountryModel> countries}) =
      _$_ChangeLanguageStateData;

  @override
  List<CountryModel> get countries;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeLanguageStateDataCopyWith<_$_ChangeLanguageStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChangeLanguageState {
  ChangeLanguageStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChangeLanguageStateData? data) initial,
    required TResult Function(ChangeLanguageStateData? data) getLanguages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChangeLanguageStateData? data)? initial,
    TResult? Function(ChangeLanguageStateData? data)? getLanguages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChangeLanguageStateData? data)? initial,
    TResult Function(ChangeLanguageStateData? data)? getLanguages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetLangauges value) getLanguages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetLangauges value)? getLanguages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetLangauges value)? getLanguages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeLanguageStateCopyWith<ChangeLanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeLanguageStateCopyWith<$Res> {
  factory $ChangeLanguageStateCopyWith(
          ChangeLanguageState value, $Res Function(ChangeLanguageState) then) =
      _$ChangeLanguageStateCopyWithImpl<$Res, ChangeLanguageState>;
  @useResult
  $Res call({ChangeLanguageStateData? data});

  $ChangeLanguageStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ChangeLanguageStateCopyWithImpl<$Res, $Val extends ChangeLanguageState>
    implements $ChangeLanguageStateCopyWith<$Res> {
  _$ChangeLanguageStateCopyWithImpl(this._value, this._then);

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
              as ChangeLanguageStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChangeLanguageStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ChangeLanguageStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $ChangeLanguageStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChangeLanguageStateData? data});

  @override
  $ChangeLanguageStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ChangeLanguageStateCopyWithImpl<$Res, _$Initial>
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
              as ChangeLanguageStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final ChangeLanguageStateData? data;

  @override
  String toString() {
    return 'ChangeLanguageState.initial(data: $data)';
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
    required TResult Function(ChangeLanguageStateData? data) initial,
    required TResult Function(ChangeLanguageStateData? data) getLanguages,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChangeLanguageStateData? data)? initial,
    TResult? Function(ChangeLanguageStateData? data)? getLanguages,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChangeLanguageStateData? data)? initial,
    TResult Function(ChangeLanguageStateData? data)? getLanguages,
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
    required TResult Function(GetLangauges value) getLanguages,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetLangauges value)? getLanguages,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetLangauges value)? getLanguages,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ChangeLanguageState {
  const factory Initial({final ChangeLanguageStateData? data}) = _$Initial;

  @override
  ChangeLanguageStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLangaugesCopyWith<$Res>
    implements $ChangeLanguageStateCopyWith<$Res> {
  factory _$$GetLangaugesCopyWith(
          _$GetLangauges value, $Res Function(_$GetLangauges) then) =
      __$$GetLangaugesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChangeLanguageStateData? data});

  @override
  $ChangeLanguageStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetLangaugesCopyWithImpl<$Res>
    extends _$ChangeLanguageStateCopyWithImpl<$Res, _$GetLangauges>
    implements _$$GetLangaugesCopyWith<$Res> {
  __$$GetLangaugesCopyWithImpl(
      _$GetLangauges _value, $Res Function(_$GetLangauges) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetLangauges(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChangeLanguageStateData?,
    ));
  }
}

/// @nodoc

class _$GetLangauges implements GetLangauges {
  const _$GetLangauges({this.data});

  @override
  final ChangeLanguageStateData? data;

  @override
  String toString() {
    return 'ChangeLanguageState.getLanguages(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLangauges &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLangaugesCopyWith<_$GetLangauges> get copyWith =>
      __$$GetLangaugesCopyWithImpl<_$GetLangauges>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChangeLanguageStateData? data) initial,
    required TResult Function(ChangeLanguageStateData? data) getLanguages,
  }) {
    return getLanguages(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChangeLanguageStateData? data)? initial,
    TResult? Function(ChangeLanguageStateData? data)? getLanguages,
  }) {
    return getLanguages?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChangeLanguageStateData? data)? initial,
    TResult Function(ChangeLanguageStateData? data)? getLanguages,
    required TResult orElse(),
  }) {
    if (getLanguages != null) {
      return getLanguages(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetLangauges value) getLanguages,
  }) {
    return getLanguages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetLangauges value)? getLanguages,
  }) {
    return getLanguages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetLangauges value)? getLanguages,
    required TResult orElse(),
  }) {
    if (getLanguages != null) {
      return getLanguages(this);
    }
    return orElse();
  }
}

abstract class GetLangauges implements ChangeLanguageState {
  const factory GetLangauges({final ChangeLanguageStateData? data}) =
      _$GetLangauges;

  @override
  ChangeLanguageStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetLangaugesCopyWith<_$GetLangauges> get copyWith =>
      throw _privateConstructorUsedError;
}
