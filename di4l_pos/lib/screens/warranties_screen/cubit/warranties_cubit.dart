import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/warranty/warranty_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tiengviet/tiengviet.dart';

part 'warranties_state.dart';
part 'warranties_cubit.freezed.dart';

class WarrantiesCubit extends Cubit<WarrantiesState> {
  final _dataRepository = getIt<DataRepository>();
  WarrantiesCubit()
      : super(const WarrantiesState.initial(data: WarrantiesStateData()));

  ///
  Future<void> getWarranties() async {
    try {
      emit(WarrantiesState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final warrantiesResponse = await _dataRepository.getWarranties();
      emit(WarrantiesState.getWarranties(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              warranties: warrantiesResponse.data ?? [],
              warrantiesOriginal: warrantiesResponse.data ?? [])));
    } catch (error) {
      emit(WarrantiesState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void getWarranty(Warranty warranty) {
    emit(WarrantiesState.getWarranties(
        data: state.data?.copyWith(warranty: warranty)));
  }

  Future<void> searchWarranty({required String searchText}) async {
    emit(WarrantiesState.status(
        data: state.data!.copyWith(
      status: StatusType.loading,
    )));
    print(searchText);
    List<Warranty> warrantiesOriginal = [...state.data!.warrantiesOriginal];
    if (searchText.isEmpty) {
      emit(WarrantiesState.getWarranties(
          data: state.data?.copyWith(
              warranties: warrantiesOriginal, status: StatusType.loaded)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final warranties = warrantiesOriginal
          .where((Warranty element) => TiengViet.parse(element.name!)
              .toLowerCase()
              .contains(searchTextVN))
          .toList();
      emit(WarrantiesState.getWarranties(
          data: state.data
              ?.copyWith(warranties: warranties, status: StatusType.loaded)));
    }
  }
}
