// ignore_for_file: no_leading_underscores_for_local_identifiers, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/cash_register/request/add_cash_register_request.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'add_cash_state.dart';
part 'add_cash_cubit.freezed.dart';

class AddCashRegisterCubit extends Cubit<AddCashRegisterState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  AddCashRegisterCubit()
      : super(const AddCashRegisterState.initial(data: AddCashStateData()));

  /// Add Cash register
  Future<void> addCashRegister({
    required int locationId,
    required String closingNote,
    required double closingAmount,
    required int totalCardSlips,
    required int totalCheques,
    required double initialAmount,
  }) async {
    try {
      UIHelpers.showLoading();
      final _request = AddCashRegisterRequest(
        status: state.data!.type,
        locationId: locationId,
        closingNote: closingNote,
        closingAmount: closingAmount,
        totalCardSlips: totalCardSlips,
        totalCheques: totalCheques,
        initialAmount: initialAmount,
      );
      final _response =
          await _dataRepository.addCashRegister(request: _request);
      if (_response.data != null) {
        await UIHelpers.showSnackBar(message: 'add_cash_regiser_success'.tr);
        await Future.delayed(const Duration(seconds: 1), () {
          navigator!.pop({
            'CASH_REGISTER': _response.data,
          });
        });
      }
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  void getType(String type) {
    emit(AddCashRegisterState.getType(data: state.data!.copyWith(type: type)));
  }
}
