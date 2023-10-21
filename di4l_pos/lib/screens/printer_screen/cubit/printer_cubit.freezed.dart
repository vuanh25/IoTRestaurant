// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'printer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrinterStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<Printer> get printers => throw _privateConstructorUsedError;
  List<Printer> get printersOriginal => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  Printer? get printer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrinterStateDataCopyWith<PrinterStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrinterStateDataCopyWith<$Res> {
  factory $PrinterStateDataCopyWith(
          PrinterStateData value, $Res Function(PrinterStateData) then) =
      _$PrinterStateDataCopyWithImpl<$Res, PrinterStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<Printer> printers,
      List<Printer> printersOriginal,
      bool isSearching,
      Printer? printer});
}

/// @nodoc
class _$PrinterStateDataCopyWithImpl<$Res, $Val extends PrinterStateData>
    implements $PrinterStateDataCopyWith<$Res> {
  _$PrinterStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? printers = null,
    Object? printersOriginal = null,
    Object? isSearching = null,
    Object? printer = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      printers: null == printers
          ? _value.printers
          : printers // ignore: cast_nullable_to_non_nullable
              as List<Printer>,
      printersOriginal: null == printersOriginal
          ? _value.printersOriginal
          : printersOriginal // ignore: cast_nullable_to_non_nullable
              as List<Printer>,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      printer: freezed == printer
          ? _value.printer
          : printer // ignore: cast_nullable_to_non_nullable
              as Printer?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrinterStateDataCopyWith<$Res>
    implements $PrinterStateDataCopyWith<$Res> {
  factory _$$_PrinterStateDataCopyWith(
          _$_PrinterStateData value, $Res Function(_$_PrinterStateData) then) =
      __$$_PrinterStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<Printer> printers,
      List<Printer> printersOriginal,
      bool isSearching,
      Printer? printer});
}

/// @nodoc
class __$$_PrinterStateDataCopyWithImpl<$Res>
    extends _$PrinterStateDataCopyWithImpl<$Res, _$_PrinterStateData>
    implements _$$_PrinterStateDataCopyWith<$Res> {
  __$$_PrinterStateDataCopyWithImpl(
      _$_PrinterStateData _value, $Res Function(_$_PrinterStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? printers = null,
    Object? printersOriginal = null,
    Object? isSearching = null,
    Object? printer = freezed,
  }) {
    return _then(_$_PrinterStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      printers: null == printers
          ? _value._printers
          : printers // ignore: cast_nullable_to_non_nullable
              as List<Printer>,
      printersOriginal: null == printersOriginal
          ? _value._printersOriginal
          : printersOriginal // ignore: cast_nullable_to_non_nullable
              as List<Printer>,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      printer: freezed == printer
          ? _value.printer
          : printer // ignore: cast_nullable_to_non_nullable
              as Printer?,
    ));
  }
}

/// @nodoc

class _$_PrinterStateData implements _PrinterStateData {
  const _$_PrinterStateData(
      {this.status = StatusType.init,
      final List<Printer> printers = const [],
      final List<Printer> printersOriginal = const [],
      this.isSearching = false,
      this.printer})
      : _printers = printers,
        _printersOriginal = printersOriginal;

  @override
  @JsonKey()
  final StatusType status;
  final List<Printer> _printers;
  @override
  @JsonKey()
  List<Printer> get printers {
    if (_printers is EqualUnmodifiableListView) return _printers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_printers);
  }

  final List<Printer> _printersOriginal;
  @override
  @JsonKey()
  List<Printer> get printersOriginal {
    if (_printersOriginal is EqualUnmodifiableListView)
      return _printersOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_printersOriginal);
  }

  @override
  @JsonKey()
  final bool isSearching;
  @override
  final Printer? printer;

  @override
  String toString() {
    return 'PrinterStateData(status: $status, printers: $printers, printersOriginal: $printersOriginal, isSearching: $isSearching, printer: $printer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrinterStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._printers, _printers) &&
            const DeepCollectionEquality()
                .equals(other._printersOriginal, _printersOriginal) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.printer, printer) || other.printer == printer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_printers),
      const DeepCollectionEquality().hash(_printersOriginal),
      isSearching,
      printer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrinterStateDataCopyWith<_$_PrinterStateData> get copyWith =>
      __$$_PrinterStateDataCopyWithImpl<_$_PrinterStateData>(this, _$identity);
}

abstract class _PrinterStateData implements PrinterStateData {
  const factory _PrinterStateData(
      {final StatusType status,
      final List<Printer> printers,
      final List<Printer> printersOriginal,
      final bool isSearching,
      final Printer? printer}) = _$_PrinterStateData;

  @override
  StatusType get status;
  @override
  List<Printer> get printers;
  @override
  List<Printer> get printersOriginal;
  @override
  bool get isSearching;
  @override
  Printer? get printer;
  @override
  @JsonKey(ignore: true)
  _$$_PrinterStateDataCopyWith<_$_PrinterStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PrinterState {
  PrinterStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PrinterStateData? data) initial,
    required TResult Function(PrinterStateData? data) status,
    required TResult Function(PrinterStateData? data) getPrinters,
    required TResult Function(PrinterStateData? data) isSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PrinterStateData? data)? initial,
    TResult? Function(PrinterStateData? data)? status,
    TResult? Function(PrinterStateData? data)? getPrinters,
    TResult? Function(PrinterStateData? data)? isSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PrinterStateData? data)? initial,
    TResult Function(PrinterStateData? data)? status,
    TResult Function(PrinterStateData? data)? getPrinters,
    TResult Function(PrinterStateData? data)? isSearching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetPrinters value) getPrinters,
    required TResult Function(IsSearching value) isSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPrinters value)? getPrinters,
    TResult? Function(IsSearching value)? isSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPrinters value)? getPrinters,
    TResult Function(IsSearching value)? isSearching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrinterStateCopyWith<PrinterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrinterStateCopyWith<$Res> {
  factory $PrinterStateCopyWith(
          PrinterState value, $Res Function(PrinterState) then) =
      _$PrinterStateCopyWithImpl<$Res, PrinterState>;
  @useResult
  $Res call({PrinterStateData? data});

  $PrinterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PrinterStateCopyWithImpl<$Res, $Val extends PrinterState>
    implements $PrinterStateCopyWith<$Res> {
  _$PrinterStateCopyWithImpl(this._value, this._then);

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
              as PrinterStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrinterStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PrinterStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $PrinterStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PrinterStateData? data});

  @override
  $PrinterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$PrinterStateCopyWithImpl<$Res, _$Initial>
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
              as PrinterStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final PrinterStateData? data;

  @override
  String toString() {
    return 'PrinterState.initial(data: $data)';
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
    required TResult Function(PrinterStateData? data) initial,
    required TResult Function(PrinterStateData? data) status,
    required TResult Function(PrinterStateData? data) getPrinters,
    required TResult Function(PrinterStateData? data) isSearching,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PrinterStateData? data)? initial,
    TResult? Function(PrinterStateData? data)? status,
    TResult? Function(PrinterStateData? data)? getPrinters,
    TResult? Function(PrinterStateData? data)? isSearching,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PrinterStateData? data)? initial,
    TResult Function(PrinterStateData? data)? status,
    TResult Function(PrinterStateData? data)? getPrinters,
    TResult Function(PrinterStateData? data)? isSearching,
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
    required TResult Function(GetPrinters value) getPrinters,
    required TResult Function(IsSearching value) isSearching,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPrinters value)? getPrinters,
    TResult? Function(IsSearching value)? isSearching,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPrinters value)? getPrinters,
    TResult Function(IsSearching value)? isSearching,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PrinterState {
  const factory Initial({final PrinterStateData? data}) = _$Initial;

  @override
  PrinterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $PrinterStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PrinterStateData? data});

  @override
  $PrinterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$PrinterStateCopyWithImpl<$Res, _$Status>
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
              as PrinterStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final PrinterStateData? data;

  @override
  String toString() {
    return 'PrinterState.status(data: $data)';
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
    required TResult Function(PrinterStateData? data) initial,
    required TResult Function(PrinterStateData? data) status,
    required TResult Function(PrinterStateData? data) getPrinters,
    required TResult Function(PrinterStateData? data) isSearching,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PrinterStateData? data)? initial,
    TResult? Function(PrinterStateData? data)? status,
    TResult? Function(PrinterStateData? data)? getPrinters,
    TResult? Function(PrinterStateData? data)? isSearching,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PrinterStateData? data)? initial,
    TResult Function(PrinterStateData? data)? status,
    TResult Function(PrinterStateData? data)? getPrinters,
    TResult Function(PrinterStateData? data)? isSearching,
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
    required TResult Function(GetPrinters value) getPrinters,
    required TResult Function(IsSearching value) isSearching,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPrinters value)? getPrinters,
    TResult? Function(IsSearching value)? isSearching,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPrinters value)? getPrinters,
    TResult Function(IsSearching value)? isSearching,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements PrinterState {
  const factory Status({final PrinterStateData? data}) = _$Status;

  @override
  PrinterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPrintersCopyWith<$Res>
    implements $PrinterStateCopyWith<$Res> {
  factory _$$GetPrintersCopyWith(
          _$GetPrinters value, $Res Function(_$GetPrinters) then) =
      __$$GetPrintersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PrinterStateData? data});

  @override
  $PrinterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetPrintersCopyWithImpl<$Res>
    extends _$PrinterStateCopyWithImpl<$Res, _$GetPrinters>
    implements _$$GetPrintersCopyWith<$Res> {
  __$$GetPrintersCopyWithImpl(
      _$GetPrinters _value, $Res Function(_$GetPrinters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetPrinters(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PrinterStateData?,
    ));
  }
}

/// @nodoc

class _$GetPrinters implements GetPrinters {
  const _$GetPrinters({this.data});

  @override
  final PrinterStateData? data;

  @override
  String toString() {
    return 'PrinterState.getPrinters(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPrinters &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPrintersCopyWith<_$GetPrinters> get copyWith =>
      __$$GetPrintersCopyWithImpl<_$GetPrinters>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PrinterStateData? data) initial,
    required TResult Function(PrinterStateData? data) status,
    required TResult Function(PrinterStateData? data) getPrinters,
    required TResult Function(PrinterStateData? data) isSearching,
  }) {
    return getPrinters(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PrinterStateData? data)? initial,
    TResult? Function(PrinterStateData? data)? status,
    TResult? Function(PrinterStateData? data)? getPrinters,
    TResult? Function(PrinterStateData? data)? isSearching,
  }) {
    return getPrinters?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PrinterStateData? data)? initial,
    TResult Function(PrinterStateData? data)? status,
    TResult Function(PrinterStateData? data)? getPrinters,
    TResult Function(PrinterStateData? data)? isSearching,
    required TResult orElse(),
  }) {
    if (getPrinters != null) {
      return getPrinters(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetPrinters value) getPrinters,
    required TResult Function(IsSearching value) isSearching,
  }) {
    return getPrinters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPrinters value)? getPrinters,
    TResult? Function(IsSearching value)? isSearching,
  }) {
    return getPrinters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPrinters value)? getPrinters,
    TResult Function(IsSearching value)? isSearching,
    required TResult orElse(),
  }) {
    if (getPrinters != null) {
      return getPrinters(this);
    }
    return orElse();
  }
}

abstract class GetPrinters implements PrinterState {
  const factory GetPrinters({final PrinterStateData? data}) = _$GetPrinters;

  @override
  PrinterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetPrintersCopyWith<_$GetPrinters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsSearchingCopyWith<$Res>
    implements $PrinterStateCopyWith<$Res> {
  factory _$$IsSearchingCopyWith(
          _$IsSearching value, $Res Function(_$IsSearching) then) =
      __$$IsSearchingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PrinterStateData? data});

  @override
  $PrinterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$IsSearchingCopyWithImpl<$Res>
    extends _$PrinterStateCopyWithImpl<$Res, _$IsSearching>
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
              as PrinterStateData?,
    ));
  }
}

/// @nodoc

class _$IsSearching implements IsSearching {
  const _$IsSearching({this.data});

  @override
  final PrinterStateData? data;

  @override
  String toString() {
    return 'PrinterState.isSearching(data: $data)';
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
    required TResult Function(PrinterStateData? data) initial,
    required TResult Function(PrinterStateData? data) status,
    required TResult Function(PrinterStateData? data) getPrinters,
    required TResult Function(PrinterStateData? data) isSearching,
  }) {
    return isSearching(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PrinterStateData? data)? initial,
    TResult? Function(PrinterStateData? data)? status,
    TResult? Function(PrinterStateData? data)? getPrinters,
    TResult? Function(PrinterStateData? data)? isSearching,
  }) {
    return isSearching?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PrinterStateData? data)? initial,
    TResult Function(PrinterStateData? data)? status,
    TResult Function(PrinterStateData? data)? getPrinters,
    TResult Function(PrinterStateData? data)? isSearching,
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
    required TResult Function(Status value) status,
    required TResult Function(GetPrinters value) getPrinters,
    required TResult Function(IsSearching value) isSearching,
  }) {
    return isSearching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetPrinters value)? getPrinters,
    TResult? Function(IsSearching value)? isSearching,
  }) {
    return isSearching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetPrinters value)? getPrinters,
    TResult Function(IsSearching value)? isSearching,
    required TResult orElse(),
  }) {
    if (isSearching != null) {
      return isSearching(this);
    }
    return orElse();
  }
}

abstract class IsSearching implements PrinterState {
  const factory IsSearching({final PrinterStateData? data}) = _$IsSearching;

  @override
  PrinterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$IsSearchingCopyWith<_$IsSearching> get copyWith =>
      throw _privateConstructorUsedError;
}
