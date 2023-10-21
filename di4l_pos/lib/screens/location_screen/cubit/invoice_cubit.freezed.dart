// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InvoiceData {
  List<InvoiceSchema> get invoices => throw _privateConstructorUsedError;
  List<InvoiceSchema> get originalInvoices =>
      throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  InvoiceSchema? get invoice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceDataCopyWith<InvoiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDataCopyWith<$Res> {
  factory $InvoiceDataCopyWith(
          InvoiceData value, $Res Function(InvoiceData) then) =
      _$InvoiceDataCopyWithImpl<$Res, InvoiceData>;
  @useResult
  $Res call(
      {List<InvoiceSchema> invoices,
      List<InvoiceSchema> originalInvoices,
      StatusType status,
      String error,
      bool isSearching,
      InvoiceSchema? invoice});
}

/// @nodoc
class _$InvoiceDataCopyWithImpl<$Res, $Val extends InvoiceData>
    implements $InvoiceDataCopyWith<$Res> {
  _$InvoiceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoices = null,
    Object? originalInvoices = null,
    Object? status = null,
    Object? error = null,
    Object? isSearching = null,
    Object? invoice = freezed,
  }) {
    return _then(_value.copyWith(
      invoices: null == invoices
          ? _value.invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as List<InvoiceSchema>,
      originalInvoices: null == originalInvoices
          ? _value.originalInvoices
          : originalInvoices // ignore: cast_nullable_to_non_nullable
              as List<InvoiceSchema>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as InvoiceSchema?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoiceDataCopyWith<$Res>
    implements $InvoiceDataCopyWith<$Res> {
  factory _$$_InvoiceDataCopyWith(
          _$_InvoiceData value, $Res Function(_$_InvoiceData) then) =
      __$$_InvoiceDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<InvoiceSchema> invoices,
      List<InvoiceSchema> originalInvoices,
      StatusType status,
      String error,
      bool isSearching,
      InvoiceSchema? invoice});
}

/// @nodoc
class __$$_InvoiceDataCopyWithImpl<$Res>
    extends _$InvoiceDataCopyWithImpl<$Res, _$_InvoiceData>
    implements _$$_InvoiceDataCopyWith<$Res> {
  __$$_InvoiceDataCopyWithImpl(
      _$_InvoiceData _value, $Res Function(_$_InvoiceData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoices = null,
    Object? originalInvoices = null,
    Object? status = null,
    Object? error = null,
    Object? isSearching = null,
    Object? invoice = freezed,
  }) {
    return _then(_$_InvoiceData(
      invoices: null == invoices
          ? _value._invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as List<InvoiceSchema>,
      originalInvoices: null == originalInvoices
          ? _value._originalInvoices
          : originalInvoices // ignore: cast_nullable_to_non_nullable
              as List<InvoiceSchema>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as InvoiceSchema?,
    ));
  }
}

/// @nodoc

class _$_InvoiceData implements _InvoiceData {
  const _$_InvoiceData(
      {final List<InvoiceSchema> invoices = const [],
      final List<InvoiceSchema> originalInvoices = const [],
      this.status = StatusType.init,
      this.error = '',
      this.isSearching = false,
      this.invoice})
      : _invoices = invoices,
        _originalInvoices = originalInvoices;

  final List<InvoiceSchema> _invoices;
  @override
  @JsonKey()
  List<InvoiceSchema> get invoices {
    if (_invoices is EqualUnmodifiableListView) return _invoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invoices);
  }

  final List<InvoiceSchema> _originalInvoices;
  @override
  @JsonKey()
  List<InvoiceSchema> get originalInvoices {
    if (_originalInvoices is EqualUnmodifiableListView)
      return _originalInvoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_originalInvoices);
  }

  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final bool isSearching;
  @override
  final InvoiceSchema? invoice;

  @override
  String toString() {
    return 'InvoiceData(invoices: $invoices, originalInvoices: $originalInvoices, status: $status, error: $error, isSearching: $isSearching, invoice: $invoice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceData &&
            const DeepCollectionEquality().equals(other._invoices, _invoices) &&
            const DeepCollectionEquality()
                .equals(other._originalInvoices, _originalInvoices) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.invoice, invoice) || other.invoice == invoice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_invoices),
      const DeepCollectionEquality().hash(_originalInvoices),
      status,
      error,
      isSearching,
      invoice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceDataCopyWith<_$_InvoiceData> get copyWith =>
      __$$_InvoiceDataCopyWithImpl<_$_InvoiceData>(this, _$identity);
}

abstract class _InvoiceData implements InvoiceData {
  const factory _InvoiceData(
      {final List<InvoiceSchema> invoices,
      final List<InvoiceSchema> originalInvoices,
      final StatusType status,
      final String error,
      final bool isSearching,
      final InvoiceSchema? invoice}) = _$_InvoiceData;

  @override
  List<InvoiceSchema> get invoices;
  @override
  List<InvoiceSchema> get originalInvoices;
  @override
  StatusType get status;
  @override
  String get error;
  @override
  bool get isSearching;
  @override
  InvoiceSchema? get invoice;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceDataCopyWith<_$_InvoiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InvoiceState {
  InvoiceData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InvoiceData? data) initial,
    required TResult Function(InvoiceData? data) getInvoices,
    required TResult Function(InvoiceData? data) getInvoice,
    required TResult Function(InvoiceData? data) setInvoice,
    required TResult Function(InvoiceData? data) isSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InvoiceData? data)? initial,
    TResult? Function(InvoiceData? data)? getInvoices,
    TResult? Function(InvoiceData? data)? getInvoice,
    TResult? Function(InvoiceData? data)? setInvoice,
    TResult? Function(InvoiceData? data)? isSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InvoiceData? data)? initial,
    TResult Function(InvoiceData? data)? getInvoices,
    TResult Function(InvoiceData? data)? getInvoice,
    TResult Function(InvoiceData? data)? setInvoice,
    TResult Function(InvoiceData? data)? isSearching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetInvoices value) getInvoices,
    required TResult Function(GetInvoice value) getInvoice,
    required TResult Function(SetInvoice value) setInvoice,
    required TResult Function(IsSearching value) isSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetInvoices value)? getInvoices,
    TResult? Function(GetInvoice value)? getInvoice,
    TResult? Function(SetInvoice value)? setInvoice,
    TResult? Function(IsSearching value)? isSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetInvoices value)? getInvoices,
    TResult Function(GetInvoice value)? getInvoice,
    TResult Function(SetInvoice value)? setInvoice,
    TResult Function(IsSearching value)? isSearching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceStateCopyWith<InvoiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceStateCopyWith<$Res> {
  factory $InvoiceStateCopyWith(
          InvoiceState value, $Res Function(InvoiceState) then) =
      _$InvoiceStateCopyWithImpl<$Res, InvoiceState>;
  @useResult
  $Res call({InvoiceData? data});

  $InvoiceDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$InvoiceStateCopyWithImpl<$Res, $Val extends InvoiceState>
    implements $InvoiceStateCopyWith<$Res> {
  _$InvoiceStateCopyWithImpl(this._value, this._then);

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
              as InvoiceData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $InvoiceDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $InvoiceStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InvoiceData? data});

  @override
  $InvoiceDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$Initial>
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
              as InvoiceData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final InvoiceData? data;

  @override
  String toString() {
    return 'InvoiceState.initial(data: $data)';
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
    required TResult Function(InvoiceData? data) initial,
    required TResult Function(InvoiceData? data) getInvoices,
    required TResult Function(InvoiceData? data) getInvoice,
    required TResult Function(InvoiceData? data) setInvoice,
    required TResult Function(InvoiceData? data) isSearching,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InvoiceData? data)? initial,
    TResult? Function(InvoiceData? data)? getInvoices,
    TResult? Function(InvoiceData? data)? getInvoice,
    TResult? Function(InvoiceData? data)? setInvoice,
    TResult? Function(InvoiceData? data)? isSearching,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InvoiceData? data)? initial,
    TResult Function(InvoiceData? data)? getInvoices,
    TResult Function(InvoiceData? data)? getInvoice,
    TResult Function(InvoiceData? data)? setInvoice,
    TResult Function(InvoiceData? data)? isSearching,
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
    required TResult Function(GetInvoices value) getInvoices,
    required TResult Function(GetInvoice value) getInvoice,
    required TResult Function(SetInvoice value) setInvoice,
    required TResult Function(IsSearching value) isSearching,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetInvoices value)? getInvoices,
    TResult? Function(GetInvoice value)? getInvoice,
    TResult? Function(SetInvoice value)? setInvoice,
    TResult? Function(IsSearching value)? isSearching,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetInvoices value)? getInvoices,
    TResult Function(GetInvoice value)? getInvoice,
    TResult Function(SetInvoice value)? setInvoice,
    TResult Function(IsSearching value)? isSearching,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements InvoiceState {
  const factory Initial({final InvoiceData? data}) = _$Initial;

  @override
  InvoiceData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInvoicesCopyWith<$Res>
    implements $InvoiceStateCopyWith<$Res> {
  factory _$$GetInvoicesCopyWith(
          _$GetInvoices value, $Res Function(_$GetInvoices) then) =
      __$$GetInvoicesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InvoiceData? data});

  @override
  $InvoiceDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetInvoicesCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$GetInvoices>
    implements _$$GetInvoicesCopyWith<$Res> {
  __$$GetInvoicesCopyWithImpl(
      _$GetInvoices _value, $Res Function(_$GetInvoices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetInvoices(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InvoiceData?,
    ));
  }
}

/// @nodoc

class _$GetInvoices implements GetInvoices {
  const _$GetInvoices({this.data});

  @override
  final InvoiceData? data;

  @override
  String toString() {
    return 'InvoiceState.getInvoices(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInvoices &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInvoicesCopyWith<_$GetInvoices> get copyWith =>
      __$$GetInvoicesCopyWithImpl<_$GetInvoices>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InvoiceData? data) initial,
    required TResult Function(InvoiceData? data) getInvoices,
    required TResult Function(InvoiceData? data) getInvoice,
    required TResult Function(InvoiceData? data) setInvoice,
    required TResult Function(InvoiceData? data) isSearching,
  }) {
    return getInvoices(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InvoiceData? data)? initial,
    TResult? Function(InvoiceData? data)? getInvoices,
    TResult? Function(InvoiceData? data)? getInvoice,
    TResult? Function(InvoiceData? data)? setInvoice,
    TResult? Function(InvoiceData? data)? isSearching,
  }) {
    return getInvoices?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InvoiceData? data)? initial,
    TResult Function(InvoiceData? data)? getInvoices,
    TResult Function(InvoiceData? data)? getInvoice,
    TResult Function(InvoiceData? data)? setInvoice,
    TResult Function(InvoiceData? data)? isSearching,
    required TResult orElse(),
  }) {
    if (getInvoices != null) {
      return getInvoices(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetInvoices value) getInvoices,
    required TResult Function(GetInvoice value) getInvoice,
    required TResult Function(SetInvoice value) setInvoice,
    required TResult Function(IsSearching value) isSearching,
  }) {
    return getInvoices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetInvoices value)? getInvoices,
    TResult? Function(GetInvoice value)? getInvoice,
    TResult? Function(SetInvoice value)? setInvoice,
    TResult? Function(IsSearching value)? isSearching,
  }) {
    return getInvoices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetInvoices value)? getInvoices,
    TResult Function(GetInvoice value)? getInvoice,
    TResult Function(SetInvoice value)? setInvoice,
    TResult Function(IsSearching value)? isSearching,
    required TResult orElse(),
  }) {
    if (getInvoices != null) {
      return getInvoices(this);
    }
    return orElse();
  }
}

abstract class GetInvoices implements InvoiceState {
  const factory GetInvoices({final InvoiceData? data}) = _$GetInvoices;

  @override
  InvoiceData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetInvoicesCopyWith<_$GetInvoices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInvoiceCopyWith<$Res>
    implements $InvoiceStateCopyWith<$Res> {
  factory _$$GetInvoiceCopyWith(
          _$GetInvoice value, $Res Function(_$GetInvoice) then) =
      __$$GetInvoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InvoiceData? data});

  @override
  $InvoiceDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetInvoiceCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$GetInvoice>
    implements _$$GetInvoiceCopyWith<$Res> {
  __$$GetInvoiceCopyWithImpl(
      _$GetInvoice _value, $Res Function(_$GetInvoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetInvoice(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InvoiceData?,
    ));
  }
}

/// @nodoc

class _$GetInvoice implements GetInvoice {
  const _$GetInvoice({this.data});

  @override
  final InvoiceData? data;

  @override
  String toString() {
    return 'InvoiceState.getInvoice(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInvoice &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInvoiceCopyWith<_$GetInvoice> get copyWith =>
      __$$GetInvoiceCopyWithImpl<_$GetInvoice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InvoiceData? data) initial,
    required TResult Function(InvoiceData? data) getInvoices,
    required TResult Function(InvoiceData? data) getInvoice,
    required TResult Function(InvoiceData? data) setInvoice,
    required TResult Function(InvoiceData? data) isSearching,
  }) {
    return getInvoice(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InvoiceData? data)? initial,
    TResult? Function(InvoiceData? data)? getInvoices,
    TResult? Function(InvoiceData? data)? getInvoice,
    TResult? Function(InvoiceData? data)? setInvoice,
    TResult? Function(InvoiceData? data)? isSearching,
  }) {
    return getInvoice?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InvoiceData? data)? initial,
    TResult Function(InvoiceData? data)? getInvoices,
    TResult Function(InvoiceData? data)? getInvoice,
    TResult Function(InvoiceData? data)? setInvoice,
    TResult Function(InvoiceData? data)? isSearching,
    required TResult orElse(),
  }) {
    if (getInvoice != null) {
      return getInvoice(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetInvoices value) getInvoices,
    required TResult Function(GetInvoice value) getInvoice,
    required TResult Function(SetInvoice value) setInvoice,
    required TResult Function(IsSearching value) isSearching,
  }) {
    return getInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetInvoices value)? getInvoices,
    TResult? Function(GetInvoice value)? getInvoice,
    TResult? Function(SetInvoice value)? setInvoice,
    TResult? Function(IsSearching value)? isSearching,
  }) {
    return getInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetInvoices value)? getInvoices,
    TResult Function(GetInvoice value)? getInvoice,
    TResult Function(SetInvoice value)? setInvoice,
    TResult Function(IsSearching value)? isSearching,
    required TResult orElse(),
  }) {
    if (getInvoice != null) {
      return getInvoice(this);
    }
    return orElse();
  }
}

abstract class GetInvoice implements InvoiceState {
  const factory GetInvoice({final InvoiceData? data}) = _$GetInvoice;

  @override
  InvoiceData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetInvoiceCopyWith<_$GetInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetInvoiceCopyWith<$Res>
    implements $InvoiceStateCopyWith<$Res> {
  factory _$$SetInvoiceCopyWith(
          _$SetInvoice value, $Res Function(_$SetInvoice) then) =
      __$$SetInvoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InvoiceData? data});

  @override
  $InvoiceDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetInvoiceCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$SetInvoice>
    implements _$$SetInvoiceCopyWith<$Res> {
  __$$SetInvoiceCopyWithImpl(
      _$SetInvoice _value, $Res Function(_$SetInvoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetInvoice(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InvoiceData?,
    ));
  }
}

/// @nodoc

class _$SetInvoice implements SetInvoice {
  const _$SetInvoice({this.data});

  @override
  final InvoiceData? data;

  @override
  String toString() {
    return 'InvoiceState.setInvoice(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetInvoice &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetInvoiceCopyWith<_$SetInvoice> get copyWith =>
      __$$SetInvoiceCopyWithImpl<_$SetInvoice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InvoiceData? data) initial,
    required TResult Function(InvoiceData? data) getInvoices,
    required TResult Function(InvoiceData? data) getInvoice,
    required TResult Function(InvoiceData? data) setInvoice,
    required TResult Function(InvoiceData? data) isSearching,
  }) {
    return setInvoice(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InvoiceData? data)? initial,
    TResult? Function(InvoiceData? data)? getInvoices,
    TResult? Function(InvoiceData? data)? getInvoice,
    TResult? Function(InvoiceData? data)? setInvoice,
    TResult? Function(InvoiceData? data)? isSearching,
  }) {
    return setInvoice?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InvoiceData? data)? initial,
    TResult Function(InvoiceData? data)? getInvoices,
    TResult Function(InvoiceData? data)? getInvoice,
    TResult Function(InvoiceData? data)? setInvoice,
    TResult Function(InvoiceData? data)? isSearching,
    required TResult orElse(),
  }) {
    if (setInvoice != null) {
      return setInvoice(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetInvoices value) getInvoices,
    required TResult Function(GetInvoice value) getInvoice,
    required TResult Function(SetInvoice value) setInvoice,
    required TResult Function(IsSearching value) isSearching,
  }) {
    return setInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetInvoices value)? getInvoices,
    TResult? Function(GetInvoice value)? getInvoice,
    TResult? Function(SetInvoice value)? setInvoice,
    TResult? Function(IsSearching value)? isSearching,
  }) {
    return setInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetInvoices value)? getInvoices,
    TResult Function(GetInvoice value)? getInvoice,
    TResult Function(SetInvoice value)? setInvoice,
    TResult Function(IsSearching value)? isSearching,
    required TResult orElse(),
  }) {
    if (setInvoice != null) {
      return setInvoice(this);
    }
    return orElse();
  }
}

abstract class SetInvoice implements InvoiceState {
  const factory SetInvoice({final InvoiceData? data}) = _$SetInvoice;

  @override
  InvoiceData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetInvoiceCopyWith<_$SetInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsSearchingCopyWith<$Res>
    implements $InvoiceStateCopyWith<$Res> {
  factory _$$IsSearchingCopyWith(
          _$IsSearching value, $Res Function(_$IsSearching) then) =
      __$$IsSearchingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InvoiceData? data});

  @override
  $InvoiceDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$IsSearchingCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$IsSearching>
    implements _$$IsSearchingCopyWith<$Res> {
  __$$IsSearchingCopyWithImpl(
      _$IsSearching _value, $Res Function(_$IsSearching) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$IsSearching(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InvoiceData?,
    ));
  }
}

/// @nodoc

class _$IsSearching implements IsSearching {
  const _$IsSearching({this.data});

  @override
  final InvoiceData? data;

  @override
  String toString() {
    return 'InvoiceState.isSearching(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsSearching &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsSearchingCopyWith<_$IsSearching> get copyWith =>
      __$$IsSearchingCopyWithImpl<_$IsSearching>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InvoiceData? data) initial,
    required TResult Function(InvoiceData? data) getInvoices,
    required TResult Function(InvoiceData? data) getInvoice,
    required TResult Function(InvoiceData? data) setInvoice,
    required TResult Function(InvoiceData? data) isSearching,
  }) {
    return isSearching(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InvoiceData? data)? initial,
    TResult? Function(InvoiceData? data)? getInvoices,
    TResult? Function(InvoiceData? data)? getInvoice,
    TResult? Function(InvoiceData? data)? setInvoice,
    TResult? Function(InvoiceData? data)? isSearching,
  }) {
    return isSearching?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InvoiceData? data)? initial,
    TResult Function(InvoiceData? data)? getInvoices,
    TResult Function(InvoiceData? data)? getInvoice,
    TResult Function(InvoiceData? data)? setInvoice,
    TResult Function(InvoiceData? data)? isSearching,
    required TResult orElse(),
  }) {
    if (isSearching != null) {
      return isSearching(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetInvoices value) getInvoices,
    required TResult Function(GetInvoice value) getInvoice,
    required TResult Function(SetInvoice value) setInvoice,
    required TResult Function(IsSearching value) isSearching,
  }) {
    return isSearching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetInvoices value)? getInvoices,
    TResult? Function(GetInvoice value)? getInvoice,
    TResult? Function(SetInvoice value)? setInvoice,
    TResult? Function(IsSearching value)? isSearching,
  }) {
    return isSearching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetInvoices value)? getInvoices,
    TResult Function(GetInvoice value)? getInvoice,
    TResult Function(SetInvoice value)? setInvoice,
    TResult Function(IsSearching value)? isSearching,
    required TResult orElse(),
  }) {
    if (isSearching != null) {
      return isSearching(this);
    }
    return orElse();
  }
}

abstract class IsSearching implements InvoiceState {
  const factory IsSearching({final InvoiceData? data}) = _$IsSearching;

  @override
  InvoiceData? get data;
  @override
  @JsonKey(ignore: true)
  _$$IsSearchingCopyWith<_$IsSearching> get copyWith =>
      throw _privateConstructorUsedError;
}
