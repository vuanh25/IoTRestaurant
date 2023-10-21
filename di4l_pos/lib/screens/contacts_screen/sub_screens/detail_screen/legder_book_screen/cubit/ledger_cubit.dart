// ignore_for_file: no_leading_underscores_for_local_identifiers, depend_on_referenced_packages

import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/contacts/response/ledger_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'ledger_state.dart';
part 'ledger_cubit.freezed.dart';

class LedgerCubit extends Cubit<LedgerState> {
  final _dataRepository = getIt<DataRepository>();

  LedgerCubit() : super(const LedgerState.initial(data: LedgerStateData()));

  Future<void> getLedgers(
      {required int id, String? startDate, String? endDate}) async {
    try {
      final _response = await _dataRepository.getLedger(
          id: id, startDate: startDate, endDate: endDate);
      emit(LedgerState.getLedger(
          data: state.data?.copyWith(ledgers: _response.data)));
    } catch (error) {
      debugPrint('Error: $error');
      emit(LedgerState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
