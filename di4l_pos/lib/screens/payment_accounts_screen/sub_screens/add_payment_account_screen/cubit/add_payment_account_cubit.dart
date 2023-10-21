import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/payment_accounts/request/add_payment_account_request.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'add_payment_account_state.dart';
part 'add_payment_account_cubit.freezed.dart';

class AddPaymentAccountCubit extends Cubit<AddPaymentAccountState> {
  final _dataRepository = getIt<DataRepository>();

  AddPaymentAccountCubit()
      : super(
            AddPaymentAccountState.initial(data: AddPaymentAccountStateData()));

  Future<void> addPaymentAccount({
    required String name,
    required String accountNumber,
    String? accountTypeId,
    String? openingBalance,
    String? note,
    List<AccountDetail>? accountDetails,
  }) async {
    try {
      String check = await checkEmpty(name, accountNumber);
      if (check.isNotEmpty) {
        emit(AddPaymentAccountState.error(
            data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddPaymentAccountState.error(
            data: state.data!.copyWith(error: '')));
      } else {
        emit(AddPaymentAccountState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = AddPaymentAccountRequest(
          name: name,
          accountNumber: accountNumber,
          accountTypeId: accountTypeId,
          openingBalance: openingBalance,
          accountDetails: accountDetails,
          note: note,
        );
        final _response =
            await _dataRepository.addPaymentAccount(request: _request);
        if (_response.data != null) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddPaymentAccountState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'add_payment_account_success'.tr)));
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
        }
      }
    } catch (error) {
      emit(AddPaymentAccountState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong')));
      Helpers.handleErrorApp(error: error);
    } finally {
      // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  /// Update Customer
  Future<void> updatePaymentAccount({
    required int paymentAccountId,
    required String name,
    required String accountNumber,
    String? accountTypeId,
    String? openingBalance,
    String? note,
    List<AccountDetail>? accountDetails,
    // required int contactId,
    // required int customerGroupId,
    // required String firstName,
    // required String lastName,
    // required String supplierBusinessName,
    // required String phoneNumber,
    // required String email,
    // required String dob,
    // // required String taxNumber,
    // // required dynamic openingBalance,
    // // required dynamic payTermNumber,
    // // required String addressLine1,
    // String? shippingAddress,
  }) async {
    try {
      String check = await checkEmpty(name, accountNumber);
      if (check.isNotEmpty) {
        emit(AddPaymentAccountState.error(
            data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddPaymentAccountState.error(
            data: state.data!.copyWith(error: '')));
      } else {
        emit(AddPaymentAccountState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = AddPaymentAccountRequest(
          name: name,
          accountNumber: accountNumber,
          accountTypeId: accountTypeId,
          openingBalance: openingBalance,
          accountDetails: accountDetails,
          note: note,
        );
        final _response = await _dataRepository.updatePaymentAccount(
            request: _request, id: paymentAccountId);
        if (_response.data != null) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddPaymentAccountState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'update_payment_account_success'.tr)));
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
        }
      }
    } catch (error) {
      emit(AddPaymentAccountState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong')));
      Helpers.handleErrorApp(error: error);
    } finally {
      // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  Future<String> checkEmpty(
    String name,
    String accountNumber,
  ) async {
    if (name.isEmpty) {
      return 'Name is Required';
    } else if (accountNumber.isEmpty) {
      return 'Account Number is Required';
    } else {
      return '';
    }
  }
}
