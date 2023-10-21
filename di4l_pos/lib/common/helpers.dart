import 'dart:ui';

import 'package:di4l_pos/common/global_constants.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/base/response/error_response.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Helpers {
  /// Handler Error App
  static void handleErrorApp({
    required Object error,
    bool isShowDialog = false,
  }) async {
    String message = 'unknow_error'.tr;
    if (error is DioError) {
      final dioError = error;
      if (dioError.error is Map<String, dynamic>) {
        final error0 =
            ErrorResponse.fromJson(dioError.error as Map<String, dynamic>);
        message = error0.message ?? 'unknow_error'.tr;
      }
    }
    if(message!='unknow_error'.tr){
      if (isShowDialog && !GetPlatform.isWeb) {
        UIHelpers.showCustomDialog(
          context: Get.context!,
          message: message,
          onComfirm: () {
            Get.back();
          },
        );
      } else {
        await UIHelpers.showSnackBar(message: message, type: SnackBarType.ERROR);
      }
    }
  }

  static Future<Locale> getCurentLocale() async {
    final language = await getIt<AppPref>().getLanguage();
    if (language == 'vi') {
      return const Locale('vi');
    }
    if (language == 'en') {
      return const Locale('en');
    }
    return Locale(Get.deviceLocale?.languageCode ?? 'en');
  }

  static Future<String> getFontFamily() async {
    final font = await getIt<AppPref>().getFont();
    return font ?? GlobalConstants.fonts.first;
  }

  static String formatCurrency({required String price}) {
    // return NumberFormat('#,###').format(price);
    return NumberFormat.simpleCurrency(locale: 'vi-VN', decimalDigits: 0)
        .format(double.parse(price));
  }
}
