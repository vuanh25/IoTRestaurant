import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/delivery/response/delivery_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'delivery_state.dart';
part 'delivery_cubit.freezed.dart';

class DeliveryCubit extends Cubit<DeliveryState> {
  final _dataRepository = getIt<DataRepository>();

  DeliveryCubit()
      : super(const DeliveryState.initial(data: DeliveryStateData()));

  Future<void> getDeliveryPartners() async {
    try {
      emit(DeliveryState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final _response = await _dataRepository.getDeliveryPartners();
      emit(DeliveryState.getDeliveryPartners(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              deliveryPartners: _response.data?.deliveryPartners ?? [],
              deliveryPartnersOriginal:
                  _response.data?.deliveryPartners ?? [])));
    } catch (error) {
      emit(DeliveryState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> disconnectDelivery(int id) async {
    try {
      await _dataRepository.disconnectDelivery(id: id);
      // await Future.delayed(
      //     const Duration(microseconds: 500), () => navigator!.pop());
    } catch (error) {
      debugPrint('Delete Contact Error: $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
      getDeliveryPartners();
    }
  }
}
