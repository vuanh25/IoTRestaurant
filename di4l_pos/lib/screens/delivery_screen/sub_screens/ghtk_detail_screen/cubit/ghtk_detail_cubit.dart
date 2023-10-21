import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/delivery/response/ghtk_detail_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ghtk_detail_state.dart';
part 'ghtk_detail_cubit.freezed.dart';

class GhtkDetailCubit extends Cubit<GhtkDetailState> {
  final _dataRepository = getIt<DataRepository>();
  GhtkDetailCubit()
      : super(const GhtkDetailState.initial(data: GhtkDetailStateData()));

  Future<void> getDetailGhtkDelivery({required int id}) async {
    try {
      emit(GhtkDetailState.status(
          data: state.data?.copyWith(
        status: StatusType.loading,
      )));
      final _response = await _dataRepository.getDetailGhtkDelivery(id: id);
      if (_response.status == true) {
        emit(GhtkDetailState.getDetailsGhtk(
            data: state.data?.copyWith(
          status: StatusType.loaded,
          orders: _response.orders ?? [],
        )));
      }
    } catch (error) {
      emit(GhtkDetailState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {}
  }
}
