part of 'customers_cubit.dart';

@freezed
class CustomersStateData with _$CustomersStateData {
  const factory CustomersStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<ContactModel> customers,
    @Default([]) List<ContactModel> customersOriginal,
    // @Default([]) List<Transaction> transactions,
    Meta? meta,
    @Default(0) int? page,
    @Default([]) List<SellData> orders,
    ContactModel? contactModel,
    @Default(false) bool isOpenSearch,
  }) = _CustomersStateData;
}

@freezed
class CustomersState with _$CustomersState {
  const factory CustomersState.initial({CustomersStateData? data}) = Initial;
  const factory CustomersState.status({CustomersStateData? data}) = Status;
  const factory CustomersState.getCustomers({CustomersStateData? data}) =
      GetCustomers;
  const factory CustomersState.getCustomer({CustomersStateData? data}) =
      GetCustomer;
  const factory CustomersState.getOrdersById({CustomersStateData? data}) =
      GetOrdersById;

  const factory CustomersState.isOpenSearch({CustomersStateData? data}) =
      IsOpenSearch;
}
