// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterStateData {
  String get error => throw _privateConstructorUsedError;
  bool get showPass => throw _privateConstructorUsedError;
  bool get showConfirmPass => throw _privateConstructorUsedError;
  bool get rules => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateDataCopyWith<RegisterStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateDataCopyWith<$Res> {
  factory $RegisterStateDataCopyWith(
          RegisterStateData value, $Res Function(RegisterStateData) then) =
      _$RegisterStateDataCopyWithImpl<$Res, RegisterStateData>;
  @useResult
  $Res call({String error, bool showPass, bool showConfirmPass, bool rules});
}

/// @nodoc
class _$RegisterStateDataCopyWithImpl<$Res, $Val extends RegisterStateData>
    implements $RegisterStateDataCopyWith<$Res> {
  _$RegisterStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? showPass = null,
    Object? showConfirmPass = null,
    Object? rules = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      showPass: null == showPass
          ? _value.showPass
          : showPass // ignore: cast_nullable_to_non_nullable
              as bool,
      showConfirmPass: null == showConfirmPass
          ? _value.showConfirmPass
          : showConfirmPass // ignore: cast_nullable_to_non_nullable
              as bool,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterStateDataCopyWith<$Res>
    implements $RegisterStateDataCopyWith<$Res> {
  factory _$$_RegisterStateDataCopyWith(_$_RegisterStateData value,
          $Res Function(_$_RegisterStateData) then) =
      __$$_RegisterStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, bool showPass, bool showConfirmPass, bool rules});
}

/// @nodoc
class __$$_RegisterStateDataCopyWithImpl<$Res>
    extends _$RegisterStateDataCopyWithImpl<$Res, _$_RegisterStateData>
    implements _$$_RegisterStateDataCopyWith<$Res> {
  __$$_RegisterStateDataCopyWithImpl(
      _$_RegisterStateData _value, $Res Function(_$_RegisterStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? showPass = null,
    Object? showConfirmPass = null,
    Object? rules = null,
  }) {
    return _then(_$_RegisterStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      showPass: null == showPass
          ? _value.showPass
          : showPass // ignore: cast_nullable_to_non_nullable
              as bool,
      showConfirmPass: null == showConfirmPass
          ? _value.showConfirmPass
          : showConfirmPass // ignore: cast_nullable_to_non_nullable
              as bool,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterStateData implements _RegisterStateData {
  const _$_RegisterStateData(
      {this.error = '',
      this.showPass = true,
      this.showConfirmPass = true,
      this.rules = false});

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final bool showPass;
  @override
  @JsonKey()
  final bool showConfirmPass;
  @override
  @JsonKey()
  final bool rules;

  @override
  String toString() {
    return 'RegisterStateData(error: $error, showPass: $showPass, showConfirmPass: $showConfirmPass, rules: $rules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.showPass, showPass) ||
                other.showPass == showPass) &&
            (identical(other.showConfirmPass, showConfirmPass) ||
                other.showConfirmPass == showConfirmPass) &&
            (identical(other.rules, rules) || other.rules == rules));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, showPass, showConfirmPass, rules);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateDataCopyWith<_$_RegisterStateData> get copyWith =>
      __$$_RegisterStateDataCopyWithImpl<_$_RegisterStateData>(
          this, _$identity);
}

abstract class _RegisterStateData implements RegisterStateData {
  const factory _RegisterStateData(
      {final String error,
      final bool showPass,
      final bool showConfirmPass,
      final bool rules}) = _$_RegisterStateData;

  @override
  String get error;
  @override
  bool get showPass;
  @override
  bool get showConfirmPass;
  @override
  bool get rules;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateDataCopyWith<_$_RegisterStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  RegisterStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterStateData? data) initial,
    required TResult Function(RegisterStateData? data) getError,
    required TResult Function(RegisterStateData? data) showPass,
    required TResult Function(RegisterStateData? data) showConfirmPass,
    required TResult Function(RegisterStateData? data) rules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateData? data)? initial,
    TResult? Function(RegisterStateData? data)? getError,
    TResult? Function(RegisterStateData? data)? showPass,
    TResult? Function(RegisterStateData? data)? showConfirmPass,
    TResult? Function(RegisterStateData? data)? rules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterStateData? data)? initial,
    TResult Function(RegisterStateData? data)? getError,
    TResult Function(RegisterStateData? data)? showPass,
    TResult Function(RegisterStateData? data)? showConfirmPass,
    TResult Function(RegisterStateData? data)? rules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(ShowPass value) showPass,
    required TResult Function(ShowConfirmPass value) showConfirmPass,
    required TResult Function(Rules value) rules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(ShowConfirmPass value)? showConfirmPass,
    TResult? Function(Rules value)? rules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(ShowConfirmPass value)? showConfirmPass,
    TResult Function(Rules value)? rules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call({RegisterStateData? data});

  $RegisterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

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
              as RegisterStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RegisterStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterStateData? data});

  @override
  $RegisterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$Initial>
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
              as RegisterStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final RegisterStateData? data;

  @override
  String toString() {
    return 'RegisterState.initial(data: $data)';
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
    required TResult Function(RegisterStateData? data) initial,
    required TResult Function(RegisterStateData? data) getError,
    required TResult Function(RegisterStateData? data) showPass,
    required TResult Function(RegisterStateData? data) showConfirmPass,
    required TResult Function(RegisterStateData? data) rules,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateData? data)? initial,
    TResult? Function(RegisterStateData? data)? getError,
    TResult? Function(RegisterStateData? data)? showPass,
    TResult? Function(RegisterStateData? data)? showConfirmPass,
    TResult? Function(RegisterStateData? data)? rules,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterStateData? data)? initial,
    TResult Function(RegisterStateData? data)? getError,
    TResult Function(RegisterStateData? data)? showPass,
    TResult Function(RegisterStateData? data)? showConfirmPass,
    TResult Function(RegisterStateData? data)? rules,
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
    required TResult Function(GetError value) getError,
    required TResult Function(ShowPass value) showPass,
    required TResult Function(ShowConfirmPass value) showConfirmPass,
    required TResult Function(Rules value) rules,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(ShowConfirmPass value)? showConfirmPass,
    TResult? Function(Rules value)? rules,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(ShowConfirmPass value)? showConfirmPass,
    TResult Function(Rules value)? rules,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RegisterState {
  const factory Initial({final RegisterStateData? data}) = _$Initial;

  @override
  RegisterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$GetErrorCopyWith(
          _$GetError value, $Res Function(_$GetError) then) =
      __$$GetErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterStateData? data});

  @override
  $RegisterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$GetError>
    implements _$$GetErrorCopyWith<$Res> {
  __$$GetErrorCopyWithImpl(_$GetError _value, $Res Function(_$GetError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetError(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterStateData?,
    ));
  }
}

/// @nodoc

class _$GetError implements GetError {
  const _$GetError({this.data});

  @override
  final RegisterStateData? data;

  @override
  String toString() {
    return 'RegisterState.getError(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetError &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      __$$GetErrorCopyWithImpl<_$GetError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterStateData? data) initial,
    required TResult Function(RegisterStateData? data) getError,
    required TResult Function(RegisterStateData? data) showPass,
    required TResult Function(RegisterStateData? data) showConfirmPass,
    required TResult Function(RegisterStateData? data) rules,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateData? data)? initial,
    TResult? Function(RegisterStateData? data)? getError,
    TResult? Function(RegisterStateData? data)? showPass,
    TResult? Function(RegisterStateData? data)? showConfirmPass,
    TResult? Function(RegisterStateData? data)? rules,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterStateData? data)? initial,
    TResult Function(RegisterStateData? data)? getError,
    TResult Function(RegisterStateData? data)? showPass,
    TResult Function(RegisterStateData? data)? showConfirmPass,
    TResult Function(RegisterStateData? data)? rules,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(ShowPass value) showPass,
    required TResult Function(ShowConfirmPass value) showConfirmPass,
    required TResult Function(Rules value) rules,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(ShowConfirmPass value)? showConfirmPass,
    TResult? Function(Rules value)? rules,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(ShowConfirmPass value)? showConfirmPass,
    TResult Function(Rules value)? rules,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements RegisterState {
  const factory GetError({final RegisterStateData? data}) = _$GetError;

  @override
  RegisterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowPassCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$ShowPassCopyWith(
          _$ShowPass value, $Res Function(_$ShowPass) then) =
      __$$ShowPassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterStateData? data});

  @override
  $RegisterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ShowPassCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$ShowPass>
    implements _$$ShowPassCopyWith<$Res> {
  __$$ShowPassCopyWithImpl(_$ShowPass _value, $Res Function(_$ShowPass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ShowPass(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterStateData?,
    ));
  }
}

/// @nodoc

class _$ShowPass implements ShowPass {
  const _$ShowPass({this.data});

  @override
  final RegisterStateData? data;

  @override
  String toString() {
    return 'RegisterState.showPass(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowPass &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowPassCopyWith<_$ShowPass> get copyWith =>
      __$$ShowPassCopyWithImpl<_$ShowPass>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterStateData? data) initial,
    required TResult Function(RegisterStateData? data) getError,
    required TResult Function(RegisterStateData? data) showPass,
    required TResult Function(RegisterStateData? data) showConfirmPass,
    required TResult Function(RegisterStateData? data) rules,
  }) {
    return showPass(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateData? data)? initial,
    TResult? Function(RegisterStateData? data)? getError,
    TResult? Function(RegisterStateData? data)? showPass,
    TResult? Function(RegisterStateData? data)? showConfirmPass,
    TResult? Function(RegisterStateData? data)? rules,
  }) {
    return showPass?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterStateData? data)? initial,
    TResult Function(RegisterStateData? data)? getError,
    TResult Function(RegisterStateData? data)? showPass,
    TResult Function(RegisterStateData? data)? showConfirmPass,
    TResult Function(RegisterStateData? data)? rules,
    required TResult orElse(),
  }) {
    if (showPass != null) {
      return showPass(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(ShowPass value) showPass,
    required TResult Function(ShowConfirmPass value) showConfirmPass,
    required TResult Function(Rules value) rules,
  }) {
    return showPass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(ShowConfirmPass value)? showConfirmPass,
    TResult? Function(Rules value)? rules,
  }) {
    return showPass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(ShowConfirmPass value)? showConfirmPass,
    TResult Function(Rules value)? rules,
    required TResult orElse(),
  }) {
    if (showPass != null) {
      return showPass(this);
    }
    return orElse();
  }
}

abstract class ShowPass implements RegisterState {
  const factory ShowPass({final RegisterStateData? data}) = _$ShowPass;

  @override
  RegisterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ShowPassCopyWith<_$ShowPass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowConfirmPassCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$ShowConfirmPassCopyWith(
          _$ShowConfirmPass value, $Res Function(_$ShowConfirmPass) then) =
      __$$ShowConfirmPassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterStateData? data});

  @override
  $RegisterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ShowConfirmPassCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$ShowConfirmPass>
    implements _$$ShowConfirmPassCopyWith<$Res> {
  __$$ShowConfirmPassCopyWithImpl(
      _$ShowConfirmPass _value, $Res Function(_$ShowConfirmPass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ShowConfirmPass(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterStateData?,
    ));
  }
}

/// @nodoc

class _$ShowConfirmPass implements ShowConfirmPass {
  const _$ShowConfirmPass({this.data});

  @override
  final RegisterStateData? data;

  @override
  String toString() {
    return 'RegisterState.showConfirmPass(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowConfirmPass &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowConfirmPassCopyWith<_$ShowConfirmPass> get copyWith =>
      __$$ShowConfirmPassCopyWithImpl<_$ShowConfirmPass>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterStateData? data) initial,
    required TResult Function(RegisterStateData? data) getError,
    required TResult Function(RegisterStateData? data) showPass,
    required TResult Function(RegisterStateData? data) showConfirmPass,
    required TResult Function(RegisterStateData? data) rules,
  }) {
    return showConfirmPass(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateData? data)? initial,
    TResult? Function(RegisterStateData? data)? getError,
    TResult? Function(RegisterStateData? data)? showPass,
    TResult? Function(RegisterStateData? data)? showConfirmPass,
    TResult? Function(RegisterStateData? data)? rules,
  }) {
    return showConfirmPass?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterStateData? data)? initial,
    TResult Function(RegisterStateData? data)? getError,
    TResult Function(RegisterStateData? data)? showPass,
    TResult Function(RegisterStateData? data)? showConfirmPass,
    TResult Function(RegisterStateData? data)? rules,
    required TResult orElse(),
  }) {
    if (showConfirmPass != null) {
      return showConfirmPass(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(ShowPass value) showPass,
    required TResult Function(ShowConfirmPass value) showConfirmPass,
    required TResult Function(Rules value) rules,
  }) {
    return showConfirmPass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(ShowConfirmPass value)? showConfirmPass,
    TResult? Function(Rules value)? rules,
  }) {
    return showConfirmPass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(ShowConfirmPass value)? showConfirmPass,
    TResult Function(Rules value)? rules,
    required TResult orElse(),
  }) {
    if (showConfirmPass != null) {
      return showConfirmPass(this);
    }
    return orElse();
  }
}

abstract class ShowConfirmPass implements RegisterState {
  const factory ShowConfirmPass({final RegisterStateData? data}) =
      _$ShowConfirmPass;

  @override
  RegisterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ShowConfirmPassCopyWith<_$ShowConfirmPass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RulesCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$$RulesCopyWith(_$Rules value, $Res Function(_$Rules) then) =
      __$$RulesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterStateData? data});

  @override
  $RegisterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RulesCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$Rules>
    implements _$$RulesCopyWith<$Res> {
  __$$RulesCopyWithImpl(_$Rules _value, $Res Function(_$Rules) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Rules(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterStateData?,
    ));
  }
}

/// @nodoc

class _$Rules implements Rules {
  const _$Rules({this.data});

  @override
  final RegisterStateData? data;

  @override
  String toString() {
    return 'RegisterState.rules(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Rules &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RulesCopyWith<_$Rules> get copyWith =>
      __$$RulesCopyWithImpl<_$Rules>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterStateData? data) initial,
    required TResult Function(RegisterStateData? data) getError,
    required TResult Function(RegisterStateData? data) showPass,
    required TResult Function(RegisterStateData? data) showConfirmPass,
    required TResult Function(RegisterStateData? data) rules,
  }) {
    return rules(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateData? data)? initial,
    TResult? Function(RegisterStateData? data)? getError,
    TResult? Function(RegisterStateData? data)? showPass,
    TResult? Function(RegisterStateData? data)? showConfirmPass,
    TResult? Function(RegisterStateData? data)? rules,
  }) {
    return rules?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterStateData? data)? initial,
    TResult Function(RegisterStateData? data)? getError,
    TResult Function(RegisterStateData? data)? showPass,
    TResult Function(RegisterStateData? data)? showConfirmPass,
    TResult Function(RegisterStateData? data)? rules,
    required TResult orElse(),
  }) {
    if (rules != null) {
      return rules(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(ShowPass value) showPass,
    required TResult Function(ShowConfirmPass value) showConfirmPass,
    required TResult Function(Rules value) rules,
  }) {
    return rules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(ShowPass value)? showPass,
    TResult? Function(ShowConfirmPass value)? showConfirmPass,
    TResult? Function(Rules value)? rules,
  }) {
    return rules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(ShowPass value)? showPass,
    TResult Function(ShowConfirmPass value)? showConfirmPass,
    TResult Function(Rules value)? rules,
    required TResult orElse(),
  }) {
    if (rules != null) {
      return rules(this);
    }
    return orElse();
  }
}

abstract class Rules implements RegisterState {
  const factory Rules({final RegisterStateData? data}) = _$Rules;

  @override
  RegisterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$RulesCopyWith<_$Rules> get copyWith => throw _privateConstructorUsedError;
}
