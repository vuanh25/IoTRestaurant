import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/price/response/price_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'price_cubit.freezed.dart';
part 'price_state.dart';

class PriceCubit extends Cubit<PriceState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  PriceCubit() : super(PriceState.initial(data: PriceStateData()));

  /// Get Prices
  Future<void> getPrices() async {
    try {
      emit(PriceState.status(
          data: state.data!.copyWith(status: StatusType.loading)));
      final _priceResponse = await _dataRepository.getPriceGroup();
      emit(PriceState.getPrices(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        prices: _priceResponse.data ?? [],
      )));
    } catch (error) {
      emit(PriceState.status(
          data: state.data!.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void getPrice(Price price) {
    emit(PriceState.getPrice(data: state.data?.copyWith(price: price)));
  }

  Future deletePrice(int id) async {
    UIHelpers.showCustomDialog(
      context: Get.context!,
      message: 'are_you_sure'.tr,
      onComfirm: () async {
        try {
          await _dataRepository.deletePrice(id: id);
          await Future.delayed(
              Duration(microseconds: 200), () => navigator!.pop());
        } catch (error) {
          debugPrint('Delete Units Error: $error');
          Helpers.handleErrorApp(error: error);
        } finally {
          UIHelpers.dismissLoading();
        }
      },
      isShowClose: true,
    );
  }

  Future<void> getPriceGroupById(int? id) async {
    try {
      emit(PriceState.status(
          data: state.data!.copyWith(status: StatusType.loading)));
      final _priceResponse = await _dataRepository.getPriceGroup();
      final priceGroup = _priceResponse.data!.firstWhereOrNull(
        (x) => x.id == id,
      );
      emit(PriceState.getPrices(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        prices: _priceResponse.data ?? [],
        price: priceGroup,
      )));
    } catch (error) {
      emit(PriceState.status(
          data: state.data!.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
