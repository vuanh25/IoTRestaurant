part of 'category_cubit.dart';

@freezed
class CategoryStateData with _$CategoryStateData {
  const factory CategoryStateData(
          {@Default(StatusType.init) StatusType status,
          @Default([]) List<CategoryModel> categories,
          @Default({}) Set<CategoryModel> categoriesSelect,
          CategoryModel? categoryModel,
          CategoryModel? categorySelected,
          @Default([]) List<CategoryModel> categoriesOriginal}) =
      _CategoryStateData;
}

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial({CategoryStateData? data}) = Initial;
  const factory CategoryState.status({CategoryStateData? data}) = Status;
  const factory CategoryState.getCategories({CategoryStateData? data}) =
      GetCatgeories;
  const factory CategoryState.removeCategoriesSelected(
      {CategoryStateData? data}) = RemoveCategoriesSelected;
  const factory CategoryState.addCategorySelected({CategoryStateData? data}) =
      AddCategorySelected;
  const factory CategoryState.getCategory({CategoryStateData? data}) =
      GetCategory;
  const factory CategoryState.setCategoriesSelected({CategoryStateData? data}) =
      SetCategoriesSelected;
  const factory CategoryState.addCategory({CategoryStateData? data}) =
      AddCategory;
}
