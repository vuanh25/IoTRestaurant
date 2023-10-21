// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileStateData {
  String get error => throw _privateConstructorUsedError;
  int get success => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  ProfileResponse? get profile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateDataCopyWith<ProfileStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateDataCopyWith<$Res> {
  factory $ProfileStateDataCopyWith(
          ProfileStateData value, $Res Function(ProfileStateData) then) =
      _$ProfileStateDataCopyWithImpl<$Res, ProfileStateData>;
  @useResult
  $Res call({String error, int success, File? image, ProfileResponse? profile});
}

/// @nodoc
class _$ProfileStateDataCopyWithImpl<$Res, $Val extends ProfileStateData>
    implements $ProfileStateDataCopyWith<$Res> {
  _$ProfileStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? success = null,
    Object? image = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileStateDataCopyWith<$Res>
    implements $ProfileStateDataCopyWith<$Res> {
  factory _$$_ProfileStateDataCopyWith(
          _$_ProfileStateData value, $Res Function(_$_ProfileStateData) then) =
      __$$_ProfileStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, int success, File? image, ProfileResponse? profile});
}

/// @nodoc
class __$$_ProfileStateDataCopyWithImpl<$Res>
    extends _$ProfileStateDataCopyWithImpl<$Res, _$_ProfileStateData>
    implements _$$_ProfileStateDataCopyWith<$Res> {
  __$$_ProfileStateDataCopyWithImpl(
      _$_ProfileStateData _value, $Res Function(_$_ProfileStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? success = null,
    Object? image = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$_ProfileStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
    ));
  }
}

/// @nodoc

class _$_ProfileStateData implements _ProfileStateData {
  const _$_ProfileStateData(
      {this.error = '', this.success = 0, this.image, this.profile});

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final int success;
  @override
  final File? image;
  @override
  final ProfileResponse? profile;

  @override
  String toString() {
    return 'ProfileStateData(error: $error, success: $success, image: $image, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, success, image, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateDataCopyWith<_$_ProfileStateData> get copyWith =>
      __$$_ProfileStateDataCopyWithImpl<_$_ProfileStateData>(this, _$identity);
}

abstract class _ProfileStateData implements ProfileStateData {
  const factory _ProfileStateData(
      {final String error,
      final int success,
      final File? image,
      final ProfileResponse? profile}) = _$_ProfileStateData;

  @override
  String get error;
  @override
  int get success;
  @override
  File? get image;
  @override
  ProfileResponse? get profile;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateDataCopyWith<_$_ProfileStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  ProfileStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) error,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) profile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? error,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? profile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? error,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? profile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) profile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? profile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? profile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call({ProfileStateData? data});

  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
              as ProfileStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProfileStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$Initial>
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
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString() {
    return 'ProfileState.initial(data: $data)';
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
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) error,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) profile,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? error,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? profile,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? error,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? profile,
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
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) profile,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? profile,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? profile,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProfileState {
  const factory Initial({final ProfileStateData? data}) = _$Initial;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$Error>
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
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString() {
    return 'ProfileState.error(data: $data)';
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
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) error,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) profile,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? error,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? profile,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? error,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? profile,
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
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) profile,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? profile,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? profile,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ProfileState {
  const factory Error({final ProfileStateData? data}) = _$Error;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$Success>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Success(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString() {
    return 'ProfileState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCopyWith<_$Success> get copyWith =>
      __$$SuccessCopyWithImpl<_$Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) error,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) profile,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? error,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? profile,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? error,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? profile,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) profile,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? profile,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? profile,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements ProfileState {
  const factory Success({final ProfileStateData? data}) = _$Success;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<_$Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImageCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$GetImageCopyWith(
          _$GetImage value, $Res Function(_$GetImage) then) =
      __$$GetImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetImageCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GetImage>
    implements _$$GetImageCopyWith<$Res> {
  __$$GetImageCopyWithImpl(_$GetImage _value, $Res Function(_$GetImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetImage(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$GetImage implements GetImage {
  const _$GetImage({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString() {
    return 'ProfileState.getImage(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImage &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImageCopyWith<_$GetImage> get copyWith =>
      __$$GetImageCopyWithImpl<_$GetImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) error,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) profile,
  }) {
    return getImage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? error,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? profile,
  }) {
    return getImage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? error,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? profile,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) profile,
  }) {
    return getImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? profile,
  }) {
    return getImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? profile,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(this);
    }
    return orElse();
  }
}

abstract class GetImage implements ProfileState {
  const factory GetImage({final ProfileStateData? data}) = _$GetImage;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetImageCopyWith<_$GetImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileCopyWith(_$Profile value, $Res Function(_$Profile) then) =
      __$$ProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStateData? data});

  @override
  $ProfileStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProfileCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$Profile>
    implements _$$ProfileCopyWith<$Res> {
  __$$ProfileCopyWithImpl(_$Profile _value, $Res Function(_$Profile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Profile(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileStateData?,
    ));
  }
}

/// @nodoc

class _$Profile implements Profile {
  const _$Profile({this.data});

  @override
  final ProfileStateData? data;

  @override
  String toString() {
    return 'ProfileState.profile(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Profile &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileCopyWith<_$Profile> get copyWith =>
      __$$ProfileCopyWithImpl<_$Profile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileStateData? data) initial,
    required TResult Function(ProfileStateData? data) error,
    required TResult Function(ProfileStateData? data) success,
    required TResult Function(ProfileStateData? data) getImage,
    required TResult Function(ProfileStateData? data) profile,
  }) {
    return profile(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData? data)? initial,
    TResult? Function(ProfileStateData? data)? error,
    TResult? Function(ProfileStateData? data)? success,
    TResult? Function(ProfileStateData? data)? getImage,
    TResult? Function(ProfileStateData? data)? profile,
  }) {
    return profile?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStateData? data)? initial,
    TResult Function(ProfileStateData? data)? error,
    TResult Function(ProfileStateData? data)? success,
    TResult Function(ProfileStateData? data)? getImage,
    TResult Function(ProfileStateData? data)? profile,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(GetImage value) getImage,
    required TResult Function(Profile value) profile,
  }) {
    return profile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(GetImage value)? getImage,
    TResult? Function(Profile value)? profile,
  }) {
    return profile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(GetImage value)? getImage,
    TResult Function(Profile value)? profile,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile(this);
    }
    return orElse();
  }
}

abstract class Profile implements ProfileState {
  const factory Profile({final ProfileStateData? data}) = _$Profile;

  @override
  ProfileStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProfileCopyWith<_$Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
