// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_table_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddTableOrderStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<ItemProduct> get productsSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTableOrderStateDataCopyWith<AddTableOrderStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTableOrderStateDataCopyWith<$Res> {
  factory $AddTableOrderStateDataCopyWith(AddTableOrderStateData value,
          $Res Function(AddTableOrderStateData) then) =
      _$AddTableOrderStateDataCopyWithImpl<$Res, AddTableOrderStateData>;
  @useResult
  $Res call({StatusType status, List<ItemProduct> productsSelected});
}

/// @nodoc
class _$AddTableOrderStateDataCopyWithImpl<$Res,
        $Val extends AddTableOrderStateData>
    implements $AddTableOrderStateDataCopyWith<$Res> {
  _$AddTableOrderStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? productsSelected = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      productsSelected: null == productsSelected
          ? _value.productsSelected
          : productsSelected // ignore: cast_nullable_to_non_nullable
              as List<ItemProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddTableOrderStateDataCopyWith<$Res>
    implements $AddTableOrderStateDataCopyWith<$Res> {
  factory _$$_AddTableOrderStateDataCopyWith(_$_AddTableOrderStateData value,
          $Res Function(_$_AddTableOrderStateData) then) =
      __$$_AddTableOrderStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusType status, List<ItemProduct> productsSelected});
}

/// @nodoc
class __$$_AddTableOrderStateDataCopyWithImpl<$Res>
    extends _$AddTableOrderStateDataCopyWithImpl<$Res,
        _$_AddTableOrderStateData>
    implements _$$_AddTableOrderStateDataCopyWith<$Res> {
  __$$_AddTableOrderStateDataCopyWithImpl(_$_AddTableOrderStateData _value,
      $Res Function(_$_AddTableOrderStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? productsSelected = null,
  }) {
    return _then(_$_AddTableOrderStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      productsSelected: null == productsSelected
          ? _value._productsSelected
          : productsSelected // ignore: cast_nullable_to_non_nullable
              as List<ItemProduct>,
    ));
  }
}

/// @nodoc

class _$_AddTableOrderStateData implements _AddTableOrderStateData {
  const _$_AddTableOrderStateData(
      {this.status = StatusType.init,
      final List<ItemProduct> productsSelected = const []})
      : _productsSelected = productsSelected;

  @override
  @JsonKey()
  final StatusType status;
  final List<ItemProduct> _productsSelected;
  @override
  @JsonKey()
  List<ItemProduct> get productsSelected {
    if (_productsSelected is EqualUnmodifiableListView)
      return _productsSelected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsSelected);
  }

  @override
  String toString() {
    return 'AddTableOrderStateData(status: $status, productsSelected: $productsSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTableOrderStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._productsSelected, _productsSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_productsSelected));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTableOrderStateDataCopyWith<_$_AddTableOrderStateData> get copyWith =>
      __$$_AddTableOrderStateDataCopyWithImpl<_$_AddTableOrderStateData>(
          this, _$identity);
}

abstract class _AddTableOrderStateData implements AddTableOrderStateData {
  const factory _AddTableOrderStateData(
      {final StatusType status,
      final List<ItemProduct> productsSelected}) = _$_AddTableOrderStateData;

  @override
  StatusType get status;
  @override
  List<ItemProduct> get productsSelected;
  @override
  @JsonKey(ignore: true)
  _$$_AddTableOrderStateDataCopyWith<_$_AddTableOrderStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddTableOrderState {
  AddTableOrderStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddTableOrderStateData? data) initial,
    required TResult Function(AddTableOrderStateData? data) status,
    required TResult Function(AddTableOrderStateData? data) addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddTableOrderStateData? data)? initial,
    TResult? Function(AddTableOrderStateData? data)? status,
    TResult? Function(AddTableOrderStateData? data)? addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddTableOrderStateData? data)? initial,
    TResult Function(AddTableOrderStateData? data)? status,
    TResult Function(AddTableOrderStateData? data)? addOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(AddOrder value) addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(AddOrder value)? addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(AddOrder value)? addOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTableOrderStateCopyWith<AddTableOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTableOrderStateCopyWith<$Res> {
  factory $AddTableOrderStateCopyWith(
          AddTableOrderState value, $Res Function(AddTableOrderState) then) =
      _$AddTableOrderStateCopyWithImpl<$Res, AddTableOrderState>;
  @useResult
  $Res call({AddTableOrderStateData? data});

  $AddTableOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddTableOrderStateCopyWithImpl<$Res, $Val extends AddTableOrderState>
    implements $AddTableOrderStateCopyWith<$Res> {
  _$AddTableOrderStateCopyWithImpl(this._value, this._then);

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
              as AddTableOrderStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddTableOrderStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddTableOrderStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $AddTableOrderStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddTableOrderStateData? data});

  @override
  $AddTableOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddTableOrderStateCopyWithImpl<$Res, _$Initial>
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
              as AddTableOrderStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final AddTableOrderStateData? data;

  @override
  String toString() {
    return 'AddTableOrderState.initial(data: $data)';
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
    required TResult Function(AddTableOrderStateData? data) initial,
    required TResult Function(AddTableOrderStateData? data) status,
    required TResult Function(AddTableOrderStateData? data) addOrder,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddTableOrderStateData? data)? initial,
    TResult? Function(AddTableOrderStateData? data)? status,
    TResult? Function(AddTableOrderStateData? data)? addOrder,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddTableOrderStateData? data)? initial,
    TResult Function(AddTableOrderStateData? data)? status,
    TResult Function(AddTableOrderStateData? data)? addOrder,
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
    required TResult Function(AddOrder value) addOrder,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(AddOrder value)? addOrder,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(AddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddTableOrderState {
  const factory Initial({final AddTableOrderStateData? data}) = _$Initial;

  @override
  AddTableOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $AddTableOrderStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddTableOrderStateData? data});

  @override
  $AddTableOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$AddTableOrderStateCopyWithImpl<$Res, _$Status>
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
              as AddTableOrderStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final AddTableOrderStateData? data;

  @override
  String toString() {
    return 'AddTableOrderState.status(data: $data)';
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
    required TResult Function(AddTableOrderStateData? data) initial,
    required TResult Function(AddTableOrderStateData? data) status,
    required TResult Function(AddTableOrderStateData? data) addOrder,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddTableOrderStateData? data)? initial,
    TResult? Function(AddTableOrderStateData? data)? status,
    TResult? Function(AddTableOrderStateData? data)? addOrder,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddTableOrderStateData? data)? initial,
    TResult Function(AddTableOrderStateData? data)? status,
    TResult Function(AddTableOrderStateData? data)? addOrder,
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
    required TResult Function(AddOrder value) addOrder,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(AddOrder value)? addOrder,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(AddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements AddTableOrderState {
  const factory Status({final AddTableOrderStateData? data}) = _$Status;

  @override
  AddTableOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddOrderCopyWith<$Res>
    implements $AddTableOrderStateCopyWith<$Res> {
  factory _$$AddOrderCopyWith(
          _$AddOrder value, $Res Function(_$AddOrder) then) =
      __$$AddOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddTableOrderStateData? data});

  @override
  $AddTableOrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AddOrderCopyWithImpl<$Res>
    extends _$AddTableOrderStateCopyWithImpl<$Res, _$AddOrder>
    implements _$$AddOrderCopyWith<$Res> {
  __$$AddOrderCopyWithImpl(_$AddOrder _value, $Res Function(_$AddOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AddOrder(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddTableOrderStateData?,
    ));
  }
}

/// @nodoc

class _$AddOrder implements AddOrder {
  const _$AddOrder({this.data});

  @override
  final AddTableOrderStateData? data;

  @override
  String toString() {
    return 'AddTableOrderState.addOrder(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrder &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrderCopyWith<_$AddOrder> get copyWith =>
      __$$AddOrderCopyWithImpl<_$AddOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddTableOrderStateData? data) initial,
    required TResult Function(AddTableOrderStateData? data) status,
    required TResult Function(AddTableOrderStateData? data) addOrder,
  }) {
    return addOrder(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddTableOrderStateData? data)? initial,
    TResult? Function(AddTableOrderStateData? data)? status,
    TResult? Function(AddTableOrderStateData? data)? addOrder,
  }) {
    return addOrder?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddTableOrderStateData? data)? initial,
    TResult Function(AddTableOrderStateData? data)? status,
    TResult Function(AddTableOrderStateData? data)? addOrder,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(AddOrder value) addOrder,
  }) {
    return addOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(AddOrder value)? addOrder,
  }) {
    return addOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(AddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(this);
    }
    return orElse();
  }
}

abstract class AddOrder implements AddTableOrderState {
  const factory AddOrder({final AddTableOrderStateData? data}) = _$AddOrder;

  @override
  AddTableOrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$AddOrderCopyWith<_$AddOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
