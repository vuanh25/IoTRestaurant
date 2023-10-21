part of 'add_category_cubit.dart';

@freezed
class AddCategoryStateData with _$AddCategoryStateData {
  const factory AddCategoryStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default(false) bool addSubCategory,
    @Default(false) bool nameCheck,
  }) = _AddCategoryStateData;
}

@freezed
class AddCategoryState with _$AddCategoryState {
  const factory AddCategoryState.initial({AddCategoryStateData? data}) =
      Initial;
  const factory AddCategoryState.error({AddCategoryStateData? data}) = Error;
  const factory AddCategoryState.status({AddCategoryStateData? data}) = Status;
  const factory AddCategoryState.addSubCategory({AddCategoryStateData? data}) =
      AddSubCategory;
  const factory AddCategoryState.nameCheck({AddCategoryStateData? data}) =
      NameCheck;
}
