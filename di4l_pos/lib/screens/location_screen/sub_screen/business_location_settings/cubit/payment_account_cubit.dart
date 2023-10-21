import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/business_location/request/update_business_location_request.dart';
import 'package:di4l_pos/models/payment_accounts/response/payment_accounts_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

part 'payment_account_state.dart';
part 'payment_account_cubit.freezed.dart';

class PaymentAccountCubit extends Cubit<PaymentAccountState> {
  final _dataRepository = getIt<DataRepository>();
  PaymentAccountCubit()
      : super(
          const PaymentAccountState.initial(
            data: PaymentAccountData(),
          ),
        );

  Future<void> getPaymentsAccount() async {
    try {
      emit(
        PaymentAccountState.getPaymentAccounts(
          data: state.data!.copyWith(
            status: StatusType.loading,
          ),
        ),
      );
      final response = await _dataRepository.getPaymentAccounts();
      emit(
        PaymentAccountState.getPaymentAccounts(
          data: state.data?.copyWith(
            status: StatusType.loaded,
            paymentAccounts: response.data ?? [],
            originalPaymentAccounts: response.data ?? [],
          ),
        ),
      );
    } catch (error) {
      Helpers.handleErrorApp(
        error: error,
        isShowDialog: true,
      );
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getPaymentsAccountByList(List<String?> list) async {
    try {
      emit(
        PaymentAccountState.getPaymentAccounts(
          data: state.data!.copyWith(
            status: StatusType.loading,
          ),
        ),
      );
      List<PaymentAccount> paymentAccounts = [
        PaymentAccount(id: null, name: 'None'),
      ];
      final response = await _dataRepository.getPaymentAccounts();
      paymentAccounts.addAll(response.data!);
      List<PaymentAccount?> paymentAccountsBusiness = [];
      for (var id in list) {
        if (id == null) {
          final account =
              paymentAccounts.firstWhereOrNull((element) => element.id == null);
          paymentAccountsBusiness.add(account);
        } else {
          final accountId = int.parse(id);
          final account = paymentAccounts
              .firstWhereOrNull((element) => element.id == accountId);
          paymentAccountsBusiness.add(account);
        }
      }
      emit(
        PaymentAccountState.getPaymentAccounts(
          data: state.data?.copyWith(
            status: StatusType.loaded,
            paymentAccounts: paymentAccounts,
            originalPaymentAccounts: paymentAccounts,
            businessPaymentAccountsList: paymentAccountsBusiness,
          ),
        ),
      );
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void getPaymentAccount(PaymentAccount account) {
    emit(
      PaymentAccountState.getPaymentAccount(
        data: state.data?.copyWith(
          paymentAccount: account,
        ),
      ),
    );
  }

  void getBusinessPaymentAccountsList(List<PaymentAccount?> list) {
    emit(
      PaymentAccountState.getPaymentAccounts(
        data: state.data?.copyWith(businessPaymentAccountsList: list),
      ),
    );
  }

  void getDefaultPaymentAccounts(
      DefaultPaymentAccounts defaultPaymentAccount) {}
}
