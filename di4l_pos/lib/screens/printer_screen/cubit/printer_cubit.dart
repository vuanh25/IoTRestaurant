import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:di4l_pos/models/printer/response/printer_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

part 'printer_state.dart';
part 'printer_cubit.freezed.dart';

class PrinterCubit extends Cubit<PrinterState> {
  PrinterCubit() : super(const PrinterState.initial(data: PrinterStateData()));
  final dataRepository = getIt<DataRepository>();

  Future<void> getPrinters() async {
    try {
      emit(PrinterState.status(
          data: state.data!.copyWith(status: StatusType.loading)));
      final response = await dataRepository.getPrinters();
      emit(
        PrinterState.getPrinters(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              printers: response,
              printersOriginal: response),
        ),
      );
    } catch (error) {
      emit(PrinterState.status(
          data: state.data!.copyWith(
        status: StatusType.error,
      )));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> searchPrinters({required String searchText}) async {
    emit(PrinterState.status(
        data: state.data!.copyWith(status: StatusType.loading)));
    List<Printer> printersOriginal = [...state.data!.printersOriginal];
    if (searchText.isEmpty) {
      emit(PrinterState.getPrinters(
          data: state.data?.copyWith(
              printers: printersOriginal, status: StatusType.loaded)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final searchList = printersOriginal
          .where((Printer p) =>
              TiengViet.parse(p.name!).toLowerCase().contains(searchTextVN))
          .toList();
      emit(PrinterState.getPrinters(
          data: state.data
              ?.copyWith(printers: searchList, status: StatusType.loaded)));
    }
  }

  Future deletePrinter({required int id}) async {
    UIHelpers.showCustomDialog(
      context: Get.context!,
      message: 'message_confirm_delete_product'.tr,
      onComfirm: () async {
        try {
          await dataRepository.deletePrinter(id: id);
          await Future.delayed(const Duration(seconds: 1), () {
            UIHelpers.showSnackBar(message: 'delete_product_success'.tr);
            navigator!.pop();
          });
        } catch (error) {
          Helpers.handleErrorApp(error: error);
        } finally {
          UIHelpers.dismissLoading();
        }
      },
      isShowClose: true,
    );
  }

  Future<void> getPrinterById(int? id) async {
    try {
      emit(PrinterState.status(
          data: state.data!.copyWith(status: StatusType.loading)));
      final response = await dataRepository.getPrinters();
      if (id == null) {
        final printersList = state.data!.printers;
        final originalList = state.data!.printersOriginal;
        emit(
          PrinterState.getPrinters(
            data: state.data?.copyWith(
              status: StatusType.loaded,
              printers: printersList.isEmpty ? response : printersList,
              printersOriginal: originalList.isEmpty ? response : originalList,
            ),
          ),
        );
        return;
      }
      final printer = response.firstWhere(
        (element) => element.id == id,
      );
      emit(
        PrinterState.getPrinters(
          data: state.data?.copyWith(
            status: StatusType.loaded,
            printers: response,
            printersOriginal: response,
            printer: printer,
          ),
        ),
      );
    } catch (error) {
      emit(PrinterState.status(
          data: state.data!.copyWith(
        status: StatusType.error,
      )));

      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void isSearching(bool value) {
    emit(PrinterState.isSearching(
        data: state.data!.copyWith(isSearching: value)));
  }

  void getPrinter(Printer printer) {
    emit(
      PrinterState.getPrinters(
        data: state.data?.copyWith(printer: printer),
      ),
    );
  }
}
