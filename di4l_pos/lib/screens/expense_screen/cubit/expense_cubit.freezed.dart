// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpenseStateData {
  List<Expense> get expenses => throw _privateConstructorUsedError;
  List<Expense> get expensesOriginal => throw _privateConstructorUsedError;
  List<ExpenseCategory> get categories => throw _privateConstructorUsedError;
  List<ExpenseCategory> get categoriesOriginal =>
      throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;
  double get totalExpense => throw _privateConstructorUsedError;
  double get totalRevenue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseStateDataCopyWith<ExpenseStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseStateDataCopyWith<$Res> {
  factory $ExpenseStateDataCopyWith(
          ExpenseStateData value, $Res Function(ExpenseStateData) then) =
      _$ExpenseStateDataCopyWithImpl<$Res, ExpenseStateData>;
  @useResult
  $Res call(
      {List<Expense> expenses,
      List<Expense> expensesOriginal,
      List<ExpenseCategory> categories,
      List<ExpenseCategory> categoriesOriginal,
      dynamic status,
      double totalExpense,
      double totalRevenue});
}

/// @nodoc
class _$ExpenseStateDataCopyWithImpl<$Res, $Val extends ExpenseStateData>
    implements $ExpenseStateDataCopyWith<$Res> {
  _$ExpenseStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
    Object? expensesOriginal = null,
    Object? categories = null,
    Object? categoriesOriginal = null,
    Object? status = freezed,
    Object? totalExpense = null,
    Object? totalRevenue = null,
  }) {
    return _then(_value.copyWith(
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
      expensesOriginal: null == expensesOriginal
          ? _value.expensesOriginal
          : expensesOriginal // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ExpenseCategory>,
      categoriesOriginal: null == categoriesOriginal
          ? _value.categoriesOriginal
          : categoriesOriginal // ignore: cast_nullable_to_non_nullable
              as List<ExpenseCategory>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalExpense: null == totalExpense
          ? _value.totalExpense
          : totalExpense // ignore: cast_nullable_to_non_nullable
              as double,
      totalRevenue: null == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExpenseStateDataCopyWith<$Res>
    implements $ExpenseStateDataCopyWith<$Res> {
  factory _$$_ExpenseStateDataCopyWith(
          _$_ExpenseStateData value, $Res Function(_$_ExpenseStateData) then) =
      __$$_ExpenseStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Expense> expenses,
      List<Expense> expensesOriginal,
      List<ExpenseCategory> categories,
      List<ExpenseCategory> categoriesOriginal,
      dynamic status,
      double totalExpense,
      double totalRevenue});
}

/// @nodoc
class __$$_ExpenseStateDataCopyWithImpl<$Res>
    extends _$ExpenseStateDataCopyWithImpl<$Res, _$_ExpenseStateData>
    implements _$$_ExpenseStateDataCopyWith<$Res> {
  __$$_ExpenseStateDataCopyWithImpl(
      _$_ExpenseStateData _value, $Res Function(_$_ExpenseStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
    Object? expensesOriginal = null,
    Object? categories = null,
    Object? categoriesOriginal = null,
    Object? status = freezed,
    Object? totalExpense = null,
    Object? totalRevenue = null,
  }) {
    return _then(_$_ExpenseStateData(
      null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
      null == expensesOriginal
          ? _value._expensesOriginal
          : expensesOriginal // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ExpenseCategory>,
      null == categoriesOriginal
          ? _value._categoriesOriginal
          : categoriesOriginal // ignore: cast_nullable_to_non_nullable
              as List<ExpenseCategory>,
      freezed == status ? _value.status! : status,
      null == totalExpense
          ? _value.totalExpense
          : totalExpense // ignore: cast_nullable_to_non_nullable
              as double,
      null == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ExpenseStateData implements _ExpenseStateData {
  const _$_ExpenseStateData(
      [final List<Expense> expenses = const [],
      final List<Expense> expensesOriginal = const [],
      final List<ExpenseCategory> categories = const [],
      final List<ExpenseCategory> categoriesOriginal = const [],
      this.status = StatusType.init,
      this.totalExpense = 0,
      this.totalRevenue = 0])
      : _expenses = expenses,
        _expensesOriginal = expensesOriginal,
        _categories = categories,
        _categoriesOriginal = categoriesOriginal;

  final List<Expense> _expenses;
  @override
  @JsonKey()
  List<Expense> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  final List<Expense> _expensesOriginal;
  @override
  @JsonKey()
  List<Expense> get expensesOriginal {
    if (_expensesOriginal is EqualUnmodifiableListView)
      return _expensesOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expensesOriginal);
  }

  final List<ExpenseCategory> _categories;
  @override
  @JsonKey()
  List<ExpenseCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ExpenseCategory> _categoriesOriginal;
  @override
  @JsonKey()
  List<ExpenseCategory> get categoriesOriginal {
    if (_categoriesOriginal is EqualUnmodifiableListView)
      return _categoriesOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesOriginal);
  }

  @override
  @JsonKey()
  final dynamic status;
  @override
  @JsonKey()
  final double totalExpense;
  @override
  @JsonKey()
  final double totalRevenue;

  @override
  String toString() {
    return 'ExpenseStateData(expenses: $expenses, expensesOriginal: $expensesOriginal, categories: $categories, categoriesOriginal: $categoriesOriginal, status: $status, totalExpense: $totalExpense, totalRevenue: $totalRevenue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpenseStateData &&
            const DeepCollectionEquality().equals(other._expenses, _expenses) &&
            const DeepCollectionEquality()
                .equals(other._expensesOriginal, _expensesOriginal) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._categoriesOriginal, _categoriesOriginal) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.totalExpense, totalExpense) ||
                other.totalExpense == totalExpense) &&
            (identical(other.totalRevenue, totalRevenue) ||
                other.totalRevenue == totalRevenue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_expenses),
      const DeepCollectionEquality().hash(_expensesOriginal),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_categoriesOriginal),
      const DeepCollectionEquality().hash(status),
      totalExpense,
      totalRevenue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpenseStateDataCopyWith<_$_ExpenseStateData> get copyWith =>
      __$$_ExpenseStateDataCopyWithImpl<_$_ExpenseStateData>(this, _$identity);
}

abstract class _ExpenseStateData implements ExpenseStateData {
  const factory _ExpenseStateData(
      [final List<Expense> expenses,
      final List<Expense> expensesOriginal,
      final List<ExpenseCategory> categories,
      final List<ExpenseCategory> categoriesOriginal,
      final dynamic status,
      final double totalExpense,
      final double totalRevenue]) = _$_ExpenseStateData;

  @override
  List<Expense> get expenses;
  @override
  List<Expense> get expensesOriginal;
  @override
  List<ExpenseCategory> get categories;
  @override
  List<ExpenseCategory> get categoriesOriginal;
  @override
  dynamic get status;
  @override
  double get totalExpense;
  @override
  double get totalRevenue;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseStateDataCopyWith<_$_ExpenseStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExpenseState {
  ExpenseStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseStateData? data) initial,
    required TResult Function(ExpenseStateData? data) expenes,
    required TResult Function(ExpenseStateData? data) expenesOriginal,
    required TResult Function(ExpenseStateData? data) categories,
    required TResult Function(ExpenseStateData? data) categoriesOriginal,
    required TResult Function(ExpenseStateData? data) status,
    required TResult Function(ExpenseStateData? data) totalExpense,
    required TResult Function(ExpenseStateData? data) totalRevenue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseStateData? data)? initial,
    TResult? Function(ExpenseStateData? data)? expenes,
    TResult? Function(ExpenseStateData? data)? expenesOriginal,
    TResult? Function(ExpenseStateData? data)? categories,
    TResult? Function(ExpenseStateData? data)? categoriesOriginal,
    TResult? Function(ExpenseStateData? data)? status,
    TResult? Function(ExpenseStateData? data)? totalExpense,
    TResult? Function(ExpenseStateData? data)? totalRevenue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseStateData? data)? initial,
    TResult Function(ExpenseStateData? data)? expenes,
    TResult Function(ExpenseStateData? data)? expenesOriginal,
    TResult Function(ExpenseStateData? data)? categories,
    TResult Function(ExpenseStateData? data)? categoriesOriginal,
    TResult Function(ExpenseStateData? data)? status,
    TResult Function(ExpenseStateData? data)? totalExpense,
    TResult Function(ExpenseStateData? data)? totalRevenue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Expenses value) expenes,
    required TResult Function(ExpensesOriginal value) expenesOriginal,
    required TResult Function(Categories value) categories,
    required TResult Function(CategoriesOriginal value) categoriesOriginal,
    required TResult Function(Status value) status,
    required TResult Function(TotalExpense value) totalExpense,
    required TResult Function(TotalRevenue value) totalRevenue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Expenses value)? expenes,
    TResult? Function(ExpensesOriginal value)? expenesOriginal,
    TResult? Function(Categories value)? categories,
    TResult? Function(CategoriesOriginal value)? categoriesOriginal,
    TResult? Function(Status value)? status,
    TResult? Function(TotalExpense value)? totalExpense,
    TResult? Function(TotalRevenue value)? totalRevenue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Expenses value)? expenes,
    TResult Function(ExpensesOriginal value)? expenesOriginal,
    TResult Function(Categories value)? categories,
    TResult Function(CategoriesOriginal value)? categoriesOriginal,
    TResult Function(Status value)? status,
    TResult Function(TotalExpense value)? totalExpense,
    TResult Function(TotalRevenue value)? totalRevenue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseStateCopyWith<ExpenseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseStateCopyWith<$Res> {
  factory $ExpenseStateCopyWith(
          ExpenseState value, $Res Function(ExpenseState) then) =
      _$ExpenseStateCopyWithImpl<$Res, ExpenseState>;
  @useResult
  $Res call({ExpenseStateData? data});

  $ExpenseStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ExpenseStateCopyWithImpl<$Res, $Val extends ExpenseState>
    implements $ExpenseStateCopyWith<$Res> {
  _$ExpenseStateCopyWithImpl(this._value, this._then);

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
              as ExpenseStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpenseStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ExpenseStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $ExpenseStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseStateData? data});

  @override
  $ExpenseStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Initial(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExpenseStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final ExpenseStateData? data;

  @override
  String toString() {
    return 'ExpenseState.initial(data: $data)';
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
    required TResult Function(ExpenseStateData? data) initial,
    required TResult Function(ExpenseStateData? data) expenes,
    required TResult Function(ExpenseStateData? data) expenesOriginal,
    required TResult Function(ExpenseStateData? data) categories,
    required TResult Function(ExpenseStateData? data) categoriesOriginal,
    required TResult Function(ExpenseStateData? data) status,
    required TResult Function(ExpenseStateData? data) totalExpense,
    required TResult Function(ExpenseStateData? data) totalRevenue,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseStateData? data)? initial,
    TResult? Function(ExpenseStateData? data)? expenes,
    TResult? Function(ExpenseStateData? data)? expenesOriginal,
    TResult? Function(ExpenseStateData? data)? categories,
    TResult? Function(ExpenseStateData? data)? categoriesOriginal,
    TResult? Function(ExpenseStateData? data)? status,
    TResult? Function(ExpenseStateData? data)? totalExpense,
    TResult? Function(ExpenseStateData? data)? totalRevenue,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseStateData? data)? initial,
    TResult Function(ExpenseStateData? data)? expenes,
    TResult Function(ExpenseStateData? data)? expenesOriginal,
    TResult Function(ExpenseStateData? data)? categories,
    TResult Function(ExpenseStateData? data)? categoriesOriginal,
    TResult Function(ExpenseStateData? data)? status,
    TResult Function(ExpenseStateData? data)? totalExpense,
    TResult Function(ExpenseStateData? data)? totalRevenue,
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
    required TResult Function(Expenses value) expenes,
    required TResult Function(ExpensesOriginal value) expenesOriginal,
    required TResult Function(Categories value) categories,
    required TResult Function(CategoriesOriginal value) categoriesOriginal,
    required TResult Function(Status value) status,
    required TResult Function(TotalExpense value) totalExpense,
    required TResult Function(TotalRevenue value) totalRevenue,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Expenses value)? expenes,
    TResult? Function(ExpensesOriginal value)? expenesOriginal,
    TResult? Function(Categories value)? categories,
    TResult? Function(CategoriesOriginal value)? categoriesOriginal,
    TResult? Function(Status value)? status,
    TResult? Function(TotalExpense value)? totalExpense,
    TResult? Function(TotalRevenue value)? totalRevenue,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Expenses value)? expenes,
    TResult Function(ExpensesOriginal value)? expenesOriginal,
    TResult Function(Categories value)? categories,
    TResult Function(CategoriesOriginal value)? categoriesOriginal,
    TResult Function(Status value)? status,
    TResult Function(TotalExpense value)? totalExpense,
    TResult Function(TotalRevenue value)? totalRevenue,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ExpenseState {
  const factory Initial(final ExpenseStateData? data) = _$Initial;

  @override
  ExpenseStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpensesCopyWith<$Res>
    implements $ExpenseStateCopyWith<$Res> {
  factory _$$ExpensesCopyWith(
          _$Expenses value, $Res Function(_$Expenses) then) =
      __$$ExpensesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseStateData? data});

  @override
  $ExpenseStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ExpensesCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$Expenses>
    implements _$$ExpensesCopyWith<$Res> {
  __$$ExpensesCopyWithImpl(_$Expenses _value, $Res Function(_$Expenses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Expenses(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExpenseStateData?,
    ));
  }
}

/// @nodoc

class _$Expenses implements Expenses {
  const _$Expenses(this.data);

  @override
  final ExpenseStateData? data;

  @override
  String toString() {
    return 'ExpenseState.expenes(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Expenses &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpensesCopyWith<_$Expenses> get copyWith =>
      __$$ExpensesCopyWithImpl<_$Expenses>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseStateData? data) initial,
    required TResult Function(ExpenseStateData? data) expenes,
    required TResult Function(ExpenseStateData? data) expenesOriginal,
    required TResult Function(ExpenseStateData? data) categories,
    required TResult Function(ExpenseStateData? data) categoriesOriginal,
    required TResult Function(ExpenseStateData? data) status,
    required TResult Function(ExpenseStateData? data) totalExpense,
    required TResult Function(ExpenseStateData? data) totalRevenue,
  }) {
    return expenes(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseStateData? data)? initial,
    TResult? Function(ExpenseStateData? data)? expenes,
    TResult? Function(ExpenseStateData? data)? expenesOriginal,
    TResult? Function(ExpenseStateData? data)? categories,
    TResult? Function(ExpenseStateData? data)? categoriesOriginal,
    TResult? Function(ExpenseStateData? data)? status,
    TResult? Function(ExpenseStateData? data)? totalExpense,
    TResult? Function(ExpenseStateData? data)? totalRevenue,
  }) {
    return expenes?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseStateData? data)? initial,
    TResult Function(ExpenseStateData? data)? expenes,
    TResult Function(ExpenseStateData? data)? expenesOriginal,
    TResult Function(ExpenseStateData? data)? categories,
    TResult Function(ExpenseStateData? data)? categoriesOriginal,
    TResult Function(ExpenseStateData? data)? status,
    TResult Function(ExpenseStateData? data)? totalExpense,
    TResult Function(ExpenseStateData? data)? totalRevenue,
    required TResult orElse(),
  }) {
    if (expenes != null) {
      return expenes(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Expenses value) expenes,
    required TResult Function(ExpensesOriginal value) expenesOriginal,
    required TResult Function(Categories value) categories,
    required TResult Function(CategoriesOriginal value) categoriesOriginal,
    required TResult Function(Status value) status,
    required TResult Function(TotalExpense value) totalExpense,
    required TResult Function(TotalRevenue value) totalRevenue,
  }) {
    return expenes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Expenses value)? expenes,
    TResult? Function(ExpensesOriginal value)? expenesOriginal,
    TResult? Function(Categories value)? categories,
    TResult? Function(CategoriesOriginal value)? categoriesOriginal,
    TResult? Function(Status value)? status,
    TResult? Function(TotalExpense value)? totalExpense,
    TResult? Function(TotalRevenue value)? totalRevenue,
  }) {
    return expenes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Expenses value)? expenes,
    TResult Function(ExpensesOriginal value)? expenesOriginal,
    TResult Function(Categories value)? categories,
    TResult Function(CategoriesOriginal value)? categoriesOriginal,
    TResult Function(Status value)? status,
    TResult Function(TotalExpense value)? totalExpense,
    TResult Function(TotalRevenue value)? totalRevenue,
    required TResult orElse(),
  }) {
    if (expenes != null) {
      return expenes(this);
    }
    return orElse();
  }
}

abstract class Expenses implements ExpenseState {
  const factory Expenses(final ExpenseStateData? data) = _$Expenses;

  @override
  ExpenseStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ExpensesCopyWith<_$Expenses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpensesOriginalCopyWith<$Res>
    implements $ExpenseStateCopyWith<$Res> {
  factory _$$ExpensesOriginalCopyWith(
          _$ExpensesOriginal value, $Res Function(_$ExpensesOriginal) then) =
      __$$ExpensesOriginalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseStateData? data});

  @override
  $ExpenseStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ExpensesOriginalCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$ExpensesOriginal>
    implements _$$ExpensesOriginalCopyWith<$Res> {
  __$$ExpensesOriginalCopyWithImpl(
      _$ExpensesOriginal _value, $Res Function(_$ExpensesOriginal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ExpensesOriginal(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExpenseStateData?,
    ));
  }
}

/// @nodoc

class _$ExpensesOriginal implements ExpensesOriginal {
  const _$ExpensesOriginal(this.data);

  @override
  final ExpenseStateData? data;

  @override
  String toString() {
    return 'ExpenseState.expenesOriginal(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpensesOriginal &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpensesOriginalCopyWith<_$ExpensesOriginal> get copyWith =>
      __$$ExpensesOriginalCopyWithImpl<_$ExpensesOriginal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseStateData? data) initial,
    required TResult Function(ExpenseStateData? data) expenes,
    required TResult Function(ExpenseStateData? data) expenesOriginal,
    required TResult Function(ExpenseStateData? data) categories,
    required TResult Function(ExpenseStateData? data) categoriesOriginal,
    required TResult Function(ExpenseStateData? data) status,
    required TResult Function(ExpenseStateData? data) totalExpense,
    required TResult Function(ExpenseStateData? data) totalRevenue,
  }) {
    return expenesOriginal(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseStateData? data)? initial,
    TResult? Function(ExpenseStateData? data)? expenes,
    TResult? Function(ExpenseStateData? data)? expenesOriginal,
    TResult? Function(ExpenseStateData? data)? categories,
    TResult? Function(ExpenseStateData? data)? categoriesOriginal,
    TResult? Function(ExpenseStateData? data)? status,
    TResult? Function(ExpenseStateData? data)? totalExpense,
    TResult? Function(ExpenseStateData? data)? totalRevenue,
  }) {
    return expenesOriginal?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseStateData? data)? initial,
    TResult Function(ExpenseStateData? data)? expenes,
    TResult Function(ExpenseStateData? data)? expenesOriginal,
    TResult Function(ExpenseStateData? data)? categories,
    TResult Function(ExpenseStateData? data)? categoriesOriginal,
    TResult Function(ExpenseStateData? data)? status,
    TResult Function(ExpenseStateData? data)? totalExpense,
    TResult Function(ExpenseStateData? data)? totalRevenue,
    required TResult orElse(),
  }) {
    if (expenesOriginal != null) {
      return expenesOriginal(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Expenses value) expenes,
    required TResult Function(ExpensesOriginal value) expenesOriginal,
    required TResult Function(Categories value) categories,
    required TResult Function(CategoriesOriginal value) categoriesOriginal,
    required TResult Function(Status value) status,
    required TResult Function(TotalExpense value) totalExpense,
    required TResult Function(TotalRevenue value) totalRevenue,
  }) {
    return expenesOriginal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Expenses value)? expenes,
    TResult? Function(ExpensesOriginal value)? expenesOriginal,
    TResult? Function(Categories value)? categories,
    TResult? Function(CategoriesOriginal value)? categoriesOriginal,
    TResult? Function(Status value)? status,
    TResult? Function(TotalExpense value)? totalExpense,
    TResult? Function(TotalRevenue value)? totalRevenue,
  }) {
    return expenesOriginal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Expenses value)? expenes,
    TResult Function(ExpensesOriginal value)? expenesOriginal,
    TResult Function(Categories value)? categories,
    TResult Function(CategoriesOriginal value)? categoriesOriginal,
    TResult Function(Status value)? status,
    TResult Function(TotalExpense value)? totalExpense,
    TResult Function(TotalRevenue value)? totalRevenue,
    required TResult orElse(),
  }) {
    if (expenesOriginal != null) {
      return expenesOriginal(this);
    }
    return orElse();
  }
}

abstract class ExpensesOriginal implements ExpenseState {
  const factory ExpensesOriginal(final ExpenseStateData? data) =
      _$ExpensesOriginal;

  @override
  ExpenseStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ExpensesOriginalCopyWith<_$ExpensesOriginal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesCopyWith<$Res>
    implements $ExpenseStateCopyWith<$Res> {
  factory _$$CategoriesCopyWith(
          _$Categories value, $Res Function(_$Categories) then) =
      __$$CategoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseStateData? data});

  @override
  $ExpenseStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CategoriesCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$Categories>
    implements _$$CategoriesCopyWith<$Res> {
  __$$CategoriesCopyWithImpl(
      _$Categories _value, $Res Function(_$Categories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Categories(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExpenseStateData?,
    ));
  }
}

/// @nodoc

class _$Categories implements Categories {
  const _$Categories(this.data);

  @override
  final ExpenseStateData? data;

  @override
  String toString() {
    return 'ExpenseState.categories(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Categories &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesCopyWith<_$Categories> get copyWith =>
      __$$CategoriesCopyWithImpl<_$Categories>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseStateData? data) initial,
    required TResult Function(ExpenseStateData? data) expenes,
    required TResult Function(ExpenseStateData? data) expenesOriginal,
    required TResult Function(ExpenseStateData? data) categories,
    required TResult Function(ExpenseStateData? data) categoriesOriginal,
    required TResult Function(ExpenseStateData? data) status,
    required TResult Function(ExpenseStateData? data) totalExpense,
    required TResult Function(ExpenseStateData? data) totalRevenue,
  }) {
    return categories(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseStateData? data)? initial,
    TResult? Function(ExpenseStateData? data)? expenes,
    TResult? Function(ExpenseStateData? data)? expenesOriginal,
    TResult? Function(ExpenseStateData? data)? categories,
    TResult? Function(ExpenseStateData? data)? categoriesOriginal,
    TResult? Function(ExpenseStateData? data)? status,
    TResult? Function(ExpenseStateData? data)? totalExpense,
    TResult? Function(ExpenseStateData? data)? totalRevenue,
  }) {
    return categories?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseStateData? data)? initial,
    TResult Function(ExpenseStateData? data)? expenes,
    TResult Function(ExpenseStateData? data)? expenesOriginal,
    TResult Function(ExpenseStateData? data)? categories,
    TResult Function(ExpenseStateData? data)? categoriesOriginal,
    TResult Function(ExpenseStateData? data)? status,
    TResult Function(ExpenseStateData? data)? totalExpense,
    TResult Function(ExpenseStateData? data)? totalRevenue,
    required TResult orElse(),
  }) {
    if (categories != null) {
      return categories(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Expenses value) expenes,
    required TResult Function(ExpensesOriginal value) expenesOriginal,
    required TResult Function(Categories value) categories,
    required TResult Function(CategoriesOriginal value) categoriesOriginal,
    required TResult Function(Status value) status,
    required TResult Function(TotalExpense value) totalExpense,
    required TResult Function(TotalRevenue value) totalRevenue,
  }) {
    return categories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Expenses value)? expenes,
    TResult? Function(ExpensesOriginal value)? expenesOriginal,
    TResult? Function(Categories value)? categories,
    TResult? Function(CategoriesOriginal value)? categoriesOriginal,
    TResult? Function(Status value)? status,
    TResult? Function(TotalExpense value)? totalExpense,
    TResult? Function(TotalRevenue value)? totalRevenue,
  }) {
    return categories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Expenses value)? expenes,
    TResult Function(ExpensesOriginal value)? expenesOriginal,
    TResult Function(Categories value)? categories,
    TResult Function(CategoriesOriginal value)? categoriesOriginal,
    TResult Function(Status value)? status,
    TResult Function(TotalExpense value)? totalExpense,
    TResult Function(TotalRevenue value)? totalRevenue,
    required TResult orElse(),
  }) {
    if (categories != null) {
      return categories(this);
    }
    return orElse();
  }
}

abstract class Categories implements ExpenseState {
  const factory Categories(final ExpenseStateData? data) = _$Categories;

  @override
  ExpenseStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesCopyWith<_$Categories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesOriginalCopyWith<$Res>
    implements $ExpenseStateCopyWith<$Res> {
  factory _$$CategoriesOriginalCopyWith(_$CategoriesOriginal value,
          $Res Function(_$CategoriesOriginal) then) =
      __$$CategoriesOriginalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseStateData? data});

  @override
  $ExpenseStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CategoriesOriginalCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$CategoriesOriginal>
    implements _$$CategoriesOriginalCopyWith<$Res> {
  __$$CategoriesOriginalCopyWithImpl(
      _$CategoriesOriginal _value, $Res Function(_$CategoriesOriginal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CategoriesOriginal(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExpenseStateData?,
    ));
  }
}

/// @nodoc

class _$CategoriesOriginal implements CategoriesOriginal {
  const _$CategoriesOriginal(this.data);

  @override
  final ExpenseStateData? data;

  @override
  String toString() {
    return 'ExpenseState.categoriesOriginal(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesOriginal &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesOriginalCopyWith<_$CategoriesOriginal> get copyWith =>
      __$$CategoriesOriginalCopyWithImpl<_$CategoriesOriginal>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseStateData? data) initial,
    required TResult Function(ExpenseStateData? data) expenes,
    required TResult Function(ExpenseStateData? data) expenesOriginal,
    required TResult Function(ExpenseStateData? data) categories,
    required TResult Function(ExpenseStateData? data) categoriesOriginal,
    required TResult Function(ExpenseStateData? data) status,
    required TResult Function(ExpenseStateData? data) totalExpense,
    required TResult Function(ExpenseStateData? data) totalRevenue,
  }) {
    return categoriesOriginal(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseStateData? data)? initial,
    TResult? Function(ExpenseStateData? data)? expenes,
    TResult? Function(ExpenseStateData? data)? expenesOriginal,
    TResult? Function(ExpenseStateData? data)? categories,
    TResult? Function(ExpenseStateData? data)? categoriesOriginal,
    TResult? Function(ExpenseStateData? data)? status,
    TResult? Function(ExpenseStateData? data)? totalExpense,
    TResult? Function(ExpenseStateData? data)? totalRevenue,
  }) {
    return categoriesOriginal?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseStateData? data)? initial,
    TResult Function(ExpenseStateData? data)? expenes,
    TResult Function(ExpenseStateData? data)? expenesOriginal,
    TResult Function(ExpenseStateData? data)? categories,
    TResult Function(ExpenseStateData? data)? categoriesOriginal,
    TResult Function(ExpenseStateData? data)? status,
    TResult Function(ExpenseStateData? data)? totalExpense,
    TResult Function(ExpenseStateData? data)? totalRevenue,
    required TResult orElse(),
  }) {
    if (categoriesOriginal != null) {
      return categoriesOriginal(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Expenses value) expenes,
    required TResult Function(ExpensesOriginal value) expenesOriginal,
    required TResult Function(Categories value) categories,
    required TResult Function(CategoriesOriginal value) categoriesOriginal,
    required TResult Function(Status value) status,
    required TResult Function(TotalExpense value) totalExpense,
    required TResult Function(TotalRevenue value) totalRevenue,
  }) {
    return categoriesOriginal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Expenses value)? expenes,
    TResult? Function(ExpensesOriginal value)? expenesOriginal,
    TResult? Function(Categories value)? categories,
    TResult? Function(CategoriesOriginal value)? categoriesOriginal,
    TResult? Function(Status value)? status,
    TResult? Function(TotalExpense value)? totalExpense,
    TResult? Function(TotalRevenue value)? totalRevenue,
  }) {
    return categoriesOriginal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Expenses value)? expenes,
    TResult Function(ExpensesOriginal value)? expenesOriginal,
    TResult Function(Categories value)? categories,
    TResult Function(CategoriesOriginal value)? categoriesOriginal,
    TResult Function(Status value)? status,
    TResult Function(TotalExpense value)? totalExpense,
    TResult Function(TotalRevenue value)? totalRevenue,
    required TResult orElse(),
  }) {
    if (categoriesOriginal != null) {
      return categoriesOriginal(this);
    }
    return orElse();
  }
}

abstract class CategoriesOriginal implements ExpenseState {
  const factory CategoriesOriginal(final ExpenseStateData? data) =
      _$CategoriesOriginal;

  @override
  ExpenseStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesOriginalCopyWith<_$CategoriesOriginal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $ExpenseStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseStateData? data});

  @override
  $ExpenseStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$Status>
    implements _$$StatusCopyWith<$Res> {
  __$$StatusCopyWithImpl(_$Status _value, $Res Function(_$Status) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Status(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExpenseStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status(this.data);

  @override
  final ExpenseStateData? data;

  @override
  String toString() {
    return 'ExpenseState.status(data: $data)';
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
    required TResult Function(ExpenseStateData? data) initial,
    required TResult Function(ExpenseStateData? data) expenes,
    required TResult Function(ExpenseStateData? data) expenesOriginal,
    required TResult Function(ExpenseStateData? data) categories,
    required TResult Function(ExpenseStateData? data) categoriesOriginal,
    required TResult Function(ExpenseStateData? data) status,
    required TResult Function(ExpenseStateData? data) totalExpense,
    required TResult Function(ExpenseStateData? data) totalRevenue,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseStateData? data)? initial,
    TResult? Function(ExpenseStateData? data)? expenes,
    TResult? Function(ExpenseStateData? data)? expenesOriginal,
    TResult? Function(ExpenseStateData? data)? categories,
    TResult? Function(ExpenseStateData? data)? categoriesOriginal,
    TResult? Function(ExpenseStateData? data)? status,
    TResult? Function(ExpenseStateData? data)? totalExpense,
    TResult? Function(ExpenseStateData? data)? totalRevenue,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseStateData? data)? initial,
    TResult Function(ExpenseStateData? data)? expenes,
    TResult Function(ExpenseStateData? data)? expenesOriginal,
    TResult Function(ExpenseStateData? data)? categories,
    TResult Function(ExpenseStateData? data)? categoriesOriginal,
    TResult Function(ExpenseStateData? data)? status,
    TResult Function(ExpenseStateData? data)? totalExpense,
    TResult Function(ExpenseStateData? data)? totalRevenue,
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
    required TResult Function(Expenses value) expenes,
    required TResult Function(ExpensesOriginal value) expenesOriginal,
    required TResult Function(Categories value) categories,
    required TResult Function(CategoriesOriginal value) categoriesOriginal,
    required TResult Function(Status value) status,
    required TResult Function(TotalExpense value) totalExpense,
    required TResult Function(TotalRevenue value) totalRevenue,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Expenses value)? expenes,
    TResult? Function(ExpensesOriginal value)? expenesOriginal,
    TResult? Function(Categories value)? categories,
    TResult? Function(CategoriesOriginal value)? categoriesOriginal,
    TResult? Function(Status value)? status,
    TResult? Function(TotalExpense value)? totalExpense,
    TResult? Function(TotalRevenue value)? totalRevenue,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Expenses value)? expenes,
    TResult Function(ExpensesOriginal value)? expenesOriginal,
    TResult Function(Categories value)? categories,
    TResult Function(CategoriesOriginal value)? categoriesOriginal,
    TResult Function(Status value)? status,
    TResult Function(TotalExpense value)? totalExpense,
    TResult Function(TotalRevenue value)? totalRevenue,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements ExpenseState {
  const factory Status(final ExpenseStateData? data) = _$Status;

  @override
  ExpenseStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TotalExpenseCopyWith<$Res>
    implements $ExpenseStateCopyWith<$Res> {
  factory _$$TotalExpenseCopyWith(
          _$TotalExpense value, $Res Function(_$TotalExpense) then) =
      __$$TotalExpenseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseStateData? data});

  @override
  $ExpenseStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TotalExpenseCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$TotalExpense>
    implements _$$TotalExpenseCopyWith<$Res> {
  __$$TotalExpenseCopyWithImpl(
      _$TotalExpense _value, $Res Function(_$TotalExpense) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TotalExpense(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExpenseStateData?,
    ));
  }
}

/// @nodoc

class _$TotalExpense implements TotalExpense {
  const _$TotalExpense(this.data);

  @override
  final ExpenseStateData? data;

  @override
  String toString() {
    return 'ExpenseState.totalExpense(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalExpense &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalExpenseCopyWith<_$TotalExpense> get copyWith =>
      __$$TotalExpenseCopyWithImpl<_$TotalExpense>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseStateData? data) initial,
    required TResult Function(ExpenseStateData? data) expenes,
    required TResult Function(ExpenseStateData? data) expenesOriginal,
    required TResult Function(ExpenseStateData? data) categories,
    required TResult Function(ExpenseStateData? data) categoriesOriginal,
    required TResult Function(ExpenseStateData? data) status,
    required TResult Function(ExpenseStateData? data) totalExpense,
    required TResult Function(ExpenseStateData? data) totalRevenue,
  }) {
    return totalExpense(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseStateData? data)? initial,
    TResult? Function(ExpenseStateData? data)? expenes,
    TResult? Function(ExpenseStateData? data)? expenesOriginal,
    TResult? Function(ExpenseStateData? data)? categories,
    TResult? Function(ExpenseStateData? data)? categoriesOriginal,
    TResult? Function(ExpenseStateData? data)? status,
    TResult? Function(ExpenseStateData? data)? totalExpense,
    TResult? Function(ExpenseStateData? data)? totalRevenue,
  }) {
    return totalExpense?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseStateData? data)? initial,
    TResult Function(ExpenseStateData? data)? expenes,
    TResult Function(ExpenseStateData? data)? expenesOriginal,
    TResult Function(ExpenseStateData? data)? categories,
    TResult Function(ExpenseStateData? data)? categoriesOriginal,
    TResult Function(ExpenseStateData? data)? status,
    TResult Function(ExpenseStateData? data)? totalExpense,
    TResult Function(ExpenseStateData? data)? totalRevenue,
    required TResult orElse(),
  }) {
    if (totalExpense != null) {
      return totalExpense(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Expenses value) expenes,
    required TResult Function(ExpensesOriginal value) expenesOriginal,
    required TResult Function(Categories value) categories,
    required TResult Function(CategoriesOriginal value) categoriesOriginal,
    required TResult Function(Status value) status,
    required TResult Function(TotalExpense value) totalExpense,
    required TResult Function(TotalRevenue value) totalRevenue,
  }) {
    return totalExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Expenses value)? expenes,
    TResult? Function(ExpensesOriginal value)? expenesOriginal,
    TResult? Function(Categories value)? categories,
    TResult? Function(CategoriesOriginal value)? categoriesOriginal,
    TResult? Function(Status value)? status,
    TResult? Function(TotalExpense value)? totalExpense,
    TResult? Function(TotalRevenue value)? totalRevenue,
  }) {
    return totalExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Expenses value)? expenes,
    TResult Function(ExpensesOriginal value)? expenesOriginal,
    TResult Function(Categories value)? categories,
    TResult Function(CategoriesOriginal value)? categoriesOriginal,
    TResult Function(Status value)? status,
    TResult Function(TotalExpense value)? totalExpense,
    TResult Function(TotalRevenue value)? totalRevenue,
    required TResult orElse(),
  }) {
    if (totalExpense != null) {
      return totalExpense(this);
    }
    return orElse();
  }
}

abstract class TotalExpense implements ExpenseState {
  const factory TotalExpense(final ExpenseStateData? data) = _$TotalExpense;

  @override
  ExpenseStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$TotalExpenseCopyWith<_$TotalExpense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TotalRevenueCopyWith<$Res>
    implements $ExpenseStateCopyWith<$Res> {
  factory _$$TotalRevenueCopyWith(
          _$TotalRevenue value, $Res Function(_$TotalRevenue) then) =
      __$$TotalRevenueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseStateData? data});

  @override
  $ExpenseStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TotalRevenueCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$TotalRevenue>
    implements _$$TotalRevenueCopyWith<$Res> {
  __$$TotalRevenueCopyWithImpl(
      _$TotalRevenue _value, $Res Function(_$TotalRevenue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TotalRevenue(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExpenseStateData?,
    ));
  }
}

/// @nodoc

class _$TotalRevenue implements TotalRevenue {
  const _$TotalRevenue(this.data);

  @override
  final ExpenseStateData? data;

  @override
  String toString() {
    return 'ExpenseState.totalRevenue(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalRevenue &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalRevenueCopyWith<_$TotalRevenue> get copyWith =>
      __$$TotalRevenueCopyWithImpl<_$TotalRevenue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseStateData? data) initial,
    required TResult Function(ExpenseStateData? data) expenes,
    required TResult Function(ExpenseStateData? data) expenesOriginal,
    required TResult Function(ExpenseStateData? data) categories,
    required TResult Function(ExpenseStateData? data) categoriesOriginal,
    required TResult Function(ExpenseStateData? data) status,
    required TResult Function(ExpenseStateData? data) totalExpense,
    required TResult Function(ExpenseStateData? data) totalRevenue,
  }) {
    return totalRevenue(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseStateData? data)? initial,
    TResult? Function(ExpenseStateData? data)? expenes,
    TResult? Function(ExpenseStateData? data)? expenesOriginal,
    TResult? Function(ExpenseStateData? data)? categories,
    TResult? Function(ExpenseStateData? data)? categoriesOriginal,
    TResult? Function(ExpenseStateData? data)? status,
    TResult? Function(ExpenseStateData? data)? totalExpense,
    TResult? Function(ExpenseStateData? data)? totalRevenue,
  }) {
    return totalRevenue?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseStateData? data)? initial,
    TResult Function(ExpenseStateData? data)? expenes,
    TResult Function(ExpenseStateData? data)? expenesOriginal,
    TResult Function(ExpenseStateData? data)? categories,
    TResult Function(ExpenseStateData? data)? categoriesOriginal,
    TResult Function(ExpenseStateData? data)? status,
    TResult Function(ExpenseStateData? data)? totalExpense,
    TResult Function(ExpenseStateData? data)? totalRevenue,
    required TResult orElse(),
  }) {
    if (totalRevenue != null) {
      return totalRevenue(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Expenses value) expenes,
    required TResult Function(ExpensesOriginal value) expenesOriginal,
    required TResult Function(Categories value) categories,
    required TResult Function(CategoriesOriginal value) categoriesOriginal,
    required TResult Function(Status value) status,
    required TResult Function(TotalExpense value) totalExpense,
    required TResult Function(TotalRevenue value) totalRevenue,
  }) {
    return totalRevenue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Expenses value)? expenes,
    TResult? Function(ExpensesOriginal value)? expenesOriginal,
    TResult? Function(Categories value)? categories,
    TResult? Function(CategoriesOriginal value)? categoriesOriginal,
    TResult? Function(Status value)? status,
    TResult? Function(TotalExpense value)? totalExpense,
    TResult? Function(TotalRevenue value)? totalRevenue,
  }) {
    return totalRevenue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Expenses value)? expenes,
    TResult Function(ExpensesOriginal value)? expenesOriginal,
    TResult Function(Categories value)? categories,
    TResult Function(CategoriesOriginal value)? categoriesOriginal,
    TResult Function(Status value)? status,
    TResult Function(TotalExpense value)? totalExpense,
    TResult Function(TotalRevenue value)? totalRevenue,
    required TResult orElse(),
  }) {
    if (totalRevenue != null) {
      return totalRevenue(this);
    }
    return orElse();
  }
}

abstract class TotalRevenue implements ExpenseState {
  const factory TotalRevenue(final ExpenseStateData? data) = _$TotalRevenue;

  @override
  ExpenseStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$TotalRevenueCopyWith<_$TotalRevenue> get copyWith =>
      throw _privateConstructorUsedError;
}
