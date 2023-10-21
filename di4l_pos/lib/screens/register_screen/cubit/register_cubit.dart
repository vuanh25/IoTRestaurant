import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/models/user/request/login_request.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/user/request/register_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:intl/intl.dart';

import '../../../route_generator.dart';
import '../../../services/google_service.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final _googleService = getIt<GoogleService>();
  final _appPrefs = getIt<AppPref>();
  final _dataRepository = getIt<DataRepository>();

  RegisterCubit()
      : super(const RegisterState.initial(data: RegisterStateData()));

  Future<void> register(
      {required String businessName,
      required String email,
      required String contactNo,
      required String firstName,
      required String lastName,
      required String password,
      required String confirmPassword}) async {
    try {
      UIHelpers.showLoading();
      final DateFormat format = DateFormat('MM/dd/yyyy');

      if (businessName.isEmpty) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Business Name Empty')));
      } else if (contactNo.isEmpty) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Phone Number is Empty')));
      } else if (firstName.isEmpty) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'First Name is Empty')));
      } else if (lastName.isEmpty) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Last Name is Empty')));
      } else if (email.isEmpty) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Email Empty')));
      } else if (email.contains('@') == false) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Email is Required')));
      } else if (password.isEmpty) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Password is Empty')));
      } else if (password.length < 4) {
        emit(RegisterState.getError(
            data:
                state.data!.copyWith(error: 'Password length greater than 4')));
      } else if (confirmPassword.isEmpty) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Confirm Password is Empty')));
      } else if (password != confirmPassword) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Password Mismatched')));
      } else {
        final request = RegisterRequest(
            surName: '',
            firstName: firstName,
            lastName: lastName,
            language: 'vi',
            email: email,
            password: password,
            confirmPassword: confirmPassword,
            businessName: businessName,
            stateDate: format.format(DateTime.now()),
            currencyId: 129,
            timeZone: "Asia/Ho_Chi_Minh",
            mobile: contactNo);
        final registerResponse =
            await _dataRepository.register(request: request);
        if (registerResponse.data!.success == true) {
          // emit(RegisterState.getError(
          //     data: state.data!.copyWith(error: 'Success')));
          final requestLogin = LoginRequest(email: email, password: password);
          final responseLogin =
              await _dataRepository.login(request: requestLogin);
          if (responseLogin.success == true) {
            emit(RegisterState.getError(
                data: state.data!.copyWith(error: 'Success')));
            await _appPrefs.saveToken(tokenJson: responseLogin.toRawJson());
          } else {
            emit(RegisterState.getError(
                data:
                    state.data!.copyWith(error: responseLogin.message ?? '')));
          }
        }
      }
    } catch (error) {
      debugPrint('Register Error: $error');
      Helpers.handleErrorApp(error: error, isShowDialog: true);
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

  Future<void> addBusiness({
    required String businessName,
    required String contactNo,
    required String firstName,
    required String lastName,
  }) async {
    try {
      final DateFormat format = DateFormat('MM/dd/yyyy');
      UIHelpers.showLoading();
      if (businessName.isEmpty) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Business Name Empty')));
      } else if (contactNo.isEmpty) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Phone Number Empty')));
      } else if (firstName.isEmpty) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'First Name Empty')));
      } else if (lastName.isEmpty) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Last Name Empty')));
      } else {
        final request = AddBusiness(
            surName: '',
            firstName: firstName,
            lastName: lastName,
            language: 'vi',
            businessName: businessName,
            stateDate: format.format(DateTime.now()),
            currencyId: 129,
            timeZone: "Asia/Ho_Chi_Minh",
            mobile: contactNo);
        final registerResponse =
            await _dataRepository.addBusiness(request: request);
        if (registerResponse.data!.success! == true) {
          emit(RegisterState.getError(
              data: state.data!.copyWith(error: 'Success')));
        }
      }
    } catch (error) {
      debugPrint('Add Business Error: $error');
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void changedRules(bool value) {
    emit(RegisterState.rules(data: state.data!.copyWith(rules: value)));
  }

  void showPass(bool value) {
    emit(RegisterState.showPass(data: state.data!.copyWith(showPass: value)));
  }

  void showConfirmPass(bool value) {
    emit(RegisterState.showConfirmPass(
        data: state.data!.copyWith(showConfirmPass: value)));
  }
}
