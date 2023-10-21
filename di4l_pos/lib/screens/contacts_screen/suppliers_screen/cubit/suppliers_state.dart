part of 'suppliers_cubit.dart';

@freezed
class SuppliersStateData with _$SuppliersStateData {
  const factory SuppliersStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<ContactModel> suppliers,
    @Default([]) List<ContactModel> suppliersOriginal,
    @Default(0) int? page,
    ContactModel? contactModel,
  }) = _SuppliersStateData;
}

@freezed
class SuppliersState with _$SuppliersState {
  const factory SuppliersState.initial({SuppliersStateData? data}) = Initial;
  const factory SuppliersState.status({SuppliersStateData? data}) = Status;
  const factory SuppliersState.getSuppliers({SuppliersStateData? data}) =
      GetSuppliers;
}
