import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/payment_accounts/request/account_type_request.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'add_account_type_state.dart';
part 'add_account_type_cubit.freezed.dart';

class AddAccountTypeCubit extends Cubit<AddAccountTypeState> {
  final _dataRepository = getIt<DataRepository>();
  AddAccountTypeCubit()
      : super(AddAccountTypeState.initial(data: AddAccountTypeStateData()));

  Future<void> addAccountType({
    required String name,
    dynamic parentAccountTypeId,
  }) async {
    try {
      String check = await checkEmpty(name);
      if (check.isNotEmpty) {
        emit(AddAccountTypeState.error(
            data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddAccountTypeState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddAccountTypeState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = AccountTypeRequest(
          name: name,
          parentAccountTypeId: parentAccountTypeId,
        );
        final _response =
            await _dataRepository.addAccountType(request: _request);
        if (_response.success == true) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddAccountTypeState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'add_account_type_success'.tr)));
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
        }
      }
    } catch (error) {
      emit(AddAccountTypeState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong')));
      Helpers.handleErrorApp(error: error);
    } finally {
      // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  /// Update Customer
  Future<void> updateAccountType({
    required int accountTypeId,
    required String name,
    dynamic parentAccountTypeId,
  }) async {
    try {
      String check = await checkEmpty(name);
      if (check.isNotEmpty) {
        emit(AddAccountTypeState.error(
            data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddAccountTypeState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddAccountTypeState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = AccountTypeRequest(
            name: name, parentAccountTypeId: parentAccountTypeId);
        final _response = await _dataRepository.updateAccountType(
            request: _request, id: accountTypeId);
        if (_response.success == true) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddAccountTypeState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'update_account_type_success'.tr)));
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
        }
      }
    } catch (error) {
      emit(AddAccountTypeState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong')));
      Helpers.handleErrorApp(error: error);
    } finally {
      // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  Future<String> checkEmpty(
    String name,
  ) async {
    if (name.isEmpty) {
      return 'Name is Required';
    } else {
      return '';
    }
  }
}
