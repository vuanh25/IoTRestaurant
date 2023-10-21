import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/user/request/account_request.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/models/user/response/account_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
part 'switch_account_state.dart';
part 'switch_account_cubit.freezed.dart';

class SwitchAccountCubit extends Cubit<SwitchAccountState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();
  final _appPrefs = getIt<AppPref>();
  SwitchAccountCubit()
      : super(const SwitchAccountState.initial(data: SwitchAccountStateData()));

  Future<void> getAccounts() async {
    try {
      UIHelpers.showLoading();
      final accounts = await _dataRepository.switchAccount();
      emit(SwitchAccountState.getAccounts(
          data: state.data?.copyWith(accounts: accounts.data ?? [])));
    } catch (error) {
      debugPrint('Switch Account Error: $error');
      // Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void changedAccount() async {
    try {
      UIHelpers.showLoading();
      await _appPrefs.changedAccount();
      navigator!.pushNamedAndRemoveUntil(
          RouteGenerator.switchAccount, (route) => false);
    } catch (error) {
      debugPrint('Changed Account Error: $error');
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> postSwitchAccount({required int id}) async {
    try {
      UIHelpers.showLoading();
      final request = AccountRequest(userId: id);
      final tokenResponse =
          await _dataRepository.postSwitchAccount(request: request);

      /// Save Token
      await _appPrefs.saveToken(tokenJson: tokenResponse.toRawJson());

      /// Save Business
      final businessResponse = await _dataRepository.getBusinessLocation();
      await _appPrefs.saveBusiness(
          business: businessResponse.data!.first.toRawJson());

      /// Loged In
      final userResponse = await _dataRepository.loggedIn();
      await _appPrefs.saveUser(userJson: userResponse.toRawJson());

      /// Go To Home Screen
      navigator!
          .pushNamedAndRemoveUntil(RouteGenerator.mainScreen, (route) => false);
    } catch (error) {
      debugPrint('Switch Account Error: $error');
      // Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
