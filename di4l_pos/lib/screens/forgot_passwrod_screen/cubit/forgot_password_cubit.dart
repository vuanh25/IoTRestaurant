import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:di4l_pos/models/user/request/change_password_request.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'forgot_password_state.dart';
part 'forgot_password_cubit.freezed.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final _dataRepository = getIt<DataRepository>();
  ForgotPasswordCubit() : super(ForgotPasswordState.initial());
  void sendEmail({required String email}) async {
    try {
      UIHelpers.showLoading();
      final _request = SendEmailRequest(email: email);
      final _tokenResponse =
          await _dataRepository.forgetPassword(request: _request);
      if (_tokenResponse.success == 1) {
        await UIHelpers.showSnackBar(message: _tokenResponse.msg!);
        Future.delayed(
            const Duration(seconds: 1),
            () => navigator!.pushNamedAndRemoveUntil(
                  RouteGenerator.loginScreen,
                  (route) => false,
                ));
      } else {
        await UIHelpers.showSnackBar(
            message: _tokenResponse.msg!, type: SnackBarType.ERROR);
      }
    } catch (error) {
      debugPrint('Send Email Error: $error');
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
