import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/payment_accounts/request/deposit_request.dart';
import 'package:di4l_pos/models/payment_accounts/request/fund_transfer_request.dart';
import 'package:di4l_pos/models/payment_accounts/response/account_type_response.dart';
import 'package:di4l_pos/models/payment_accounts/response/payment_account_response.dart';
import 'package:di4l_pos/models/payment_accounts/response/payment_accounts_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:di4l_pos/screens/payment_accounts_screen/sub_screens/deposit_screen/deposit_screen.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

part 'payment_accounts_state.dart';
part 'payment_accounts_cubit.freezed.dart';

class PaymentAccountsCubit extends Cubit<PaymentAccountsState> {
  final _dataRepository = getIt<DataRepository>();

  PaymentAccountsCubit()
      : super(PaymentAccountsState.initial(data: PaymentAccountsStateData()));

  Future<void> getPaymentAccounts() async {
    try {
      UIHelpers.showLoading();

      // emit(PaymentAccountsState.status(
      //     data: state.data?.copyWith(
      //   status: StatusType.loading,
      // )));
      final _response = await _dataRepository.getPaymentAccounts();
      emit(PaymentAccountsState.getPaymentAccounts(
          data: state.data?.copyWith(
              // status: StatusType.loaded,

              paymentAccounts: _response.data ?? [],
              paymentAccountsOriginal: _response.data ?? [])));
    } catch (error) {
      emit(PaymentAccountsState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getPaymentAccount(
      {required int id, String? startDate, String? endDate}) async {
    try {
      UIHelpers.showLoading();

      // emit(PaymentAccountsState.status(
      //     data: state.data?.copyWith(
      //   status: StatusType.loading,
      // )));
      final _response = await _dataRepository.getPaymentAccount(
          id: id, startDate: startDate, endDate: endDate);
      emit(PaymentAccountsState.getPaymentAccounts(
          data: state.data?.copyWith(
              // status: StatusType.loaded,

              acount: _response.acount,
              paymentDetails: _response.paymentDetail ?? [])));
    } catch (error) {
      emit(PaymentAccountsState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> searchPaymentAccount({required String searchText}) async {
    List<PaymentAccount> _paymentAccountsOriginal = [
      ...state.data!.paymentAccountsOriginal
    ];
    emit(PaymentAccountsState.status(
        data: state.data?.copyWith(status: StatusType.loading)));
    if (searchText.isEmpty) {
      emit(PaymentAccountsState.getPaymentAccounts(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              paymentAccounts: _paymentAccountsOriginal)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final _paymentAccountsItems = _paymentAccountsOriginal
          .where((PaymentAccount element) =>
              element.name!.toLowerCase().contains(searchTextVN) ||
              element.accountNumber!.toLowerCase().contains(searchTextVN))
          .toList();
      emit(PaymentAccountsState.getPaymentAccounts(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              paymentAccounts: _paymentAccountsItems)));
    }
  }

  void closePaymentAccount(int id) => UIHelpers.showCustomDialog(
        context: Get.context!,
        message: 'are_you_sure'.tr,
        onComfirm: () async {
          try {
            await _dataRepository.closePaymentAccount(id: id);
            await Future.delayed(
                const Duration(microseconds: 500), () => navigator!.pop());
          } catch (error) {
            debugPrint('Delete Contact Error: $error');
            Helpers.handleErrorApp(error: error);
          } finally {
            // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
            getPaymentAccounts();
          }
        },
        isShowClose: true,
      );

  void activatePaymentAccount(int id) => UIHelpers.showCustomDialog(
        context: Get.context!,
        message: 'are_you_sure'.tr,
        onComfirm: () async {
          try {
            await _dataRepository.activatePaymentAccount(id: id);
            await Future.delayed(
                const Duration(microseconds: 500), () => navigator!.pop());
          } catch (error) {
            debugPrint('Delete Contact Error: $error');
            Helpers.handleErrorApp(error: error);
          } finally {
            // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
            getPaymentAccounts();
          }
        },
        isShowClose: true,
      );

  void getPaymentAccountFrom(PaymentAccount paymentAccount) {
    emit(PaymentAccountsState.getPaymentAccount(
        data: state.data?.copyWith(paymentAccountFrom: paymentAccount)));
  }

  void getPaymentAccountTo(PaymentAccount paymentAccount) {
    emit(PaymentAccountsState.getPaymentAccount(
        data: state.data?.copyWith(paymentAccountTo: paymentAccount)));
  }

  Future<void> getAccountTypes() async {
    try {
      UIHelpers.showLoading();

      // emit(PaymentAccountsState.status(
      //     data: state.data?.copyWith(
      //   status: StatusType.loading,
      // )));
      final _response = await _dataRepository.getAccountTypes();
      emit(PaymentAccountsState.getPaymentAccounts(
          data: state.data?.copyWith(
              accountTypes: _response.data ?? [],
              accountTypesOriginal: _response.data ?? [])));
    } catch (error) {
      emit(PaymentAccountsState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> searchAccountType({required String searchText}) async {
    List<AccType> _accountTypesOriginal = [...state.data!.accountTypesOriginal];
    emit(PaymentAccountsState.status(
        data: state.data?.copyWith(status: StatusType.loading)));
    if (searchText.isEmpty) {
      emit(PaymentAccountsState.getPaymentAccounts(
          data: state.data?.copyWith(
              status: StatusType.loaded, accountTypes: _accountTypesOriginal)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final _accountTypesItems = _accountTypesOriginal
          .where((AccType element) =>
              element.name!.toLowerCase().contains(searchTextVN))
          .toList();
      emit(PaymentAccountsState.getPaymentAccounts(
          data: state.data?.copyWith(
              status: StatusType.loaded, accountTypes: _accountTypesItems)));
    }
  }

  void getAccountType(AccType accountType) {
    emit(PaymentAccountsState.getPaymentAccount(
        data: state.data?.copyWith(accountType: accountType)));
  }

  void deleteAccountType(int id) => UIHelpers.showCustomDialog(
        context: Get.context!,
        message: 'are_you_sure'.tr,
        onComfirm: () async {
          try {
            await _dataRepository.deleteAccountType(id: id);
            await Future.delayed(
                const Duration(microseconds: 500), () => navigator!.pop());
          } catch (error) {
            debugPrint('Delete Contact Error: $error');
            Helpers.handleErrorApp(error: error);
          } finally {
            // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
            getAccountTypes();
          }
        },
        isShowClose: true,
      );

  Future<void> fundTransfer(
      {required String fromAccount,
      required String toAccount,
      String? amount,
      String? operationDate,
      String? note}) async {
    try {
      String check = await checkEmpty(fromAccount, toAccount);
      if (check.isNotEmpty) {
        emit(PaymentAccountsState.error(
            data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(PaymentAccountsState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(PaymentAccountsState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = FundTransferRequest(
          fromAccount: fromAccount,
          toAccount: toAccount,
          amount: amount,
          operationDate: operationDate,
          note: note,
        );
        final _response = await _dataRepository.fundTransfer(request: _request);
        if (_response.success == true) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(PaymentAccountsState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'fund_transfer_success'.tr)));
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
        } else {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(PaymentAccountsState.status(
              data: state.data!.copyWith(
                  status: StatusType.error, error: _response.msg ?? '')));
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
        }
      }
    } catch (error) {
      emit(PaymentAccountsState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong')));
      Helpers.handleErrorApp(error: error);
    } finally {
      // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  Future<void> deposit(
      {required String accountId,
      String? fromAccount,
      String? amount,
      String? operationDate,
      String? note}) async {
    try {
      emit(PaymentAccountsState.status(
          data: state.data!
              .copyWith(status: StatusType.loading, error: 'Loading...')));
      final _request = DepositRequest(
          accountId: accountId,
          fromAccount: fromAccount,
          amount: amount,
          operationDate: operationDate,
          note: note);
      final _response = await _dataRepository.deposit(request: _request);
      if (_response.success == true) {
        await Future.delayed(
            const Duration(seconds: 1), () => navigator!.pop());
        emit(PaymentAccountsState.status(
            data: state.data!.copyWith(
                status: StatusType.loaded, error: 'deposit_success'.tr)));
        await Future.delayed(
            const Duration(seconds: 1), () => navigator!.pop());
      } else {
        await Future.delayed(
            const Duration(seconds: 1), () => navigator!.pop());
        emit(PaymentAccountsState.status(
            data: state.data!.copyWith(
                status: StatusType.error, error: _response.msg ?? '')));
        await Future.delayed(
            const Duration(seconds: 1), () => navigator!.pop());
      }
    } catch (error) {
      emit(PaymentAccountsState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong')));
      Helpers.handleErrorApp(error: error);
    } finally {
      // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  Future<String> checkEmpty(
    String fromAccount,
    String toAccount,
  ) async {
    if (fromAccount.isEmpty) {
      return 'From Account is Required';
    } else if (toAccount.isEmpty) {
      return 'To Account is Required';
    } else {
      return '';
    }
  }
}
