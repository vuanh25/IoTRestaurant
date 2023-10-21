part of 'expense_cubit.dart';

@freezed
class ExpenseStateData with _$ExpenseStateData {
  const factory ExpenseStateData([
    @Default([]) List<Expense> expenses,
    @Default([]) List<Expense> expensesOriginal,
    @Default([]) List<ExpenseCategory> categories,
    @Default([]) List<ExpenseCategory> categoriesOriginal,
    @Default(StatusType.init) status,
    @Default(0) double totalExpense,
    @Default(0) double totalRevenue,
  ]) = _ExpenseStateData;
}

@freezed
class ExpenseState with _$ExpenseState {
  const factory ExpenseState.initial(ExpenseStateData? data) = Initial;
  const factory ExpenseState.expenes(ExpenseStateData? data) = Expenses;
  const factory ExpenseState.expenesOriginal(ExpenseStateData? data) =
      ExpensesOriginal;
  const factory ExpenseState.categories(ExpenseStateData? data) = Categories;
  const factory ExpenseState.categoriesOriginal(ExpenseStateData? data) =
      CategoriesOriginal;
  const factory ExpenseState.status(ExpenseStateData? data) = Status;
  const factory ExpenseState.totalExpense(ExpenseStateData? data) =
      TotalExpense;
  const factory ExpenseState.totalRevenue(ExpenseStateData? data) =
      TotalRevenue;
}
