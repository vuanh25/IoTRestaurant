// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  Set<CategoryModel> get categoriesSelect => throw _privateConstructorUsedError;
  CategoryModel? get categoryModel => throw _privateConstructorUsedError;
  CategoryModel? get categorySelected => throw _privateConstructorUsedError;
  List<CategoryModel> get categoriesOriginal =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateDataCopyWith<CategoryStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateDataCopyWith<$Res> {
  factory $CategoryStateDataCopyWith(
          CategoryStateData value, $Res Function(CategoryStateData) then) =
      _$CategoryStateDataCopyWithImpl<$Res, CategoryStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<CategoryModel> categories,
      Set<CategoryModel> categoriesSelect,
      CategoryModel? categoryModel,
      CategoryModel? categorySelected,
      List<CategoryModel> categoriesOriginal});
}

/// @nodoc
class _$CategoryStateDataCopyWithImpl<$Res, $Val extends CategoryStateData>
    implements $CategoryStateDataCopyWith<$Res> {
  _$CategoryStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categories = null,
    Object? categoriesSelect = null,
    Object? categoryModel = freezed,
    Object? categorySelected = freezed,
    Object? categoriesOriginal = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      categoriesSelect: null == categoriesSelect
          ? _value.categoriesSelect
          : categoriesSelect // ignore: cast_nullable_to_non_nullable
              as Set<CategoryModel>,
      categoryModel: freezed == categoryModel
          ? _value.categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      categorySelected: freezed == categorySelected
          ? _value.categorySelected
          : categorySelected // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      categoriesOriginal: null == categoriesOriginal
          ? _value.categoriesOriginal
          : categoriesOriginal // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryStateDataCopyWith<$Res>
    implements $CategoryStateDataCopyWith<$Res> {
  factory _$$_CategoryStateDataCopyWith(_$_CategoryStateData value,
          $Res Function(_$_CategoryStateData) then) =
      __$$_CategoryStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<CategoryModel> categories,
      Set<CategoryModel> categoriesSelect,
      CategoryModel? categoryModel,
      CategoryModel? categorySelected,
      List<CategoryModel> categoriesOriginal});
}

/// @nodoc
class __$$_CategoryStateDataCopyWithImpl<$Res>
    extends _$CategoryStateDataCopyWithImpl<$Res, _$_CategoryStateData>
    implements _$$_CategoryStateDataCopyWith<$Res> {
  __$$_CategoryStateDataCopyWithImpl(
      _$_CategoryStateData _value, $Res Function(_$_CategoryStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categories = null,
    Object? categoriesSelect = null,
    Object? categoryModel = freezed,
    Object? categorySelected = freezed,
    Object? categoriesOriginal = null,
  }) {
    return _then(_$_CategoryStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      categoriesSelect: null == categoriesSelect
          ? _value._categoriesSelect
          : categoriesSelect // ignore: cast_nullable_to_non_nullable
              as Set<CategoryModel>,
      categoryModel: freezed == categoryModel
          ? _value.categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      categorySelected: freezed == categorySelected
          ? _value.categorySelected
          : categorySelected // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      categoriesOriginal: null == categoriesOriginal
          ? _value._categoriesOriginal
          : categoriesOriginal // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$_CategoryStateData implements _CategoryStateData {
  const _$_CategoryStateData(
      {this.status = StatusType.init,
      final List<CategoryModel> categories = const [],
      final Set<CategoryModel> categoriesSelect = const {},
      this.categoryModel,
      this.categorySelected,
      final List<CategoryModel> categoriesOriginal = const []})
      : _categories = categories,
        _categoriesSelect = categoriesSelect,
        _categoriesOriginal = categoriesOriginal;

  @override
  @JsonKey()
  final StatusType status;
  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final Set<CategoryModel> _categoriesSelect;
  @override
  @JsonKey()
  Set<CategoryModel> get categoriesSelect {
    if (_categoriesSelect is EqualUnmodifiableSetView) return _categoriesSelect;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_categoriesSelect);
  }

  @override
  final CategoryModel? categoryModel;
  @override
  final CategoryModel? categorySelected;
  final List<CategoryModel> _categoriesOriginal;
  @override
  @JsonKey()
  List<CategoryModel> get categoriesOriginal {
    if (_categoriesOriginal is EqualUnmodifiableListView)
      return _categoriesOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesOriginal);
  }

  @override
  String toString() {
    return 'CategoryStateData(status: $status, categories: $categories, categoriesSelect: $categoriesSelect, categoryModel: $categoryModel, categorySelected: $categorySelected, categoriesOriginal: $categoriesOriginal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._categoriesSelect, _categoriesSelect) &&
            (identical(other.categoryModel, categoryModel) ||
                other.categoryModel == categoryModel) &&
            (identical(other.categorySelected, categorySelected) ||
                other.categorySelected == categorySelected) &&
            const DeepCollectionEquality()
                .equals(other._categoriesOriginal, _categoriesOriginal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_categoriesSelect),
      categoryModel,
      categorySelected,
      const DeepCollectionEquality().hash(_categoriesOriginal));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryStateDataCopyWith<_$_CategoryStateData> get copyWith =>
      __$$_CategoryStateDataCopyWithImpl<_$_CategoryStateData>(
          this, _$identity);
}

abstract class _CategoryStateData implements CategoryStateData {
  const factory _CategoryStateData(
      {final StatusType status,
      final List<CategoryModel> categories,
      final Set<CategoryModel> categoriesSelect,
      final CategoryModel? categoryModel,
      final CategoryModel? categorySelected,
      final List<CategoryModel> categoriesOriginal}) = _$_CategoryStateData;

  @override
  StatusType get status;
  @override
  List<CategoryModel> get categories;
  @override
  Set<CategoryModel> get categoriesSelect;
  @override
  CategoryModel? get categoryModel;
  @override
  CategoryModel? get categorySelected;
  @override
  List<CategoryModel> get categoriesOriginal;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryStateDataCopyWith<_$_CategoryStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  CategoryStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryStateData? data) initial,
    required TResult Function(CategoryStateData? data) status,
    required TResult Function(CategoryStateData? data) getCategories,
    required TResult Function(CategoryStateData? data) removeCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategorySelected,
    required TResult Function(CategoryStateData? data) getCategory,
    required TResult Function(CategoryStateData? data) setCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateData? data)? initial,
    TResult? Function(CategoryStateData? data)? status,
    TResult? Function(CategoryStateData? data)? getCategories,
    TResult? Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategorySelected,
    TResult? Function(CategoryStateData? data)? getCategory,
    TResult? Function(CategoryStateData? data)? setCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryStateData? data)? initial,
    TResult Function(CategoryStateData? data)? status,
    TResult Function(CategoryStateData? data)? getCategories,
    TResult Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategorySelected,
    TResult Function(CategoryStateData? data)? getCategory,
    TResult Function(CategoryStateData? data)? setCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCatgeories value) getCategories,
    required TResult Function(RemoveCategoriesSelected value)
        removeCategoriesSelected,
    required TResult Function(AddCategorySelected value) addCategorySelected,
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(SetCategoriesSelected value)
        setCategoriesSelected,
    required TResult Function(AddCategory value) addCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCatgeories value)? getCategories,
    TResult? Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult? Function(AddCategorySelected value)? addCategorySelected,
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult? Function(AddCategory value)? addCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCatgeories value)? getCategories,
    TResult Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult Function(AddCategorySelected value)? addCategorySelected,
    TResult Function(GetCategory value)? getCategory,
    TResult Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult Function(AddCategory value)? addCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call({CategoryStateData? data});

  $CategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

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
              as CategoryStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CategoryStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryStateData? data});

  @override
  $CategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$Initial>
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
              as CategoryStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final CategoryStateData? data;

  @override
  String toString() {
    return 'CategoryState.initial(data: $data)';
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
    required TResult Function(CategoryStateData? data) initial,
    required TResult Function(CategoryStateData? data) status,
    required TResult Function(CategoryStateData? data) getCategories,
    required TResult Function(CategoryStateData? data) removeCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategorySelected,
    required TResult Function(CategoryStateData? data) getCategory,
    required TResult Function(CategoryStateData? data) setCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategory,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateData? data)? initial,
    TResult? Function(CategoryStateData? data)? status,
    TResult? Function(CategoryStateData? data)? getCategories,
    TResult? Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategorySelected,
    TResult? Function(CategoryStateData? data)? getCategory,
    TResult? Function(CategoryStateData? data)? setCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategory,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryStateData? data)? initial,
    TResult Function(CategoryStateData? data)? status,
    TResult Function(CategoryStateData? data)? getCategories,
    TResult Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategorySelected,
    TResult Function(CategoryStateData? data)? getCategory,
    TResult Function(CategoryStateData? data)? setCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategory,
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
    required TResult Function(GetCatgeories value) getCategories,
    required TResult Function(RemoveCategoriesSelected value)
        removeCategoriesSelected,
    required TResult Function(AddCategorySelected value) addCategorySelected,
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(SetCategoriesSelected value)
        setCategoriesSelected,
    required TResult Function(AddCategory value) addCategory,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCatgeories value)? getCategories,
    TResult? Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult? Function(AddCategorySelected value)? addCategorySelected,
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult? Function(AddCategory value)? addCategory,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCatgeories value)? getCategories,
    TResult Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult Function(AddCategorySelected value)? addCategorySelected,
    TResult Function(GetCategory value)? getCategory,
    TResult Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult Function(AddCategory value)? addCategory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CategoryState {
  const factory Initial({final CategoryStateData? data}) = _$Initial;

  @override
  CategoryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $CategoryStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryStateData? data});

  @override
  $CategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$Status>
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
              as CategoryStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final CategoryStateData? data;

  @override
  String toString() {
    return 'CategoryState.status(data: $data)';
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
    required TResult Function(CategoryStateData? data) initial,
    required TResult Function(CategoryStateData? data) status,
    required TResult Function(CategoryStateData? data) getCategories,
    required TResult Function(CategoryStateData? data) removeCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategorySelected,
    required TResult Function(CategoryStateData? data) getCategory,
    required TResult Function(CategoryStateData? data) setCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategory,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateData? data)? initial,
    TResult? Function(CategoryStateData? data)? status,
    TResult? Function(CategoryStateData? data)? getCategories,
    TResult? Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategorySelected,
    TResult? Function(CategoryStateData? data)? getCategory,
    TResult? Function(CategoryStateData? data)? setCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategory,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryStateData? data)? initial,
    TResult Function(CategoryStateData? data)? status,
    TResult Function(CategoryStateData? data)? getCategories,
    TResult Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategorySelected,
    TResult Function(CategoryStateData? data)? getCategory,
    TResult Function(CategoryStateData? data)? setCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategory,
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
    required TResult Function(GetCatgeories value) getCategories,
    required TResult Function(RemoveCategoriesSelected value)
        removeCategoriesSelected,
    required TResult Function(AddCategorySelected value) addCategorySelected,
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(SetCategoriesSelected value)
        setCategoriesSelected,
    required TResult Function(AddCategory value) addCategory,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCatgeories value)? getCategories,
    TResult? Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult? Function(AddCategorySelected value)? addCategorySelected,
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult? Function(AddCategory value)? addCategory,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCatgeories value)? getCategories,
    TResult Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult Function(AddCategorySelected value)? addCategorySelected,
    TResult Function(GetCategory value)? getCategory,
    TResult Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult Function(AddCategory value)? addCategory,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements CategoryState {
  const factory Status({final CategoryStateData? data}) = _$Status;

  @override
  CategoryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCatgeoriesCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$GetCatgeoriesCopyWith(
          _$GetCatgeories value, $Res Function(_$GetCatgeories) then) =
      __$$GetCatgeoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryStateData? data});

  @override
  $CategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetCatgeoriesCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$GetCatgeories>
    implements _$$GetCatgeoriesCopyWith<$Res> {
  __$$GetCatgeoriesCopyWithImpl(
      _$GetCatgeories _value, $Res Function(_$GetCatgeories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCatgeories(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryStateData?,
    ));
  }
}

/// @nodoc

class _$GetCatgeories implements GetCatgeories {
  const _$GetCatgeories({this.data});

  @override
  final CategoryStateData? data;

  @override
  String toString() {
    return 'CategoryState.getCategories(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCatgeories &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCatgeoriesCopyWith<_$GetCatgeories> get copyWith =>
      __$$GetCatgeoriesCopyWithImpl<_$GetCatgeories>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryStateData? data) initial,
    required TResult Function(CategoryStateData? data) status,
    required TResult Function(CategoryStateData? data) getCategories,
    required TResult Function(CategoryStateData? data) removeCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategorySelected,
    required TResult Function(CategoryStateData? data) getCategory,
    required TResult Function(CategoryStateData? data) setCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategory,
  }) {
    return getCategories(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateData? data)? initial,
    TResult? Function(CategoryStateData? data)? status,
    TResult? Function(CategoryStateData? data)? getCategories,
    TResult? Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategorySelected,
    TResult? Function(CategoryStateData? data)? getCategory,
    TResult? Function(CategoryStateData? data)? setCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategory,
  }) {
    return getCategories?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryStateData? data)? initial,
    TResult Function(CategoryStateData? data)? status,
    TResult Function(CategoryStateData? data)? getCategories,
    TResult Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategorySelected,
    TResult Function(CategoryStateData? data)? getCategory,
    TResult Function(CategoryStateData? data)? setCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategory,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCatgeories value) getCategories,
    required TResult Function(RemoveCategoriesSelected value)
        removeCategoriesSelected,
    required TResult Function(AddCategorySelected value) addCategorySelected,
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(SetCategoriesSelected value)
        setCategoriesSelected,
    required TResult Function(AddCategory value) addCategory,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCatgeories value)? getCategories,
    TResult? Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult? Function(AddCategorySelected value)? addCategorySelected,
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult? Function(AddCategory value)? addCategory,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCatgeories value)? getCategories,
    TResult Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult Function(AddCategorySelected value)? addCategorySelected,
    TResult Function(GetCategory value)? getCategory,
    TResult Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult Function(AddCategory value)? addCategory,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class GetCatgeories implements CategoryState {
  const factory GetCatgeories({final CategoryStateData? data}) =
      _$GetCatgeories;

  @override
  CategoryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetCatgeoriesCopyWith<_$GetCatgeories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCategoriesSelectedCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$RemoveCategoriesSelectedCopyWith(_$RemoveCategoriesSelected value,
          $Res Function(_$RemoveCategoriesSelected) then) =
      __$$RemoveCategoriesSelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryStateData? data});

  @override
  $CategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RemoveCategoriesSelectedCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$RemoveCategoriesSelected>
    implements _$$RemoveCategoriesSelectedCopyWith<$Res> {
  __$$RemoveCategoriesSelectedCopyWithImpl(_$RemoveCategoriesSelected _value,
      $Res Function(_$RemoveCategoriesSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RemoveCategoriesSelected(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryStateData?,
    ));
  }
}

/// @nodoc

class _$RemoveCategoriesSelected implements RemoveCategoriesSelected {
  const _$RemoveCategoriesSelected({this.data});

  @override
  final CategoryStateData? data;

  @override
  String toString() {
    return 'CategoryState.removeCategoriesSelected(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCategoriesSelected &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCategoriesSelectedCopyWith<_$RemoveCategoriesSelected>
      get copyWith =>
          __$$RemoveCategoriesSelectedCopyWithImpl<_$RemoveCategoriesSelected>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryStateData? data) initial,
    required TResult Function(CategoryStateData? data) status,
    required TResult Function(CategoryStateData? data) getCategories,
    required TResult Function(CategoryStateData? data) removeCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategorySelected,
    required TResult Function(CategoryStateData? data) getCategory,
    required TResult Function(CategoryStateData? data) setCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategory,
  }) {
    return removeCategoriesSelected(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateData? data)? initial,
    TResult? Function(CategoryStateData? data)? status,
    TResult? Function(CategoryStateData? data)? getCategories,
    TResult? Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategorySelected,
    TResult? Function(CategoryStateData? data)? getCategory,
    TResult? Function(CategoryStateData? data)? setCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategory,
  }) {
    return removeCategoriesSelected?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryStateData? data)? initial,
    TResult Function(CategoryStateData? data)? status,
    TResult Function(CategoryStateData? data)? getCategories,
    TResult Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategorySelected,
    TResult Function(CategoryStateData? data)? getCategory,
    TResult Function(CategoryStateData? data)? setCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategory,
    required TResult orElse(),
  }) {
    if (removeCategoriesSelected != null) {
      return removeCategoriesSelected(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCatgeories value) getCategories,
    required TResult Function(RemoveCategoriesSelected value)
        removeCategoriesSelected,
    required TResult Function(AddCategorySelected value) addCategorySelected,
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(SetCategoriesSelected value)
        setCategoriesSelected,
    required TResult Function(AddCategory value) addCategory,
  }) {
    return removeCategoriesSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCatgeories value)? getCategories,
    TResult? Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult? Function(AddCategorySelected value)? addCategorySelected,
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult? Function(AddCategory value)? addCategory,
  }) {
    return removeCategoriesSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCatgeories value)? getCategories,
    TResult Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult Function(AddCategorySelected value)? addCategorySelected,
    TResult Function(GetCategory value)? getCategory,
    TResult Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult Function(AddCategory value)? addCategory,
    required TResult orElse(),
  }) {
    if (removeCategoriesSelected != null) {
      return removeCategoriesSelected(this);
    }
    return orElse();
  }
}

abstract class RemoveCategoriesSelected implements CategoryState {
  const factory RemoveCategoriesSelected({final CategoryStateData? data}) =
      _$RemoveCategoriesSelected;

  @override
  CategoryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$RemoveCategoriesSelectedCopyWith<_$RemoveCategoriesSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCategorySelectedCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$AddCategorySelectedCopyWith(_$AddCategorySelected value,
          $Res Function(_$AddCategorySelected) then) =
      __$$AddCategorySelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryStateData? data});

  @override
  $CategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AddCategorySelectedCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$AddCategorySelected>
    implements _$$AddCategorySelectedCopyWith<$Res> {
  __$$AddCategorySelectedCopyWithImpl(
      _$AddCategorySelected _value, $Res Function(_$AddCategorySelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AddCategorySelected(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryStateData?,
    ));
  }
}

/// @nodoc

class _$AddCategorySelected implements AddCategorySelected {
  const _$AddCategorySelected({this.data});

  @override
  final CategoryStateData? data;

  @override
  String toString() {
    return 'CategoryState.addCategorySelected(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategorySelected &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategorySelectedCopyWith<_$AddCategorySelected> get copyWith =>
      __$$AddCategorySelectedCopyWithImpl<_$AddCategorySelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryStateData? data) initial,
    required TResult Function(CategoryStateData? data) status,
    required TResult Function(CategoryStateData? data) getCategories,
    required TResult Function(CategoryStateData? data) removeCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategorySelected,
    required TResult Function(CategoryStateData? data) getCategory,
    required TResult Function(CategoryStateData? data) setCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategory,
  }) {
    return addCategorySelected(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateData? data)? initial,
    TResult? Function(CategoryStateData? data)? status,
    TResult? Function(CategoryStateData? data)? getCategories,
    TResult? Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategorySelected,
    TResult? Function(CategoryStateData? data)? getCategory,
    TResult? Function(CategoryStateData? data)? setCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategory,
  }) {
    return addCategorySelected?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryStateData? data)? initial,
    TResult Function(CategoryStateData? data)? status,
    TResult Function(CategoryStateData? data)? getCategories,
    TResult Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategorySelected,
    TResult Function(CategoryStateData? data)? getCategory,
    TResult Function(CategoryStateData? data)? setCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategory,
    required TResult orElse(),
  }) {
    if (addCategorySelected != null) {
      return addCategorySelected(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCatgeories value) getCategories,
    required TResult Function(RemoveCategoriesSelected value)
        removeCategoriesSelected,
    required TResult Function(AddCategorySelected value) addCategorySelected,
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(SetCategoriesSelected value)
        setCategoriesSelected,
    required TResult Function(AddCategory value) addCategory,
  }) {
    return addCategorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCatgeories value)? getCategories,
    TResult? Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult? Function(AddCategorySelected value)? addCategorySelected,
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult? Function(AddCategory value)? addCategory,
  }) {
    return addCategorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCatgeories value)? getCategories,
    TResult Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult Function(AddCategorySelected value)? addCategorySelected,
    TResult Function(GetCategory value)? getCategory,
    TResult Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult Function(AddCategory value)? addCategory,
    required TResult orElse(),
  }) {
    if (addCategorySelected != null) {
      return addCategorySelected(this);
    }
    return orElse();
  }
}

abstract class AddCategorySelected implements CategoryState {
  const factory AddCategorySelected({final CategoryStateData? data}) =
      _$AddCategorySelected;

  @override
  CategoryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$AddCategorySelectedCopyWith<_$AddCategorySelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoryCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$GetCategoryCopyWith(
          _$GetCategory value, $Res Function(_$GetCategory) then) =
      __$$GetCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryStateData? data});

  @override
  $CategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetCategoryCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$GetCategory>
    implements _$$GetCategoryCopyWith<$Res> {
  __$$GetCategoryCopyWithImpl(
      _$GetCategory _value, $Res Function(_$GetCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCategory(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryStateData?,
    ));
  }
}

/// @nodoc

class _$GetCategory implements GetCategory {
  const _$GetCategory({this.data});

  @override
  final CategoryStateData? data;

  @override
  String toString() {
    return 'CategoryState.getCategory(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategory &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoryCopyWith<_$GetCategory> get copyWith =>
      __$$GetCategoryCopyWithImpl<_$GetCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryStateData? data) initial,
    required TResult Function(CategoryStateData? data) status,
    required TResult Function(CategoryStateData? data) getCategories,
    required TResult Function(CategoryStateData? data) removeCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategorySelected,
    required TResult Function(CategoryStateData? data) getCategory,
    required TResult Function(CategoryStateData? data) setCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategory,
  }) {
    return getCategory(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateData? data)? initial,
    TResult? Function(CategoryStateData? data)? status,
    TResult? Function(CategoryStateData? data)? getCategories,
    TResult? Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategorySelected,
    TResult? Function(CategoryStateData? data)? getCategory,
    TResult? Function(CategoryStateData? data)? setCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategory,
  }) {
    return getCategory?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryStateData? data)? initial,
    TResult Function(CategoryStateData? data)? status,
    TResult Function(CategoryStateData? data)? getCategories,
    TResult Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategorySelected,
    TResult Function(CategoryStateData? data)? getCategory,
    TResult Function(CategoryStateData? data)? setCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategory,
    required TResult orElse(),
  }) {
    if (getCategory != null) {
      return getCategory(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCatgeories value) getCategories,
    required TResult Function(RemoveCategoriesSelected value)
        removeCategoriesSelected,
    required TResult Function(AddCategorySelected value) addCategorySelected,
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(SetCategoriesSelected value)
        setCategoriesSelected,
    required TResult Function(AddCategory value) addCategory,
  }) {
    return getCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCatgeories value)? getCategories,
    TResult? Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult? Function(AddCategorySelected value)? addCategorySelected,
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult? Function(AddCategory value)? addCategory,
  }) {
    return getCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCatgeories value)? getCategories,
    TResult Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult Function(AddCategorySelected value)? addCategorySelected,
    TResult Function(GetCategory value)? getCategory,
    TResult Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult Function(AddCategory value)? addCategory,
    required TResult orElse(),
  }) {
    if (getCategory != null) {
      return getCategory(this);
    }
    return orElse();
  }
}

abstract class GetCategory implements CategoryState {
  const factory GetCategory({final CategoryStateData? data}) = _$GetCategory;

  @override
  CategoryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetCategoryCopyWith<_$GetCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCategoriesSelectedCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$SetCategoriesSelectedCopyWith(_$SetCategoriesSelected value,
          $Res Function(_$SetCategoriesSelected) then) =
      __$$SetCategoriesSelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryStateData? data});

  @override
  $CategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetCategoriesSelectedCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$SetCategoriesSelected>
    implements _$$SetCategoriesSelectedCopyWith<$Res> {
  __$$SetCategoriesSelectedCopyWithImpl(_$SetCategoriesSelected _value,
      $Res Function(_$SetCategoriesSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetCategoriesSelected(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryStateData?,
    ));
  }
}

/// @nodoc

class _$SetCategoriesSelected implements SetCategoriesSelected {
  const _$SetCategoriesSelected({this.data});

  @override
  final CategoryStateData? data;

  @override
  String toString() {
    return 'CategoryState.setCategoriesSelected(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCategoriesSelected &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCategoriesSelectedCopyWith<_$SetCategoriesSelected> get copyWith =>
      __$$SetCategoriesSelectedCopyWithImpl<_$SetCategoriesSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryStateData? data) initial,
    required TResult Function(CategoryStateData? data) status,
    required TResult Function(CategoryStateData? data) getCategories,
    required TResult Function(CategoryStateData? data) removeCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategorySelected,
    required TResult Function(CategoryStateData? data) getCategory,
    required TResult Function(CategoryStateData? data) setCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategory,
  }) {
    return setCategoriesSelected(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateData? data)? initial,
    TResult? Function(CategoryStateData? data)? status,
    TResult? Function(CategoryStateData? data)? getCategories,
    TResult? Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategorySelected,
    TResult? Function(CategoryStateData? data)? getCategory,
    TResult? Function(CategoryStateData? data)? setCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategory,
  }) {
    return setCategoriesSelected?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryStateData? data)? initial,
    TResult Function(CategoryStateData? data)? status,
    TResult Function(CategoryStateData? data)? getCategories,
    TResult Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategorySelected,
    TResult Function(CategoryStateData? data)? getCategory,
    TResult Function(CategoryStateData? data)? setCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategory,
    required TResult orElse(),
  }) {
    if (setCategoriesSelected != null) {
      return setCategoriesSelected(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCatgeories value) getCategories,
    required TResult Function(RemoveCategoriesSelected value)
        removeCategoriesSelected,
    required TResult Function(AddCategorySelected value) addCategorySelected,
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(SetCategoriesSelected value)
        setCategoriesSelected,
    required TResult Function(AddCategory value) addCategory,
  }) {
    return setCategoriesSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCatgeories value)? getCategories,
    TResult? Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult? Function(AddCategorySelected value)? addCategorySelected,
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult? Function(AddCategory value)? addCategory,
  }) {
    return setCategoriesSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCatgeories value)? getCategories,
    TResult Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult Function(AddCategorySelected value)? addCategorySelected,
    TResult Function(GetCategory value)? getCategory,
    TResult Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult Function(AddCategory value)? addCategory,
    required TResult orElse(),
  }) {
    if (setCategoriesSelected != null) {
      return setCategoriesSelected(this);
    }
    return orElse();
  }
}

abstract class SetCategoriesSelected implements CategoryState {
  const factory SetCategoriesSelected({final CategoryStateData? data}) =
      _$SetCategoriesSelected;

  @override
  CategoryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetCategoriesSelectedCopyWith<_$SetCategoriesSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCategoryCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$AddCategoryCopyWith(
          _$AddCategory value, $Res Function(_$AddCategory) then) =
      __$$AddCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryStateData? data});

  @override
  $CategoryStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AddCategoryCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$AddCategory>
    implements _$$AddCategoryCopyWith<$Res> {
  __$$AddCategoryCopyWithImpl(
      _$AddCategory _value, $Res Function(_$AddCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AddCategory(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryStateData?,
    ));
  }
}

/// @nodoc

class _$AddCategory implements AddCategory {
  const _$AddCategory({this.data});

  @override
  final CategoryStateData? data;

  @override
  String toString() {
    return 'CategoryState.addCategory(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategory &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryCopyWith<_$AddCategory> get copyWith =>
      __$$AddCategoryCopyWithImpl<_$AddCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryStateData? data) initial,
    required TResult Function(CategoryStateData? data) status,
    required TResult Function(CategoryStateData? data) getCategories,
    required TResult Function(CategoryStateData? data) removeCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategorySelected,
    required TResult Function(CategoryStateData? data) getCategory,
    required TResult Function(CategoryStateData? data) setCategoriesSelected,
    required TResult Function(CategoryStateData? data) addCategory,
  }) {
    return addCategory(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateData? data)? initial,
    TResult? Function(CategoryStateData? data)? status,
    TResult? Function(CategoryStateData? data)? getCategories,
    TResult? Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategorySelected,
    TResult? Function(CategoryStateData? data)? getCategory,
    TResult? Function(CategoryStateData? data)? setCategoriesSelected,
    TResult? Function(CategoryStateData? data)? addCategory,
  }) {
    return addCategory?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryStateData? data)? initial,
    TResult Function(CategoryStateData? data)? status,
    TResult Function(CategoryStateData? data)? getCategories,
    TResult Function(CategoryStateData? data)? removeCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategorySelected,
    TResult Function(CategoryStateData? data)? getCategory,
    TResult Function(CategoryStateData? data)? setCategoriesSelected,
    TResult Function(CategoryStateData? data)? addCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetCatgeories value) getCategories,
    required TResult Function(RemoveCategoriesSelected value)
        removeCategoriesSelected,
    required TResult Function(AddCategorySelected value) addCategorySelected,
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(SetCategoriesSelected value)
        setCategoriesSelected,
    required TResult Function(AddCategory value) addCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetCatgeories value)? getCategories,
    TResult? Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult? Function(AddCategorySelected value)? addCategorySelected,
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult? Function(AddCategory value)? addCategory,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetCatgeories value)? getCategories,
    TResult Function(RemoveCategoriesSelected value)? removeCategoriesSelected,
    TResult Function(AddCategorySelected value)? addCategorySelected,
    TResult Function(GetCategory value)? getCategory,
    TResult Function(SetCategoriesSelected value)? setCategoriesSelected,
    TResult Function(AddCategory value)? addCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class AddCategory implements CategoryState {
  const factory AddCategory({final CategoryStateData? data}) = _$AddCategory;

  @override
  CategoryStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$AddCategoryCopyWith<_$AddCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
