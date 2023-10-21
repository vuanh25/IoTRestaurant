// import 'package:firebase_core_web/firebase_core_web_interop.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/user/request/login_request.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/services/apple_service.dart';
import 'package:di4l_pos/services/google_service.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/route_manager.dart';
import 'package:di4l_pos/models/introduction/introduction_response.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();
  final _appPrefs = getIt<AppPref>();
  final _googleService = getIt<GoogleService>();
  final _appleService = getIt<AppleService>();

  LoginCubit() : super(const LoginState.initial(data: LoginStateData()));

  /// Login
  void login({required String email, required String password}) async {
    try {
      UIHelpers.showLoading();
      emit(LoginState.getError(data: state.data!.copyWith(error: '')));
      if (email.isEmpty) {
        emit(LoginState.getError(
            data: state.data!.copyWith(error: 'Email is Empty')));
      } else if (password.isEmpty) {
        emit(LoginState.getError(
            data: state.data!.copyWith(error: 'Password is Empty')));
      } else {
        final request = LoginRequest(email: email, password: password);
        final response = await _dataRepository.login(request: request);
        if (response.success == true) {
          emit(LoginState.getError(
              data: state.data!.copyWith(error: 'Success')));
          await _appPrefs.saveToken(tokenJson: response.toRawJson());
          print(response.toRawJson());
        } else {
          emit(LoginState.getError(
              data: state.data!.copyWith(error: response.message)));
        }
      }
    } catch (error) {
      debugPrint('Login Error: $error');
      // Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  /// Handle Google Login
  Future<void> handleGoogleLogin() async {
    try {
      UIHelpers.showLoading();
      final googleSignInAccount = await _googleService.handleLogin();
      if (googleSignInAccount != null) {
        final auth = await googleSignInAccount.authentication;
        print('Token google: ${auth.accessToken}');
        final request = LoginSocial(
            type: 'google',
            id: googleSignInAccount.id,
            email: googleSignInAccount.email,
            name: googleSignInAccount.displayName);

        final tokenResponse =
            await _dataRepository.loginSocial(request: request);

        if (tokenResponse.success == true) {
          await _appPrefs.saveToken(tokenJson: tokenResponse.toRawJson());

          navigator!.pushNamedAndRemoveUntil(
              RouteGenerator.switchAccount, (route) => false);
        }
      }
    } catch (error) {
      debugPrint('Login Google Error: $error');
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  /// Handle Apple Login
  Future<void> handleAppleLogin() async {
    try {
      UIHelpers.showLoading();
      final apple = await _appleService.handleAppleLogin();
      final request = LoginSocial(
          type: 'sign-in-with-apple',
          id: apple.email,
          email: apple.email,
          name: '${apple.givenName} ${apple.familyName}');
      final tokenResponse = await _dataRepository.loginSocial(request: request);
      if (tokenResponse.success == true) {
        await _appPrefs.saveToken(tokenJson: tokenResponse.toRawJson());
        navigator!.pushNamedAndRemoveUntil(
            RouteGenerator.switchAccount, (route) => false);
      }
    } catch (error) {
      debugPrint('Login Apple Error: $error');
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void showPass(bool value) {
    emit(LoginState.showPass(data: state.data!.copyWith(showPass: value)));
  }

  Future<List<IntroductionModel>> getIntroduction() async {
    List<IntroductionModel> list = [];
    final introductionResponse = await _dataRepository.getIntroduction();
    list = introductionResponse.data!;
    return list;
  }
}
