// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suppliers_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SuppliersStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<ContactModel> get suppliers => throw _privateConstructorUsedError;
  List<ContactModel> get suppliersOriginal =>
      throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  ContactModel? get contactModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuppliersStateDataCopyWith<SuppliersStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuppliersStateDataCopyWith<$Res> {
  factory $SuppliersStateDataCopyWith(
          SuppliersStateData value, $Res Function(SuppliersStateData) then) =
      _$SuppliersStateDataCopyWithImpl<$Res, SuppliersStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<ContactModel> suppliers,
      List<ContactModel> suppliersOriginal,
      int? page,
      ContactModel? contactModel});
}

/// @nodoc
class _$SuppliersStateDataCopyWithImpl<$Res, $Val extends SuppliersStateData>
    implements $SuppliersStateDataCopyWith<$Res> {
  _$SuppliersStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? suppliers = null,
    Object? suppliersOriginal = null,
    Object? page = freezed,
    Object? contactModel = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      suppliers: null == suppliers
          ? _value.suppliers
          : suppliers // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
      suppliersOriginal: null == suppliersOriginal
          ? _value.suppliersOriginal
          : suppliersOriginal // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      contactModel: freezed == contactModel
          ? _value.contactModel
          : contactModel // ignore: cast_nullable_to_non_nullable
              as ContactModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SuppliersStateDataCopyWith<$Res>
    implements $SuppliersStateDataCopyWith<$Res> {
  factory _$$_SuppliersStateDataCopyWith(_$_SuppliersStateData value,
          $Res Function(_$_SuppliersStateData) then) =
      __$$_SuppliersStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<ContactModel> suppliers,
      List<ContactModel> suppliersOriginal,
      int? page,
      ContactModel? contactModel});
}

/// @nodoc
class __$$_SuppliersStateDataCopyWithImpl<$Res>
    extends _$SuppliersStateDataCopyWithImpl<$Res, _$_SuppliersStateData>
    implements _$$_SuppliersStateDataCopyWith<$Res> {
  __$$_SuppliersStateDataCopyWithImpl(
      _$_SuppliersStateData _value, $Res Function(_$_SuppliersStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? suppliers = null,
    Object? suppliersOriginal = null,
    Object? page = freezed,
    Object? contactModel = freezed,
  }) {
    return _then(_$_SuppliersStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      suppliers: null == suppliers
          ? _value._suppliers
          : suppliers // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
      suppliersOriginal: null == suppliersOriginal
          ? _value._suppliersOriginal
          : suppliersOriginal // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      contactModel: freezed == contactModel
          ? _value.contactModel
          : contactModel // ignore: cast_nullable_to_non_nullable
              as ContactModel?,
    ));
  }
}

/// @nodoc

class _$_SuppliersStateData implements _SuppliersStateData {
  const _$_SuppliersStateData(
      {this.status = StatusType.init,
      final List<ContactModel> suppliers = const [],
      final List<ContactModel> suppliersOriginal = const [],
      this.page = 0,
      this.contactModel})
      : _suppliers = suppliers,
        _suppliersOriginal = suppliersOriginal;

  @override
  @JsonKey()
  final StatusType status;
  final List<ContactModel> _suppliers;
  @override
  @JsonKey()
  List<ContactModel> get suppliers {
    if (_suppliers is EqualUnmodifiableListView) return _suppliers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suppliers);
  }

  final List<ContactModel> _suppliersOriginal;
  @override
  @JsonKey()
  List<ContactModel> get suppliersOriginal {
    if (_suppliersOriginal is EqualUnmodifiableListView)
      return _suppliersOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suppliersOriginal);
  }

  @override
  @JsonKey()
  final int? page;
  @override
  final ContactModel? contactModel;

  @override
  String toString() {
    return 'SuppliersStateData(status: $status, suppliers: $suppliers, suppliersOriginal: $suppliersOriginal, page: $page, contactModel: $contactModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuppliersStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._suppliers, _suppliers) &&
            const DeepCollectionEquality()
                .equals(other._suppliersOriginal, _suppliersOriginal) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.contactModel, contactModel) ||
                other.contactModel == contactModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_suppliers),
      const DeepCollectionEquality().hash(_suppliersOriginal),
      page,
      contactModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuppliersStateDataCopyWith<_$_SuppliersStateData> get copyWith =>
      __$$_SuppliersStateDataCopyWithImpl<_$_SuppliersStateData>(
          this, _$identity);
}

abstract class _SuppliersStateData implements SuppliersStateData {
  const factory _SuppliersStateData(
      {final StatusType status,
      final List<ContactModel> suppliers,
      final List<ContactModel> suppliersOriginal,
      final int? page,
      final ContactModel? contactModel}) = _$_SuppliersStateData;

  @override
  StatusType get status;
  @override
  List<ContactModel> get suppliers;
  @override
  List<ContactModel> get suppliersOriginal;
  @override
  int? get page;
  @override
  ContactModel? get contactModel;
  @override
  @JsonKey(ignore: true)
  _$$_SuppliersStateDataCopyWith<_$_SuppliersStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SuppliersState {
  SuppliersStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuppliersStateData? data) initial,
    required TResult Function(SuppliersStateData? data) status,
    required TResult Function(SuppliersStateData? data) getSuppliers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SuppliersStateData? data)? initial,
    TResult? Function(SuppliersStateData? data)? status,
    TResult? Function(SuppliersStateData? data)? getSuppliers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuppliersStateData? data)? initial,
    TResult Function(SuppliersStateData? data)? status,
    TResult Function(SuppliersStateData? data)? getSuppliers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetSuppliers value) getSuppliers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetSuppliers value)? getSuppliers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetSuppliers value)? getSuppliers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuppliersStateCopyWith<SuppliersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuppliersStateCopyWith<$Res> {
  factory $SuppliersStateCopyWith(
          SuppliersState value, $Res Function(SuppliersState) then) =
      _$SuppliersStateCopyWithImpl<$Res, SuppliersState>;
  @useResult
  $Res call({SuppliersStateData? data});

  $SuppliersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SuppliersStateCopyWithImpl<$Res, $Val extends SuppliersState>
    implements $SuppliersStateCopyWith<$Res> {
  _$SuppliersStateCopyWithImpl(this._value, this._then);

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
              as SuppliersStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SuppliersStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SuppliersStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $SuppliersStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SuppliersStateData? data});

  @override
  $SuppliersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$SuppliersStateCopyWithImpl<$Res, _$Initial>
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
              as SuppliersStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final SuppliersStateData? data;

  @override
  String toString() {
    return 'SuppliersState.initial(data: $data)';
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
    required TResult Function(SuppliersStateData? data) initial,
    required TResult Function(SuppliersStateData? data) status,
    required TResult Function(SuppliersStateData? data) getSuppliers,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SuppliersStateData? data)? initial,
    TResult? Function(SuppliersStateData? data)? status,
    TResult? Function(SuppliersStateData? data)? getSuppliers,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuppliersStateData? data)? initial,
    TResult Function(SuppliersStateData? data)? status,
    TResult Function(SuppliersStateData? data)? getSuppliers,
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
    required TResult Function(GetSuppliers value) getSuppliers,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetSuppliers value)? getSuppliers,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetSuppliers value)? getSuppliers,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SuppliersState {
  const factory Initial({final SuppliersStateData? data}) = _$Initial;

  @override
  SuppliersStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $SuppliersStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SuppliersStateData? data});

  @override
  $SuppliersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$SuppliersStateCopyWithImpl<$Res, _$Status>
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
              as SuppliersStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final SuppliersStateData? data;

  @override
  String toString() {
    return 'SuppliersState.status(data: $data)';
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
    required TResult Function(SuppliersStateData? data) initial,
    required TResult Function(SuppliersStateData? data) status,
    required TResult Function(SuppliersStateData? data) getSuppliers,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SuppliersStateData? data)? initial,
    TResult? Function(SuppliersStateData? data)? status,
    TResult? Function(SuppliersStateData? data)? getSuppliers,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuppliersStateData? data)? initial,
    TResult Function(SuppliersStateData? data)? status,
    TResult Function(SuppliersStateData? data)? getSuppliers,
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
    required TResult Function(GetSuppliers value) getSuppliers,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetSuppliers value)? getSuppliers,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetSuppliers value)? getSuppliers,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements SuppliersState {
  const factory Status({final SuppliersStateData? data}) = _$Status;

  @override
  SuppliersStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSuppliersCopyWith<$Res>
    implements $SuppliersStateCopyWith<$Res> {
  factory _$$GetSuppliersCopyWith(
          _$GetSuppliers value, $Res Function(_$GetSuppliers) then) =
      __$$GetSuppliersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SuppliersStateData? data});

  @override
  $SuppliersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetSuppliersCopyWithImpl<$Res>
    extends _$SuppliersStateCopyWithImpl<$Res, _$GetSuppliers>
    implements _$$GetSuppliersCopyWith<$Res> {
  __$$GetSuppliersCopyWithImpl(
      _$GetSuppliers _value, $Res Function(_$GetSuppliers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetSuppliers(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SuppliersStateData?,
    ));
  }
}

/// @nodoc

class _$GetSuppliers implements GetSuppliers {
  const _$GetSuppliers({this.data});

  @override
  final SuppliersStateData? data;

  @override
  String toString() {
    return 'SuppliersState.getSuppliers(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSuppliers &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSuppliersCopyWith<_$GetSuppliers> get copyWith =>
      __$$GetSuppliersCopyWithImpl<_$GetSuppliers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuppliersStateData? data) initial,
    required TResult Function(SuppliersStateData? data) status,
    required TResult Function(SuppliersStateData? data) getSuppliers,
  }) {
    return getSuppliers(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SuppliersStateData? data)? initial,
    TResult? Function(SuppliersStateData? data)? status,
    TResult? Function(SuppliersStateData? data)? getSuppliers,
  }) {
    return getSuppliers?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuppliersStateData? data)? initial,
    TResult Function(SuppliersStateData? data)? status,
    TResult Function(SuppliersStateData? data)? getSuppliers,
    required TResult orElse(),
  }) {
    if (getSuppliers != null) {
      return getSuppliers(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetSuppliers value) getSuppliers,
  }) {
    return getSuppliers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetSuppliers value)? getSuppliers,
  }) {
    return getSuppliers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetSuppliers value)? getSuppliers,
    required TResult orElse(),
  }) {
    if (getSuppliers != null) {
      return getSuppliers(this);
    }
    return orElse();
  }
}

abstract class GetSuppliers implements SuppliersState {
  const factory GetSuppliers({final SuppliersStateData? data}) = _$GetSuppliers;

  @override
  SuppliersStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetSuppliersCopyWith<_$GetSuppliers> get copyWith =>
      throw _privateConstructorUsedError;
}
