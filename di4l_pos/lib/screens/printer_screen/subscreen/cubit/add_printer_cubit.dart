import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/printer/request/add_printer_request.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:di4l_pos/models/printer/response/printer_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

part 'add_printer_state.dart';
part 'add_printer_cubit.freezed.dart';

class AddPrinterCubit extends Cubit<AddPrinterState> {
  AddPrinterCubit()
      : super(const AddPrinterState.initial(data: AddPrinterStateData()));
  final dataRepository = getIt<DataRepository>();

  Future<void> addPrinter({required AddPrinterRequest request}) async {
    try {
      emit(AddPrinterState.status(
          data: state.data!.copyWith(status: StatusType.loading)));
      if (checkAllFields(request: request) == false) {
        return;
      } else {
        await dataRepository.addPrinter(request: request);
        Future.delayed(const Duration(seconds: 1), () => {});
        emit(AddPrinterState.status(
            data: state.data!.copyWith(
                error: "add_printer_success".tr, status: StatusType.loaded)));
      }
    } catch (error) {
      emit(AddPrinterState.status(
          data: state.data!.copyWith(
        status: StatusType.error,
      )));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> updatePrinter(
      {required AddPrinterRequest request, required int id}) async {
    try {
      emit(AddPrinterState.status(
          data: state.data!.copyWith(status: StatusType.loading)));
      if (checkAllFields(request: request) == false) {
        return;
      } else {
        await dataRepository.updatePrinter(request: request, id: id);
        Future.delayed(const Duration(seconds: 1), () => {});
        emit(AddPrinterState.status(
            data: state.data!.copyWith(
                error: "printer_updated_successfully".tr,
                status: StatusType.loaded)));
      }
    } catch (error) {
      emit(AddPrinterState.status(
          data: state.data!.copyWith(
        status: StatusType.error,
      )));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void setSelectedConnectionType(dynamic value) {
    emit(AddPrinterState.setSelectedConnectionType(
        data: state.data!.copyWith(selectedConnectionType: value)));
  }

  void setSelectedCapabilityProfile(dynamic value) {
    emit(AddPrinterState.setSelectedCapabilityProfile(
        data: state.data!.copyWith(selectedCapabilityNetwork: value)));
  }

  bool checkEmpty(String? value) {
    if (value == "") return true;
    return false;
  }

  bool checkNumber(String? value) {
    if (value.isInt) return true;
    return false;
  }

  bool checkIPAddress(String? value) {
    RegExp ipAddress = RegExp(
        r'^(([01]?\d{1,2}|2[0-4]\d|25[0-5])\.){3}([01]?\d{1,2}|2[0-4]\d|25[0-5])$');
    if (ipAddress.hasMatch(value!)) return true;
    return false;
  }

  bool checkAllFields({required AddPrinterRequest request}) {
    if (checkEmpty(request.ipAddress) == true ||
        checkEmpty(request.name) == true ||
        checkEmpty(request.charPerLine) == true ||
        checkEmpty(request.port) == true) {
      emit(AddPrinterState.error(
          data: state.data!.copyWith(
        error: "some_field_is_empty".tr,
        status: StatusType.error,
      )));
      return false;
    } else if (!checkNumber(request.charPerLine) ||
        !checkNumber(request.port)) {
      emit(AddPrinterState.error(
          data: state.data!.copyWith(
        error: "not_a_valid_number".tr,
        status: StatusType.error,
      )));
      return false;
    } else if (!checkIPAddress(request.ipAddress)) {
      emit(AddPrinterState.error(
          data: state.data!.copyWith(
        error: "not_a_valid_ip_address".tr,
        status: StatusType.error,
      )));
      return false;
    } else {
      return true;
    }
  }
}
