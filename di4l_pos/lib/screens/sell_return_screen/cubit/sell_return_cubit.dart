import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/sell/response/sell_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
part 'sell_return_state.dart';
part 'sell_return_cubit.freezed.dart';

class SellReturnCubit extends Cubit<SellReturnState> {
  final _dataRepository = getIt<DataRepository>();
  SellReturnCubit()
      : super(SellReturnState.initial(data: SellReturnStateData()));

  // Future<void> getSell() async {
  //   try {
  //     emit(SellReturnState.status(
  //         data: state.data?.copyWith(status: StatusType.loading)));
  //     final _response = await _dataRepository.getSellReturn();
  //     emit(SellReturnState.getSells(
  //         data: state.data?.copyWith(
  //             status: StatusType.loaded, sells: _response.data ?? [])));
  //   } catch (error) {
  //     emit(SellReturnState.getSells(
  //         data: state.data?.copyWith(status: StatusType.error)));
  //     Helpers.handleErrorApp(error: error);
  //   } finally {
  //     UIHelpers.dismissLoading();
  //   }
  // }
}
