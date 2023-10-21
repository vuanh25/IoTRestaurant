part of 'warranties_cubit.dart';

@freezed
class WarrantiesStateData with _$WarrantiesStateData {
  const factory WarrantiesStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Warranty> warranties,
    Warranty? warranty,
    @Default([]) List<Warranty> warrantiesOriginal,
  }) = _WarrantiesStateData;
}

@freezed
class WarrantiesState with _$WarrantiesState {
  const factory WarrantiesState.initial({WarrantiesStateData? data}) = Initial;
  const factory WarrantiesState.status({WarrantiesStateData? data}) = Status;
  const factory WarrantiesState.getWarranties({WarrantiesStateData? data}) =
      GetWarranties;
  const factory WarrantiesState.getWarranty({WarrantiesStateData? data}) =
      GetWarranty;
}
