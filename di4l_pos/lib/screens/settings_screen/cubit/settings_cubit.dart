// ignore: depend_on_referenced_packages
// ignore_for_file: no_leading_underscores_for_local_identifiers, depend_on_referenced_packages, duplicate_ignore

import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/services/google_service.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  /// MARK: - Initials
  final _appPrefs = getIt<AppPref>();
  final _googleService = getIt<GoogleService>();
  SettingsCubit() : super(const SettingsState.initial(data: SettingsStateData()));

  void logout() {
    UIHelpers.showCustomDialog(
      context: Get.context!,
      message: 'are_you_sure'.tr,
      onComfirm: () async {
        try {
          UIHelpers.showLoading();
          final _userResponse = await _appPrefs.getUser();
          if (_userResponse?.data!.googleId != null) {
            await _googleService.handleLogout();
          }
          await _appPrefs.logout();
          navigator!.pushNamedAndRemoveUntil(
              RouteGenerator.loginScreen, (route) => false);
        } catch (error) {
          debugPrint('Logout Error: $error');
        } finally {
          UIHelpers.dismissLoading();
        }
      },
      isShowClose: true,
    );
  }

  void setFont(String font) async {
    emit(SettingsState.font(data: state.data!.copyWith(font: font)));
  }

  String getFont() {
    return state.data!.font;
  }
}
