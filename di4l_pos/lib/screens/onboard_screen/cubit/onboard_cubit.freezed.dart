// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardStateData {
  List<Onboard> get onboards => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardStateDataCopyWith<OnboardStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardStateDataCopyWith<$Res> {
  factory $OnboardStateDataCopyWith(
          OnboardStateData value, $Res Function(OnboardStateData) then) =
      _$OnboardStateDataCopyWithImpl<$Res, OnboardStateData>;
  @useResult
  $Res call({List<Onboard> onboards, int index});
}

/// @nodoc
class _$OnboardStateDataCopyWithImpl<$Res, $Val extends OnboardStateData>
    implements $OnboardStateDataCopyWith<$Res> {
  _$OnboardStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboards = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      onboards: null == onboards
          ? _value.onboards
          : onboards // ignore: cast_nullable_to_non_nullable
              as List<Onboard>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnboardStateDataCopyWith<$Res>
    implements $OnboardStateDataCopyWith<$Res> {
  factory _$$_OnboardStateDataCopyWith(
          _$_OnboardStateData value, $Res Function(_$_OnboardStateData) then) =
      __$$_OnboardStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Onboard> onboards, int index});
}

/// @nodoc
class __$$_OnboardStateDataCopyWithImpl<$Res>
    extends _$OnboardStateDataCopyWithImpl<$Res, _$_OnboardStateData>
    implements _$$_OnboardStateDataCopyWith<$Res> {
  __$$_OnboardStateDataCopyWithImpl(
      _$_OnboardStateData _value, $Res Function(_$_OnboardStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboards = null,
    Object? index = null,
  }) {
    return _then(_$_OnboardStateData(
      onboards: null == onboards
          ? _value._onboards
          : onboards // ignore: cast_nullable_to_non_nullable
              as List<Onboard>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnboardStateData implements _OnboardStateData {
  const _$_OnboardStateData(
      {final List<Onboard> onboards = const [], this.index = 0})
      : _onboards = onboards;

  final List<Onboard> _onboards;
  @override
  @JsonKey()
  List<Onboard> get onboards {
    if (_onboards is EqualUnmodifiableListView) return _onboards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onboards);
  }

  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'OnboardStateData(onboards: $onboards, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardStateData &&
            const DeepCollectionEquality().equals(other._onboards, _onboards) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_onboards), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardStateDataCopyWith<_$_OnboardStateData> get copyWith =>
      __$$_OnboardStateDataCopyWithImpl<_$_OnboardStateData>(this, _$identity);
}

abstract class _OnboardStateData implements OnboardStateData {
  const factory _OnboardStateData(
      {final List<Onboard> onboards, final int index}) = _$_OnboardStateData;

  @override
  List<Onboard> get onboards;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardStateDataCopyWith<_$_OnboardStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OnboardState {
  OnboardStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OnboardStateData? data) initial,
    required TResult Function(OnboardStateData? data) getOnboars,
    required TResult Function(OnboardStateData? data) changeIndex,
    required TResult Function(OnboardStateData? data) updateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OnboardStateData? data)? initial,
    TResult? Function(OnboardStateData? data)? getOnboars,
    TResult? Function(OnboardStateData? data)? changeIndex,
    TResult? Function(OnboardStateData? data)? updateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OnboardStateData? data)? initial,
    TResult Function(OnboardStateData? data)? getOnboars,
    TResult Function(OnboardStateData? data)? changeIndex,
    TResult Function(OnboardStateData? data)? updateIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetOnboards value) getOnboars,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(UpdateIndex value) updateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetOnboards value)? getOnboars,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(UpdateIndex value)? updateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetOnboards value)? getOnboars,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(UpdateIndex value)? updateIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardStateCopyWith<OnboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardStateCopyWith<$Res> {
  factory $OnboardStateCopyWith(
          OnboardState value, $Res Function(OnboardState) then) =
      _$OnboardStateCopyWithImpl<$Res, OnboardState>;
  @useResult
  $Res call({OnboardStateData? data});

  $OnboardStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$OnboardStateCopyWithImpl<$Res, $Val extends OnboardState>
    implements $OnboardStateCopyWith<$Res> {
  _$OnboardStateCopyWithImpl(this._value, this._then);

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
              as OnboardStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OnboardStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $OnboardStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $OnboardStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OnboardStateData? data});

  @override
  $OnboardStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$OnboardStateCopyWithImpl<$Res, _$Initial>
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
              as OnboardStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final OnboardStateData? data;

  @override
  String toString() {
    return 'OnboardState.initial(data: $data)';
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
    required TResult Function(OnboardStateData? data) initial,
    required TResult Function(OnboardStateData? data) getOnboars,
    required TResult Function(OnboardStateData? data) changeIndex,
    required TResult Function(OnboardStateData? data) updateIndex,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OnboardStateData? data)? initial,
    TResult? Function(OnboardStateData? data)? getOnboars,
    TResult? Function(OnboardStateData? data)? changeIndex,
    TResult? Function(OnboardStateData? data)? updateIndex,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OnboardStateData? data)? initial,
    TResult Function(OnboardStateData? data)? getOnboars,
    TResult Function(OnboardStateData? data)? changeIndex,
    TResult Function(OnboardStateData? data)? updateIndex,
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
    required TResult Function(GetOnboards value) getOnboars,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(UpdateIndex value) updateIndex,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetOnboards value)? getOnboars,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(UpdateIndex value)? updateIndex,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetOnboards value)? getOnboars,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(UpdateIndex value)? updateIndex,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements OnboardState {
  const factory Initial({final OnboardStateData? data}) = _$Initial;

  @override
  OnboardStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOnboardsCopyWith<$Res>
    implements $OnboardStateCopyWith<$Res> {
  factory _$$GetOnboardsCopyWith(
          _$GetOnboards value, $Res Function(_$GetOnboards) then) =
      __$$GetOnboardsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OnboardStateData? data});

  @override
  $OnboardStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetOnboardsCopyWithImpl<$Res>
    extends _$OnboardStateCopyWithImpl<$Res, _$GetOnboards>
    implements _$$GetOnboardsCopyWith<$Res> {
  __$$GetOnboardsCopyWithImpl(
      _$GetOnboards _value, $Res Function(_$GetOnboards) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetOnboards(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OnboardStateData?,
    ));
  }
}

/// @nodoc

class _$GetOnboards implements GetOnboards {
  const _$GetOnboards({this.data});

  @override
  final OnboardStateData? data;

  @override
  String toString() {
    return 'OnboardState.getOnboars(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOnboards &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOnboardsCopyWith<_$GetOnboards> get copyWith =>
      __$$GetOnboardsCopyWithImpl<_$GetOnboards>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OnboardStateData? data) initial,
    required TResult Function(OnboardStateData? data) getOnboars,
    required TResult Function(OnboardStateData? data) changeIndex,
    required TResult Function(OnboardStateData? data) updateIndex,
  }) {
    return getOnboars(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OnboardStateData? data)? initial,
    TResult? Function(OnboardStateData? data)? getOnboars,
    TResult? Function(OnboardStateData? data)? changeIndex,
    TResult? Function(OnboardStateData? data)? updateIndex,
  }) {
    return getOnboars?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OnboardStateData? data)? initial,
    TResult Function(OnboardStateData? data)? getOnboars,
    TResult Function(OnboardStateData? data)? changeIndex,
    TResult Function(OnboardStateData? data)? updateIndex,
    required TResult orElse(),
  }) {
    if (getOnboars != null) {
      return getOnboars(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetOnboards value) getOnboars,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(UpdateIndex value) updateIndex,
  }) {
    return getOnboars(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetOnboards value)? getOnboars,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(UpdateIndex value)? updateIndex,
  }) {
    return getOnboars?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetOnboards value)? getOnboars,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(UpdateIndex value)? updateIndex,
    required TResult orElse(),
  }) {
    if (getOnboars != null) {
      return getOnboars(this);
    }
    return orElse();
  }
}

abstract class GetOnboards implements OnboardState {
  const factory GetOnboards({final OnboardStateData? data}) = _$GetOnboards;

  @override
  OnboardStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetOnboardsCopyWith<_$GetOnboards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeIndexCopyWith<$Res>
    implements $OnboardStateCopyWith<$Res> {
  factory _$$ChangeIndexCopyWith(
          _$ChangeIndex value, $Res Function(_$ChangeIndex) then) =
      __$$ChangeIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OnboardStateData? data});

  @override
  $OnboardStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ChangeIndexCopyWithImpl<$Res>
    extends _$OnboardStateCopyWithImpl<$Res, _$ChangeIndex>
    implements _$$ChangeIndexCopyWith<$Res> {
  __$$ChangeIndexCopyWithImpl(
      _$ChangeIndex _value, $Res Function(_$ChangeIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChangeIndex(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OnboardStateData?,
    ));
  }
}

/// @nodoc

class _$ChangeIndex implements ChangeIndex {
  const _$ChangeIndex({this.data});

  @override
  final OnboardStateData? data;

  @override
  String toString() {
    return 'OnboardState.changeIndex(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeIndex &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeIndexCopyWith<_$ChangeIndex> get copyWith =>
      __$$ChangeIndexCopyWithImpl<_$ChangeIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OnboardStateData? data) initial,
    required TResult Function(OnboardStateData? data) getOnboars,
    required TResult Function(OnboardStateData? data) changeIndex,
    required TResult Function(OnboardStateData? data) updateIndex,
  }) {
    return changeIndex(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OnboardStateData? data)? initial,
    TResult? Function(OnboardStateData? data)? getOnboars,
    TResult? Function(OnboardStateData? data)? changeIndex,
    TResult? Function(OnboardStateData? data)? updateIndex,
  }) {
    return changeIndex?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OnboardStateData? data)? initial,
    TResult Function(OnboardStateData? data)? getOnboars,
    TResult Function(OnboardStateData? data)? changeIndex,
    TResult Function(OnboardStateData? data)? updateIndex,
    required TResult orElse(),
  }) {
    if (changeIndex != null) {
      return changeIndex(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetOnboards value) getOnboars,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(UpdateIndex value) updateIndex,
  }) {
    return changeIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetOnboards value)? getOnboars,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(UpdateIndex value)? updateIndex,
  }) {
    return changeIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetOnboards value)? getOnboars,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(UpdateIndex value)? updateIndex,
    required TResult orElse(),
  }) {
    if (changeIndex != null) {
      return changeIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeIndex implements OnboardState {
  const factory ChangeIndex({final OnboardStateData? data}) = _$ChangeIndex;

  @override
  OnboardStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ChangeIndexCopyWith<_$ChangeIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateIndexCopyWith<$Res>
    implements $OnboardStateCopyWith<$Res> {
  factory _$$UpdateIndexCopyWith(
          _$UpdateIndex value, $Res Function(_$UpdateIndex) then) =
      __$$UpdateIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OnboardStateData? data});

  @override
  $OnboardStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateIndexCopyWithImpl<$Res>
    extends _$OnboardStateCopyWithImpl<$Res, _$UpdateIndex>
    implements _$$UpdateIndexCopyWith<$Res> {
  __$$UpdateIndexCopyWithImpl(
      _$UpdateIndex _value, $Res Function(_$UpdateIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UpdateIndex(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OnboardStateData?,
    ));
  }
}

/// @nodoc

class _$UpdateIndex implements UpdateIndex {
  const _$UpdateIndex({this.data});

  @override
  final OnboardStateData? data;

  @override
  String toString() {
    return 'OnboardState.updateIndex(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateIndex &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateIndexCopyWith<_$UpdateIndex> get copyWith =>
      __$$UpdateIndexCopyWithImpl<_$UpdateIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OnboardStateData? data) initial,
    required TResult Function(OnboardStateData? data) getOnboars,
    required TResult Function(OnboardStateData? data) changeIndex,
    required TResult Function(OnboardStateData? data) updateIndex,
  }) {
    return updateIndex(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OnboardStateData? data)? initial,
    TResult? Function(OnboardStateData? data)? getOnboars,
    TResult? Function(OnboardStateData? data)? changeIndex,
    TResult? Function(OnboardStateData? data)? updateIndex,
  }) {
    return updateIndex?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OnboardStateData? data)? initial,
    TResult Function(OnboardStateData? data)? getOnboars,
    TResult Function(OnboardStateData? data)? changeIndex,
    TResult Function(OnboardStateData? data)? updateIndex,
    required TResult orElse(),
  }) {
    if (updateIndex != null) {
      return updateIndex(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetOnboards value) getOnboars,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(UpdateIndex value) updateIndex,
  }) {
    return updateIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetOnboards value)? getOnboars,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(UpdateIndex value)? updateIndex,
  }) {
    return updateIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetOnboards value)? getOnboars,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(UpdateIndex value)? updateIndex,
    required TResult orElse(),
  }) {
    if (updateIndex != null) {
      return updateIndex(this);
    }
    return orElse();
  }
}

abstract class UpdateIndex implements OnboardState {
  const factory UpdateIndex({final OnboardStateData? data}) = _$UpdateIndex;

  @override
  OnboardStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$UpdateIndexCopyWith<_$UpdateIndex> get copyWith =>
      throw _privateConstructorUsedError;
}
