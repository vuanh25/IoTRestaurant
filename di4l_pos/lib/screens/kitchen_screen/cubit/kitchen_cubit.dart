import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/kitchen/kitchen_detail_response.dart';
import 'package:di4l_pos/models/kitchen/kitchen_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

part 'kitchen_cubit.freezed.dart';
part 'kitchen_state.dart';

class KitchenCubit extends Cubit<KitchenState> {
  /// MAKR: - Initials;
  final _dataRepository = getIt<DataRepository>();

  KitchenCubit() : super(KitchenState.initial(data: KitchenStateData()));

  Future<void> getKitchens() async {
    try {
      emit(Status(data: state.data?.copyWith(status: StatusType.loading)));
      final responses = await _dataRepository.getKitchens();
      emit(GetKitchens(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        kitchens: responses.data ?? [],
      )));
    } catch (error) {
      emit(Status(data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    }
  }

  Future<void> getDetailKitchens({required int id}) async {
    try {
      emit(Status(data: state.data?.copyWith(status: StatusType.loading)));
      final responses = await _dataRepository.getDetailKitchens(id: id);
      emit(GetSells(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        sells: responses.sell,
      )));
      emit(GetPosSetTings(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        posSetTings: responses.posSettings,
      )));
      emit(GetActivities(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        activities: responses.activities ?? [],
      )));
    } catch (error) {
      emit(Status(data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    }
  }

  Future<void> markAsCooked({required int id}) async {
    UIHelpers.showCustomDialog(
      context: Get.context!,
      message: 'are_you_sure'.tr,
      onComfirm: () async {
        UIHelpers.showLoading();
        try {
          await _dataRepository.markAsCooked(id: id);
          await Future.delayed(Duration(microseconds: 200), () {
            navigator!.pop();
            getKitchens();
          });
        } catch (error) {
          debugPrint('are_you_sure: $error');
          Helpers.handleErrorApp(error: error);
        } finally {
          UIHelpers.dismissLoading();
        }
      },
      isShowClose: true,
    );
  }

  Future<void> searchKitchen({required String searchText}) async {
    emit(KitchenState.status(
        data: state.data!.copyWith(status: StatusType.loading)));
    // ignore: avoid_print
    print(searchText);
    List<KitchenData> _kitchenOriginal = [...state.data!.kitchensOriginal];
    if (searchText.isEmpty) {
      emit(KitchenState.getKitchens(
          data: state.data?.copyWith(
              kitchens: _kitchenOriginal, status: StatusType.loaded)));
    } else {
      final searchId = TiengViet.parse(searchText.toLowerCase());
      final _kitchen = _kitchenOriginal
          .where((KitchenData element) => TiengViet.parse(element.id.toString())
              .toLowerCase()
              .contains(searchId))
          .toList();
      emit(KitchenState.getKitchens(
          data: state.data
              ?.copyWith(kitchens: _kitchen, status: StatusType.loaded)));
    }
  }
}
