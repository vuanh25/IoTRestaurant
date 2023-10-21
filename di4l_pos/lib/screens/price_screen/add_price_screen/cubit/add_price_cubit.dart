import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/price/add_price_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:get/get.dart';

part 'add_price_state.dart';
part 'add_price_cubit.freezed.dart';

class AddPriceCubit extends Cubit<AddPriceState> {
  final _dataRepository = getIt<DataRepository>();
  AddPriceCubit() : super(AddPriceState.initial(data: AddPriceStateData()));

  Future<void> addPrice(
      {required String name, required String description}) async {
    try {
      if (name.isEmpty) {
        emit(AddPriceState.error(
            data: state.data!.copyWith(error: 'Name is Required')));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddPriceState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddPriceState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = AddPriceRequest(
          name: name,
          description: description,
        );
        final _response = await _dataRepository.addPrice(request: _request);
        if (_response.data != null) {
          await Future.delayed(Duration(seconds: 1), () => navigator!.pop());
          emit(AddPriceState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded, error: 'add_price_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddPriceState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> updatePrice(
      {required int priceId,
      required String name,
      required String description}) async {
    try {
      if (name.isEmpty) {
        emit(AddPriceState.error(
            data: state.data!.copyWith(error: 'Name is Required')));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddPriceState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddPriceState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = AddPriceRequest(
          name: name,
          description: description,
        );
        final _response =
            await _dataRepository.updatePrice(request: _request, id: priceId);
        if (_response.data != null) {
          await Future.delayed(Duration(seconds: 1), () => navigator!.pop());
          emit(AddPriceState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'update_price_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddPriceState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      Future.delayed(Duration(seconds: 2), () => navigator!.pop());
    }
  }
}
