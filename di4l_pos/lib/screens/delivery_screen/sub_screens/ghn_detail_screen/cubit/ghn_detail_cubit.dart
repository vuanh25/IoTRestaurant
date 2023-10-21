import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/delivery/response/ghn_detail_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ghn_detail_state.dart';
part 'ghn_detail_cubit.freezed.dart';

class GhnDetailCubit extends Cubit<GhnDetailState> {
  final _dataRepository = getIt<DataRepository>();

  GhnDetailCubit()
      : super(const GhnDetailState.initial(data: GhnDetailStateData()));

  Future<void> getDetailGhnDelivery({required int id}) async {
    try {
      emit(GhnDetailState.status(
          data: state.data?.copyWith(
        status: StatusType.loading,
      )));
      final _response = await _dataRepository.getDetailGhnDelivery(id: id);
      if (_response.status == true) {
        emit(GhnDetailState.getDetailsGhn(
            data: state.data?.copyWith(
          status: StatusType.loaded,
          orders: _response.orders ?? [],
        )));
      }
    } catch (error) {
      emit(GhnDetailState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {}
  }
}
