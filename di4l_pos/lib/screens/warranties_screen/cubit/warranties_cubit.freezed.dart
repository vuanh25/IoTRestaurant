// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warranties_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WarrantiesStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<Warranty> get warranties => throw _privateConstructorUsedError;
  Warranty? get warranty => throw _privateConstructorUsedError;
  List<Warranty> get warrantiesOriginal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WarrantiesStateDataCopyWith<WarrantiesStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarrantiesStateDataCopyWith<$Res> {
  factory $WarrantiesStateDataCopyWith(
          WarrantiesStateData value, $Res Function(WarrantiesStateData) then) =
      _$WarrantiesStateDataCopyWithImpl<$Res, WarrantiesStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<Warranty> warranties,
      Warranty? warranty,
      List<Warranty> warrantiesOriginal});
}

/// @nodoc
class _$WarrantiesStateDataCopyWithImpl<$Res, $Val extends WarrantiesStateData>
    implements $WarrantiesStateDataCopyWith<$Res> {
  _$WarrantiesStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? warranties = null,
    Object? warranty = freezed,
    Object? warrantiesOriginal = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      warranties: null == warranties
          ? _value.warranties
          : warranties // ignore: cast_nullable_to_non_nullable
              as List<Warranty>,
      warranty: freezed == warranty
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as Warranty?,
      warrantiesOriginal: null == warrantiesOriginal
          ? _value.warrantiesOriginal
          : warrantiesOriginal // ignore: cast_nullable_to_non_nullable
              as List<Warranty>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WarrantiesStateDataCopyWith<$Res>
    implements $WarrantiesStateDataCopyWith<$Res> {
  factory _$$_WarrantiesStateDataCopyWith(_$_WarrantiesStateData value,
          $Res Function(_$_WarrantiesStateData) then) =
      __$$_WarrantiesStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<Warranty> warranties,
      Warranty? warranty,
      List<Warranty> warrantiesOriginal});
}

/// @nodoc
class __$$_WarrantiesStateDataCopyWithImpl<$Res>
    extends _$WarrantiesStateDataCopyWithImpl<$Res, _$_WarrantiesStateData>
    implements _$$_WarrantiesStateDataCopyWith<$Res> {
  __$$_WarrantiesStateDataCopyWithImpl(_$_WarrantiesStateData _value,
      $Res Function(_$_WarrantiesStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? warranties = null,
    Object? warranty = freezed,
    Object? warrantiesOriginal = null,
  }) {
    return _then(_$_WarrantiesStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      warranties: null == warranties
          ? _value._warranties
          : warranties // ignore: cast_nullable_to_non_nullable
              as List<Warranty>,
      warranty: freezed == warranty
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as Warranty?,
      warrantiesOriginal: null == warrantiesOriginal
          ? _value._warrantiesOriginal
          : warrantiesOriginal // ignore: cast_nullable_to_non_nullable
              as List<Warranty>,
    ));
  }
}

/// @nodoc

class _$_WarrantiesStateData implements _WarrantiesStateData {
  const _$_WarrantiesStateData(
      {this.status = StatusType.init,
      final List<Warranty> warranties = const [],
      this.warranty,
      final List<Warranty> warrantiesOriginal = const []})
      : _warranties = warranties,
        _warrantiesOriginal = warrantiesOriginal;

  @override
  @JsonKey()
  final StatusType status;
  final List<Warranty> _warranties;
  @override
  @JsonKey()
  List<Warranty> get warranties {
    if (_warranties is EqualUnmodifiableListView) return _warranties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_warranties);
  }

  @override
  final Warranty? warranty;
  final List<Warranty> _warrantiesOriginal;
  @override
  @JsonKey()
  List<Warranty> get warrantiesOriginal {
    if (_warrantiesOriginal is EqualUnmodifiableListView)
      return _warrantiesOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_warrantiesOriginal);
  }

  @override
  String toString() {
    return 'WarrantiesStateData(status: $status, warranties: $warranties, warranty: $warranty, warrantiesOriginal: $warrantiesOriginal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WarrantiesStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._warranties, _warranties) &&
            (identical(other.warranty, warranty) ||
                other.warranty == warranty) &&
            const DeepCollectionEquality()
                .equals(other._warrantiesOriginal, _warrantiesOriginal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_warranties),
      warranty,
      const DeepCollectionEquality().hash(_warrantiesOriginal));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WarrantiesStateDataCopyWith<_$_WarrantiesStateData> get copyWith =>
      __$$_WarrantiesStateDataCopyWithImpl<_$_WarrantiesStateData>(
          this, _$identity);
}

abstract class _WarrantiesStateData implements WarrantiesStateData {
  const factory _WarrantiesStateData(
      {final StatusType status,
      final List<Warranty> warranties,
      final Warranty? warranty,
      final List<Warranty> warrantiesOriginal}) = _$_WarrantiesStateData;

  @override
  StatusType get status;
  @override
  List<Warranty> get warranties;
  @override
  Warranty? get warranty;
  @override
  List<Warranty> get warrantiesOriginal;
  @override
  @JsonKey(ignore: true)
  _$$_WarrantiesStateDataCopyWith<_$_WarrantiesStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WarrantiesState {
  WarrantiesStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WarrantiesStateData? data) initial,
    required TResult Function(WarrantiesStateData? data) status,
    required TResult Function(WarrantiesStateData? data) getWarranties,
    required TResult Function(WarrantiesStateData? data) getWarranty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WarrantiesStateData? data)? initial,
    TResult? Function(WarrantiesStateData? data)? status,
    TResult? Function(WarrantiesStateData? data)? getWarranties,
    TResult? Function(WarrantiesStateData? data)? getWarranty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WarrantiesStateData? data)? initial,
    TResult Function(WarrantiesStateData? data)? status,
    TResult Function(WarrantiesStateData? data)? getWarranties,
    TResult Function(WarrantiesStateData? data)? getWarranty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetWarranties value) getWarranties,
    required TResult Function(GetWarranty value) getWarranty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetWarranties value)? getWarranties,
    TResult? Function(GetWarranty value)? getWarranty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetWarranties value)? getWarranties,
    TResult Function(GetWarranty value)? getWarranty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WarrantiesStateCopyWith<WarrantiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarrantiesStateCopyWith<$Res> {
  factory $WarrantiesStateCopyWith(
          WarrantiesState value, $Res Function(WarrantiesState) then) =
      _$WarrantiesStateCopyWithImpl<$Res, WarrantiesState>;
  @useResult
  $Res call({WarrantiesStateData? data});

  $WarrantiesStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$WarrantiesStateCopyWithImpl<$Res, $Val extends WarrantiesState>
    implements $WarrantiesStateCopyWith<$Res> {
  _$WarrantiesStateCopyWithImpl(this._value, this._then);

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
              as WarrantiesStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WarrantiesStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WarrantiesStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $WarrantiesStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WarrantiesStateData? data});

  @override
  $WarrantiesStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$WarrantiesStateCopyWithImpl<$Res, _$Initial>
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
              as WarrantiesStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final WarrantiesStateData? data;

  @override
  String toString() {
    return 'WarrantiesState.initial(data: $data)';
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
    required TResult Function(WarrantiesStateData? data) initial,
    required TResult Function(WarrantiesStateData? data) status,
    required TResult Function(WarrantiesStateData? data) getWarranties,
    required TResult Function(WarrantiesStateData? data) getWarranty,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WarrantiesStateData? data)? initial,
    TResult? Function(WarrantiesStateData? data)? status,
    TResult? Function(WarrantiesStateData? data)? getWarranties,
    TResult? Function(WarrantiesStateData? data)? getWarranty,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WarrantiesStateData? data)? initial,
    TResult Function(WarrantiesStateData? data)? status,
    TResult Function(WarrantiesStateData? data)? getWarranties,
    TResult Function(WarrantiesStateData? data)? getWarranty,
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
    required TResult Function(GetWarranties value) getWarranties,
    required TResult Function(GetWarranty value) getWarranty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetWarranties value)? getWarranties,
    TResult? Function(GetWarranty value)? getWarranty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetWarranties value)? getWarranties,
    TResult Function(GetWarranty value)? getWarranty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements WarrantiesState {
  const factory Initial({final WarrantiesStateData? data}) = _$Initial;

  @override
  WarrantiesStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $WarrantiesStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WarrantiesStateData? data});

  @override
  $WarrantiesStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$WarrantiesStateCopyWithImpl<$Res, _$Status>
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
              as WarrantiesStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final WarrantiesStateData? data;

  @override
  String toString() {
    return 'WarrantiesState.status(data: $data)';
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
    required TResult Function(WarrantiesStateData? data) initial,
    required TResult Function(WarrantiesStateData? data) status,
    required TResult Function(WarrantiesStateData? data) getWarranties,
    required TResult Function(WarrantiesStateData? data) getWarranty,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WarrantiesStateData? data)? initial,
    TResult? Function(WarrantiesStateData? data)? status,
    TResult? Function(WarrantiesStateData? data)? getWarranties,
    TResult? Function(WarrantiesStateData? data)? getWarranty,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WarrantiesStateData? data)? initial,
    TResult Function(WarrantiesStateData? data)? status,
    TResult Function(WarrantiesStateData? data)? getWarranties,
    TResult Function(WarrantiesStateData? data)? getWarranty,
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
    required TResult Function(GetWarranties value) getWarranties,
    required TResult Function(GetWarranty value) getWarranty,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetWarranties value)? getWarranties,
    TResult? Function(GetWarranty value)? getWarranty,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetWarranties value)? getWarranties,
    TResult Function(GetWarranty value)? getWarranty,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements WarrantiesState {
  const factory Status({final WarrantiesStateData? data}) = _$Status;

  @override
  WarrantiesStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWarrantiesCopyWith<$Res>
    implements $WarrantiesStateCopyWith<$Res> {
  factory _$$GetWarrantiesCopyWith(
          _$GetWarranties value, $Res Function(_$GetWarranties) then) =
      __$$GetWarrantiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WarrantiesStateData? data});

  @override
  $WarrantiesStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetWarrantiesCopyWithImpl<$Res>
    extends _$WarrantiesStateCopyWithImpl<$Res, _$GetWarranties>
    implements _$$GetWarrantiesCopyWith<$Res> {
  __$$GetWarrantiesCopyWithImpl(
      _$GetWarranties _value, $Res Function(_$GetWarranties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetWarranties(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WarrantiesStateData?,
    ));
  }
}

/// @nodoc

class _$GetWarranties implements GetWarranties {
  const _$GetWarranties({this.data});

  @override
  final WarrantiesStateData? data;

  @override
  String toString() {
    return 'WarrantiesState.getWarranties(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWarranties &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWarrantiesCopyWith<_$GetWarranties> get copyWith =>
      __$$GetWarrantiesCopyWithImpl<_$GetWarranties>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WarrantiesStateData? data) initial,
    required TResult Function(WarrantiesStateData? data) status,
    required TResult Function(WarrantiesStateData? data) getWarranties,
    required TResult Function(WarrantiesStateData? data) getWarranty,
  }) {
    return getWarranties(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WarrantiesStateData? data)? initial,
    TResult? Function(WarrantiesStateData? data)? status,
    TResult? Function(WarrantiesStateData? data)? getWarranties,
    TResult? Function(WarrantiesStateData? data)? getWarranty,
  }) {
    return getWarranties?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WarrantiesStateData? data)? initial,
    TResult Function(WarrantiesStateData? data)? status,
    TResult Function(WarrantiesStateData? data)? getWarranties,
    TResult Function(WarrantiesStateData? data)? getWarranty,
    required TResult orElse(),
  }) {
    if (getWarranties != null) {
      return getWarranties(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetWarranties value) getWarranties,
    required TResult Function(GetWarranty value) getWarranty,
  }) {
    return getWarranties(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetWarranties value)? getWarranties,
    TResult? Function(GetWarranty value)? getWarranty,
  }) {
    return getWarranties?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetWarranties value)? getWarranties,
    TResult Function(GetWarranty value)? getWarranty,
    required TResult orElse(),
  }) {
    if (getWarranties != null) {
      return getWarranties(this);
    }
    return orElse();
  }
}

abstract class GetWarranties implements WarrantiesState {
  const factory GetWarranties({final WarrantiesStateData? data}) =
      _$GetWarranties;

  @override
  WarrantiesStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetWarrantiesCopyWith<_$GetWarranties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWarrantyCopyWith<$Res>
    implements $WarrantiesStateCopyWith<$Res> {
  factory _$$GetWarrantyCopyWith(
          _$GetWarranty value, $Res Function(_$GetWarranty) then) =
      __$$GetWarrantyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WarrantiesStateData? data});

  @override
  $WarrantiesStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetWarrantyCopyWithImpl<$Res>
    extends _$WarrantiesStateCopyWithImpl<$Res, _$GetWarranty>
    implements _$$GetWarrantyCopyWith<$Res> {
  __$$GetWarrantyCopyWithImpl(
      _$GetWarranty _value, $Res Function(_$GetWarranty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetWarranty(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WarrantiesStateData?,
    ));
  }
}

/// @nodoc

class _$GetWarranty implements GetWarranty {
  const _$GetWarranty({this.data});

  @override
  final WarrantiesStateData? data;

  @override
  String toString() {
    return 'WarrantiesState.getWarranty(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWarranty &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWarrantyCopyWith<_$GetWarranty> get copyWith =>
      __$$GetWarrantyCopyWithImpl<_$GetWarranty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WarrantiesStateData? data) initial,
    required TResult Function(WarrantiesStateData? data) status,
    required TResult Function(WarrantiesStateData? data) getWarranties,
    required TResult Function(WarrantiesStateData? data) getWarranty,
  }) {
    return getWarranty(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WarrantiesStateData? data)? initial,
    TResult? Function(WarrantiesStateData? data)? status,
    TResult? Function(WarrantiesStateData? data)? getWarranties,
    TResult? Function(WarrantiesStateData? data)? getWarranty,
  }) {
    return getWarranty?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WarrantiesStateData? data)? initial,
    TResult Function(WarrantiesStateData? data)? status,
    TResult Function(WarrantiesStateData? data)? getWarranties,
    TResult Function(WarrantiesStateData? data)? getWarranty,
    required TResult orElse(),
  }) {
    if (getWarranty != null) {
      return getWarranty(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetWarranties value) getWarranties,
    required TResult Function(GetWarranty value) getWarranty,
  }) {
    return getWarranty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetWarranties value)? getWarranties,
    TResult? Function(GetWarranty value)? getWarranty,
  }) {
    return getWarranty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetWarranties value)? getWarranties,
    TResult Function(GetWarranty value)? getWarranty,
    required TResult orElse(),
  }) {
    if (getWarranty != null) {
      return getWarranty(this);
    }
    return orElse();
  }
}

abstract class GetWarranty implements WarrantiesState {
  const factory GetWarranty({final WarrantiesStateData? data}) = _$GetWarranty;

  @override
  WarrantiesStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetWarrantyCopyWith<_$GetWarranty> get copyWith =>
      throw _privateConstructorUsedError;
}
