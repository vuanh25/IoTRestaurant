part of 'locations_cubit.dart';

@freezed
class LocationsStateData with _$LocationsStateData {
  const factory LocationsStateData({
    @Default(StatusType.init) StatusType status,
    @Default(0) int? provincePage,
    @Default(0) int? districtPage,
    @Default(0) int? wardPage,
    @Default([]) List<DivisionData> provinces,
    @Default([]) List<DivisionData> districts,
    @Default([]) List<DivisionData> wards,
    DivisionData? province,
    DivisionData? district,
    DivisionData? ward,
  }) = _LocationsStateData;
}

@freezed
class LocationsState with _$LocationsState {
  const factory LocationsState.initial({LocationsStateData? data}) = Initial;
  const factory LocationsState.status({LocationsStateData? data}) = Status;
  const factory LocationsState.getLocations({LocationsStateData? data}) =
      GetLocations;
  const factory LocationsState.getProvinces({LocationsStateData? data}) =
      GetProvinces;
  const factory LocationsState.getDistricts({LocationsStateData? data}) =
      GetDistricts;
  const factory LocationsState.getWards({LocationsStateData? data}) = GetWards;
  const factory LocationsState.getProvince({LocationsStateData? data}) =
      GetProvince;
  const factory LocationsState.getDistrict({LocationsStateData? data}) =
      GetDistrict;
  const factory LocationsState.getWard({LocationsStateData? data}) = GetWard;
}
