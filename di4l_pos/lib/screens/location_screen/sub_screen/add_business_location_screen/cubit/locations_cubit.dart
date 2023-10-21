import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/location/response/locations_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locations_state.dart';
part 'locations_cubit.freezed.dart';

class LocationsCubit extends Cubit<LocationsState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  LocationsCubit()
      : super(const LocationsState.initial(data: LocationsStateData()));

  Future<void> getProvinces({int? parent}) async {
    List<DivisionData> provinceList = [...state.data!.provinces];
    int page = state.data!.provincePage! + 1;
    try {
      emit(
        LocationsState.getProvinces(
          data: state.data!.copyWith(
            status: StatusType.loading,
          ),
        ),
      );
      final response =
          await _dataRepository.getLocations(page: page, parent: parent);
      emit(
        LocationsState.getProvinces(
          data: state.data!.copyWith(
            provincePage: response.province!.currentPage,
            provinces: response.province!.data ?? [],
            status: StatusType.loaded,
          ),
        ),
      );
      emit(
        LocationsState.getProvinces(
          data: state.data!.copyWith(
            status: StatusType.loading,
          ),
        ),
      );
      provinceList.addAll(state.data!.provinces);
      emit(
        LocationsState.getProvinces(
          data: state.data!.copyWith(
            status: StatusType.loaded,
            provinces: provinceList,
          ),
        ),
      );
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getDistricts({int? parent}) async {
    List<DivisionData> districtsList = [...state.data!.districts];
    int page = state.data!.districtPage! + 1;
    try {
      emit(
        LocationsState.getDistricts(
          data: state.data!.copyWith(
            status: StatusType.loading,
          ),
        ),
      );
      final response =
          await _dataRepository.getLocations(page: page, parent: parent);
      emit(
        LocationsState.getDistricts(
          data: state.data!.copyWith(
            districtPage: response.district!.currentPage,
            districts: response.district!.data ?? [],
            status: StatusType.loaded,
          ),
        ),
      );
      emit(
        LocationsState.getDistricts(
          data: state.data!.copyWith(
            status: StatusType.loading,
          ),
        ),
      );
      districtsList.addAll(state.data!.districts);
      emit(
        LocationsState.getDistricts(
          data: state.data!.copyWith(
            status: StatusType.loaded,
            districts: districtsList,
          ),
        ),
      );
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getWards({int? parent}) async {
    List<DivisionData> wardsList = [...state.data!.wards];
    int page = state.data!.wardPage! + 1;
    try {
      emit(
        LocationsState.getWards(
          data: state.data!.copyWith(
            status: StatusType.loading,
          ),
        ),
      );
      final response =
          await _dataRepository.getLocations(page: page, parent: parent);
      emit(
        LocationsState.getWards(
          data: state.data!.copyWith(
            wardPage: response.ward!.currentPage,
            wards: response.ward!.data ?? [],
            status: StatusType.loaded,
          ),
        ),
      );
      emit(
        LocationsState.getWards(
          data: state.data!.copyWith(
            status: StatusType.loading,
          ),
        ),
      );
      wardsList.addAll(state.data!.wards);
      emit(
        LocationsState.getWards(
          data: state.data!.copyWith(
            status: StatusType.loaded,
            wards: wardsList,
          ),
        ),
      );
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
