import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/warranty/warranty_request.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'add_warranty_state.dart';
part 'add_warranty_cubit.freezed.dart';

class AddWarrantyCubit extends Cubit<AddWarrantyState> {
  final _dataRepository = getIt<DataRepository>();
  AddWarrantyCubit()
      : super(const AddWarrantyState.initial(data: AddWarrantyStateData()));

  Future<void> addWarranties({
    required String name,
    required String description,
    required int duration,
  }) async {
    try {
      if (name.isEmpty) {
        emit(AddWarrantyState.error(
            data: state.data!.copyWith(error: 'Name is required')));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddWarrantyState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddWarrantyState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final request = AddWarrantyRequest(
            name: name,
            description: description,
            duration: duration,
            durationType: state.data!.payType);
        final response = await _dataRepository.addWarranty(request: request);
        if (response.data != null) {
          await Future.delayed(const Duration(seconds: 1), () => navigator!.pop());
          emit(AddWarrantyState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'add_Warranties_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddWarrantyState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> updateWarranties({
    required int warrantiesId,
    required String name,
    required String description,
    required int duration,
  }) async {
    try {
      if (name.isEmpty) {
        emit(AddWarrantyState.error(
            data: state.data!.copyWith(error: 'Name is required')));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddWarrantyState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddWarrantyState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final request = AddWarrantyRequest(
            name: name,
            description: description,
            duration: duration,
            durationType: state.data!.payType);
        final response = await _dataRepository.updateWarranty(
            request: request, id: warrantiesId);
        if (response.data != null) {
          await Future.delayed(const Duration(seconds: 1), () => navigator!.pop());
          emit(AddWarrantyState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'update_Warranties_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddWarrantyState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void getType(String value) {
    emit(AddWarrantyState.payType(data: state.data!.copyWith(payType: value)));
  }
}
