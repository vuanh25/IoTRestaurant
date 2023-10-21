import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/cash_register/request/get_cash_register_request.dart';
import 'package:di4l_pos/models/cash_register/response/cash_register_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cash_register_state.dart';
part 'cash_register_cubit.freezed.dart';

class CashRegisterCubit extends Cubit<CashRegisterState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  CashRegisterCubit()
      : super(const CashRegisterState.initial(data: CashRegisterStateData()));

  /// Get Cash Register
  Future<void> getCashRegister() async {
    try {
      UIHelpers.showLoading();
      final request = GetCashRegisterRequest();
      final response =
          await _dataRepository.getCashRegister(request: request);
      emit(CashRegisterState.getCashRegister(
          data: state.data
              ?.copyWith(listCashRegisterData: response.data ?? [])));
    } catch (error) {
      debugPrint('Get cash register error: $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
