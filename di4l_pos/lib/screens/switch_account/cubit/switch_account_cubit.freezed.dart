// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SwitchAccountStateData {
  List<Account> get accounts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwitchAccountStateDataCopyWith<SwitchAccountStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchAccountStateDataCopyWith<$Res> {
  factory $SwitchAccountStateDataCopyWith(SwitchAccountStateData value,
          $Res Function(SwitchAccountStateData) then) =
      _$SwitchAccountStateDataCopyWithImpl<$Res, SwitchAccountStateData>;
  @useResult
  $Res call({List<Account> accounts});
}

/// @nodoc
class _$SwitchAccountStateDataCopyWithImpl<$Res,
        $Val extends SwitchAccountStateData>
    implements $SwitchAccountStateDataCopyWith<$Res> {
  _$SwitchAccountStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_value.copyWith(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SwitchAccountStateDataCopyWith<$Res>
    implements $SwitchAccountStateDataCopyWith<$Res> {
  factory _$$_SwitchAccountStateDataCopyWith(_$_SwitchAccountStateData value,
          $Res Function(_$_SwitchAccountStateData) then) =
      __$$_SwitchAccountStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$$_SwitchAccountStateDataCopyWithImpl<$Res>
    extends _$SwitchAccountStateDataCopyWithImpl<$Res,
        _$_SwitchAccountStateData>
    implements _$$_SwitchAccountStateDataCopyWith<$Res> {
  __$$_SwitchAccountStateDataCopyWithImpl(_$_SwitchAccountStateData _value,
      $Res Function(_$_SwitchAccountStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$_SwitchAccountStateData(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_SwitchAccountStateData implements _SwitchAccountStateData {
  const _$_SwitchAccountStateData({final List<Account> accounts = const []})
      : _accounts = accounts;

  final List<Account> _accounts;
  @override
  @JsonKey()
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'SwitchAccountStateData(accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwitchAccountStateData &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SwitchAccountStateDataCopyWith<_$_SwitchAccountStateData> get copyWith =>
      __$$_SwitchAccountStateDataCopyWithImpl<_$_SwitchAccountStateData>(
          this, _$identity);
}

abstract class _SwitchAccountStateData implements SwitchAccountStateData {
  const factory _SwitchAccountStateData({final List<Account> accounts}) =
      _$_SwitchAccountStateData;

  @override
  List<Account> get accounts;
  @override
  @JsonKey(ignore: true)
  _$$_SwitchAccountStateDataCopyWith<_$_SwitchAccountStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SwitchAccountState {
  SwitchAccountStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwitchAccountStateData? data) initial,
    required TResult Function(SwitchAccountStateData? data) getAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SwitchAccountStateData? data)? initial,
    TResult? Function(SwitchAccountStateData? data)? getAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwitchAccountStateData? data)? initial,
    TResult Function(SwitchAccountStateData? data)? getAccounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetAccounts value) getAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetAccounts value)? getAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetAccounts value)? getAccounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwitchAccountStateCopyWith<SwitchAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchAccountStateCopyWith<$Res> {
  factory $SwitchAccountStateCopyWith(
          SwitchAccountState value, $Res Function(SwitchAccountState) then) =
      _$SwitchAccountStateCopyWithImpl<$Res, SwitchAccountState>;
  @useResult
  $Res call({SwitchAccountStateData? data});

  $SwitchAccountStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SwitchAccountStateCopyWithImpl<$Res, $Val extends SwitchAccountState>
    implements $SwitchAccountStateCopyWith<$Res> {
  _$SwitchAccountStateCopyWithImpl(this._value, this._then);

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
              as SwitchAccountStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SwitchAccountStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SwitchAccountStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $SwitchAccountStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SwitchAccountStateData? data});

  @override
  $SwitchAccountStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$SwitchAccountStateCopyWithImpl<$Res, _$Initial>
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
              as SwitchAccountStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final SwitchAccountStateData? data;

  @override
  String toString() {
    return 'SwitchAccountState.initial(data: $data)';
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
    required TResult Function(SwitchAccountStateData? data) initial,
    required TResult Function(SwitchAccountStateData? data) getAccounts,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SwitchAccountStateData? data)? initial,
    TResult? Function(SwitchAccountStateData? data)? getAccounts,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwitchAccountStateData? data)? initial,
    TResult Function(SwitchAccountStateData? data)? getAccounts,
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
    required TResult Function(GetAccounts value) getAccounts,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetAccounts value)? getAccounts,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetAccounts value)? getAccounts,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SwitchAccountState {
  const factory Initial({final SwitchAccountStateData? data}) = _$Initial;

  @override
  SwitchAccountStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAccountsCopyWith<$Res>
    implements $SwitchAccountStateCopyWith<$Res> {
  factory _$$GetAccountsCopyWith(
          _$GetAccounts value, $Res Function(_$GetAccounts) then) =
      __$$GetAccountsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SwitchAccountStateData? data});

  @override
  $SwitchAccountStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetAccountsCopyWithImpl<$Res>
    extends _$SwitchAccountStateCopyWithImpl<$Res, _$GetAccounts>
    implements _$$GetAccountsCopyWith<$Res> {
  __$$GetAccountsCopyWithImpl(
      _$GetAccounts _value, $Res Function(_$GetAccounts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetAccounts(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SwitchAccountStateData?,
    ));
  }
}

/// @nodoc

class _$GetAccounts implements GetAccounts {
  const _$GetAccounts({this.data});

  @override
  final SwitchAccountStateData? data;

  @override
  String toString() {
    return 'SwitchAccountState.getAccounts(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccounts &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccountsCopyWith<_$GetAccounts> get copyWith =>
      __$$GetAccountsCopyWithImpl<_$GetAccounts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwitchAccountStateData? data) initial,
    required TResult Function(SwitchAccountStateData? data) getAccounts,
  }) {
    return getAccounts(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SwitchAccountStateData? data)? initial,
    TResult? Function(SwitchAccountStateData? data)? getAccounts,
  }) {
    return getAccounts?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwitchAccountStateData? data)? initial,
    TResult Function(SwitchAccountStateData? data)? getAccounts,
    required TResult orElse(),
  }) {
    if (getAccounts != null) {
      return getAccounts(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetAccounts value) getAccounts,
  }) {
    return getAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetAccounts value)? getAccounts,
  }) {
    return getAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetAccounts value)? getAccounts,
    required TResult orElse(),
  }) {
    if (getAccounts != null) {
      return getAccounts(this);
    }
    return orElse();
  }
}

abstract class GetAccounts implements SwitchAccountState {
  const factory GetAccounts({final SwitchAccountStateData? data}) =
      _$GetAccounts;

  @override
  SwitchAccountStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAccountsCopyWith<_$GetAccounts> get copyWith =>
      throw _privateConstructorUsedError;
}
