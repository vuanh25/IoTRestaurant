// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TableStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<TableModel> get tables => throw _privateConstructorUsedError;
  TableModel? get table => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableStateDataCopyWith<TableStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableStateDataCopyWith<$Res> {
  factory $TableStateDataCopyWith(
          TableStateData value, $Res Function(TableStateData) then) =
      _$TableStateDataCopyWithImpl<$Res, TableStateData>;
  @useResult
  $Res call({StatusType status, List<TableModel> tables, TableModel? table});
}

/// @nodoc
class _$TableStateDataCopyWithImpl<$Res, $Val extends TableStateData>
    implements $TableStateDataCopyWith<$Res> {
  _$TableStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tables = null,
    Object? table = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      tables: null == tables
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableModel>,
      table: freezed == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as TableModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TableStateDataCopyWith<$Res>
    implements $TableStateDataCopyWith<$Res> {
  factory _$$_TableStateDataCopyWith(
          _$_TableStateData value, $Res Function(_$_TableStateData) then) =
      __$$_TableStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusType status, List<TableModel> tables, TableModel? table});
}

/// @nodoc
class __$$_TableStateDataCopyWithImpl<$Res>
    extends _$TableStateDataCopyWithImpl<$Res, _$_TableStateData>
    implements _$$_TableStateDataCopyWith<$Res> {
  __$$_TableStateDataCopyWithImpl(
      _$_TableStateData _value, $Res Function(_$_TableStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tables = null,
    Object? table = freezed,
  }) {
    return _then(_$_TableStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      tables: null == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableModel>,
      table: freezed == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as TableModel?,
    ));
  }
}

/// @nodoc

class _$_TableStateData implements _TableStateData {
  const _$_TableStateData(
      {this.status = StatusType.init,
      final List<TableModel> tables = const [],
      this.table})
      : _tables = tables;

  @override
  @JsonKey()
  final StatusType status;
  final List<TableModel> _tables;
  @override
  @JsonKey()
  List<TableModel> get tables {
    if (_tables is EqualUnmodifiableListView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tables);
  }

  @override
  final TableModel? table;

  @override
  String toString() {
    return 'TableStateData(status: $status, tables: $tables, table: $table)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._tables, _tables) &&
            (identical(other.table, table) || other.table == table));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_tables), table);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TableStateDataCopyWith<_$_TableStateData> get copyWith =>
      __$$_TableStateDataCopyWithImpl<_$_TableStateData>(this, _$identity);
}

abstract class _TableStateData implements TableStateData {
  const factory _TableStateData(
      {final StatusType status,
      final List<TableModel> tables,
      final TableModel? table}) = _$_TableStateData;

  @override
  StatusType get status;
  @override
  List<TableModel> get tables;
  @override
  TableModel? get table;
  @override
  @JsonKey(ignore: true)
  _$$_TableStateDataCopyWith<_$_TableStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TableState {
  TableStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TableStateData? data) initial,
    required TResult Function(TableStateData? data) status,
    required TResult Function(TableStateData? data) getTable,
    required TResult Function(TableStateData? data) getTableWithId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TableStateData? data)? initial,
    TResult? Function(TableStateData? data)? status,
    TResult? Function(TableStateData? data)? getTable,
    TResult? Function(TableStateData? data)? getTableWithId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TableStateData? data)? initial,
    TResult Function(TableStateData? data)? status,
    TResult Function(TableStateData? data)? getTable,
    TResult Function(TableStateData? data)? getTableWithId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetTable value) getTable,
    required TResult Function(GetTableWithId value) getTableWithId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetTable value)? getTable,
    TResult? Function(GetTableWithId value)? getTableWithId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetTable value)? getTable,
    TResult Function(GetTableWithId value)? getTableWithId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableStateCopyWith<TableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableStateCopyWith<$Res> {
  factory $TableStateCopyWith(
          TableState value, $Res Function(TableState) then) =
      _$TableStateCopyWithImpl<$Res, TableState>;
  @useResult
  $Res call({TableStateData? data});

  $TableStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$TableStateCopyWithImpl<$Res, $Val extends TableState>
    implements $TableStateCopyWith<$Res> {
  _$TableStateCopyWithImpl(this._value, this._then);

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
              as TableStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TableStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TableStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $TableStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TableStateData? data});

  @override
  $TableStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$Initial>
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
              as TableStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final TableStateData? data;

  @override
  String toString() {
    return 'TableState.initial(data: $data)';
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
    required TResult Function(TableStateData? data) initial,
    required TResult Function(TableStateData? data) status,
    required TResult Function(TableStateData? data) getTable,
    required TResult Function(TableStateData? data) getTableWithId,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TableStateData? data)? initial,
    TResult? Function(TableStateData? data)? status,
    TResult? Function(TableStateData? data)? getTable,
    TResult? Function(TableStateData? data)? getTableWithId,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TableStateData? data)? initial,
    TResult Function(TableStateData? data)? status,
    TResult Function(TableStateData? data)? getTable,
    TResult Function(TableStateData? data)? getTableWithId,
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
    required TResult Function(GetTable value) getTable,
    required TResult Function(GetTableWithId value) getTableWithId,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetTable value)? getTable,
    TResult? Function(GetTableWithId value)? getTableWithId,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetTable value)? getTable,
    TResult Function(GetTableWithId value)? getTableWithId,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TableState {
  const factory Initial({final TableStateData? data}) = _$Initial;

  @override
  TableStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $TableStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TableStateData? data});

  @override
  $TableStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$Status>
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
              as TableStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final TableStateData? data;

  @override
  String toString() {
    return 'TableState.status(data: $data)';
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
    required TResult Function(TableStateData? data) initial,
    required TResult Function(TableStateData? data) status,
    required TResult Function(TableStateData? data) getTable,
    required TResult Function(TableStateData? data) getTableWithId,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TableStateData? data)? initial,
    TResult? Function(TableStateData? data)? status,
    TResult? Function(TableStateData? data)? getTable,
    TResult? Function(TableStateData? data)? getTableWithId,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TableStateData? data)? initial,
    TResult Function(TableStateData? data)? status,
    TResult Function(TableStateData? data)? getTable,
    TResult Function(TableStateData? data)? getTableWithId,
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
    required TResult Function(GetTable value) getTable,
    required TResult Function(GetTableWithId value) getTableWithId,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetTable value)? getTable,
    TResult? Function(GetTableWithId value)? getTableWithId,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetTable value)? getTable,
    TResult Function(GetTableWithId value)? getTableWithId,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements TableState {
  const factory Status({final TableStateData? data}) = _$Status;

  @override
  TableStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTableCopyWith<$Res> implements $TableStateCopyWith<$Res> {
  factory _$$GetTableCopyWith(
          _$GetTable value, $Res Function(_$GetTable) then) =
      __$$GetTableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TableStateData? data});

  @override
  $TableStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetTableCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$GetTable>
    implements _$$GetTableCopyWith<$Res> {
  __$$GetTableCopyWithImpl(_$GetTable _value, $Res Function(_$GetTable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetTable(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TableStateData?,
    ));
  }
}

/// @nodoc

class _$GetTable implements GetTable {
  const _$GetTable({this.data});

  @override
  final TableStateData? data;

  @override
  String toString() {
    return 'TableState.getTable(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTable &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTableCopyWith<_$GetTable> get copyWith =>
      __$$GetTableCopyWithImpl<_$GetTable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TableStateData? data) initial,
    required TResult Function(TableStateData? data) status,
    required TResult Function(TableStateData? data) getTable,
    required TResult Function(TableStateData? data) getTableWithId,
  }) {
    return getTable(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TableStateData? data)? initial,
    TResult? Function(TableStateData? data)? status,
    TResult? Function(TableStateData? data)? getTable,
    TResult? Function(TableStateData? data)? getTableWithId,
  }) {
    return getTable?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TableStateData? data)? initial,
    TResult Function(TableStateData? data)? status,
    TResult Function(TableStateData? data)? getTable,
    TResult Function(TableStateData? data)? getTableWithId,
    required TResult orElse(),
  }) {
    if (getTable != null) {
      return getTable(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetTable value) getTable,
    required TResult Function(GetTableWithId value) getTableWithId,
  }) {
    return getTable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetTable value)? getTable,
    TResult? Function(GetTableWithId value)? getTableWithId,
  }) {
    return getTable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetTable value)? getTable,
    TResult Function(GetTableWithId value)? getTableWithId,
    required TResult orElse(),
  }) {
    if (getTable != null) {
      return getTable(this);
    }
    return orElse();
  }
}

abstract class GetTable implements TableState {
  const factory GetTable({final TableStateData? data}) = _$GetTable;

  @override
  TableStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetTableCopyWith<_$GetTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTableWithIdCopyWith<$Res>
    implements $TableStateCopyWith<$Res> {
  factory _$$GetTableWithIdCopyWith(
          _$GetTableWithId value, $Res Function(_$GetTableWithId) then) =
      __$$GetTableWithIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TableStateData? data});

  @override
  $TableStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetTableWithIdCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$GetTableWithId>
    implements _$$GetTableWithIdCopyWith<$Res> {
  __$$GetTableWithIdCopyWithImpl(
      _$GetTableWithId _value, $Res Function(_$GetTableWithId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetTableWithId(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TableStateData?,
    ));
  }
}

/// @nodoc

class _$GetTableWithId implements GetTableWithId {
  const _$GetTableWithId({this.data});

  @override
  final TableStateData? data;

  @override
  String toString() {
    return 'TableState.getTableWithId(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTableWithId &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTableWithIdCopyWith<_$GetTableWithId> get copyWith =>
      __$$GetTableWithIdCopyWithImpl<_$GetTableWithId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TableStateData? data) initial,
    required TResult Function(TableStateData? data) status,
    required TResult Function(TableStateData? data) getTable,
    required TResult Function(TableStateData? data) getTableWithId,
  }) {
    return getTableWithId(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TableStateData? data)? initial,
    TResult? Function(TableStateData? data)? status,
    TResult? Function(TableStateData? data)? getTable,
    TResult? Function(TableStateData? data)? getTableWithId,
  }) {
    return getTableWithId?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TableStateData? data)? initial,
    TResult Function(TableStateData? data)? status,
    TResult Function(TableStateData? data)? getTable,
    TResult Function(TableStateData? data)? getTableWithId,
    required TResult orElse(),
  }) {
    if (getTableWithId != null) {
      return getTableWithId(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetTable value) getTable,
    required TResult Function(GetTableWithId value) getTableWithId,
  }) {
    return getTableWithId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetTable value)? getTable,
    TResult? Function(GetTableWithId value)? getTableWithId,
  }) {
    return getTableWithId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetTable value)? getTable,
    TResult Function(GetTableWithId value)? getTableWithId,
    required TResult orElse(),
  }) {
    if (getTableWithId != null) {
      return getTableWithId(this);
    }
    return orElse();
  }
}

abstract class GetTableWithId implements TableState {
  const factory GetTableWithId({final TableStateData? data}) = _$GetTableWithId;

  @override
  TableStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetTableWithIdCopyWith<_$GetTableWithId> get copyWith =>
      throw _privateConstructorUsedError;
}
