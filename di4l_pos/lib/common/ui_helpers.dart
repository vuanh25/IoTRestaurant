// ignore_for_file: constant_identifier_names

import 'package:bmprogresshud/bmprogresshud.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SnackBarType {
  SUCCESS,
  ERROR,
  WARNING,
}

class UIHelpers {
  /// Show Loading
  static void showLoading({String message = 'loading'}) {
    ProgressHud.showLoading(text: message.tr);
  }

  /// Dismiss Loading
  static void dismissLoading() {
    Future.delayed(const Duration(microseconds: 500), () {
      ProgressHud.dismiss();
    });
  }

  /// Show Snack Bar
  static Future<void> showSnackBar({
    String title = 'alert',
    String message = '',
    SnackBarType type = SnackBarType.SUCCESS,
  }) async {
    ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();
    Color? bgColor;
    if (type == SnackBarType.SUCCESS) {
      bgColor = Colors.green;
    } else if (type == SnackBarType.ERROR) {
      bgColor = Colors.red;
    } else {
      bgColor = Colors.orange;
    }
    final snackBar = SnackBar(
      backgroundColor: bgColor,
      content: Text(
        message,
        style: GlobalStyles.titleRegular(Get.context!)
            .copyWith(color: Colors.white),
      ),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
  }

  static Future<void> showSnackBarContext({
    required BuildContext context,
    String title = 'alert',
    String message = '',
    SnackBarType type = SnackBarType.SUCCESS,
  }) async {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    Color? bgColor;
    if (type == SnackBarType.SUCCESS) {
      bgColor = Colors.green;
    } else if (type == SnackBarType.ERROR) {
      bgColor = Colors.red;
    } else {
      bgColor = Colors.orange;
    }
    final snackBar = SnackBar(
      backgroundColor: bgColor,
      content: Text(
        message,
        style: GlobalStyles.titleRegular(Get.context!)
            .copyWith(color: Colors.white),
      ),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /// Material Dialog
  static void showMaterialDialog({
    required BuildContext context,
    String title = 'alert',
    String message = '',
    bool isShowClose = false,
    String titleClose = 'cancel',
    bool isShowConfirm = true,
    String titleConfirm = 'ok',
    VoidCallback? onComfirm,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          title: Center(child: Text(title.tr)),
          content: Text(message.tr),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (isShowClose)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: GlobalColors.primaryWebColor, backgroundColor: GlobalColors.kDarkWhite,
                      shadowColor: Colors.grey,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      side: const BorderSide(
                          width: Dimensions.BORDER_DEFAULT, color: Colors.grey),
                      minimumSize: const Size(120, 45),
                    ),
                    onPressed: () => navigator!.pop(),
                    child: Text(titleClose.tr),
                  ),
                if (isShowConfirm)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.green,
                      shadowColor: Colors.greenAccent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      minimumSize: const Size(120, 45),
                    ),
                    onPressed: onComfirm,
                    child: Text(titleConfirm.tr),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }

  /// iOS Dialog
  static void showCupertinoDialog({
    required BuildContext context,
    String title = 'alert',
    String message = '',
    bool isShowClose = false,
    String titleClose = 'cancel',
    bool isShowConfirm = true,
    String titleConfirm = 'ok',
    VoidCallback? onComfirm,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(title.tr),
          content: Text(message.tr),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (isShowClose)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: GlobalColors.primaryWebColor, backgroundColor: GlobalColors.kDarkWhite,
                      shadowColor: Colors.grey,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      side: const BorderSide(
                          width: Dimensions.BORDER_DEFAULT, color: Colors.grey),
                      minimumSize: const Size(120, 45),
                    ),
                    onPressed: () => navigator!.pop(),
                    child: Text(titleClose.tr),
                  ),
                if (isShowConfirm)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.green,
                      shadowColor: Colors.greenAccent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      minimumSize: const Size(120, 45),
                    ),
                    onPressed: onComfirm,
                    child: Text(titleConfirm.tr),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }

  /// Custom Dialog
  static void showCustomDialog({
    required BuildContext context,
    String title = 'alert',
    String message = '',
    bool isShowClose = false,
    String titleClose = 'cancel',
    bool isShowConfirm = true,
    String titleConfirm = 'ok',
    VoidCallback? onComfirm,
  }) {
    GetPlatform.isIOS
        ? UIHelpers.showCupertinoDialog(
            context: context,
            isShowClose: isShowClose,
            isShowConfirm: isShowConfirm,
            message: message,
            titleClose: titleClose,
            titleConfirm: titleConfirm,
            onComfirm: onComfirm)
        : UIHelpers.showMaterialDialog(
            context: context,
            isShowClose: isShowClose,
            isShowConfirm: isShowConfirm,
            titleClose: titleClose,
            titleConfirm: titleConfirm,
            message: message,
            onComfirm: onComfirm);
  }

  static void showBottomSheet<T>(BuildContext context,
      {T? model, Widget? onDetail, Widget? onEdit, Widget? onDelete}) {
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.only(top: 4),
        height: MediaQuery.of(context).size.height * 0.5,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 6,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Get.isDarkMode ? Colors.grey[600] : Colors.grey[300],
              ),
            ),
            const SizedBox(height: 10),
            onDetail ?? const SizedBox(),
            const SizedBox(height: 10),
            onEdit ?? const SizedBox(),
            const SizedBox(height: 10),
            onDelete ?? const SizedBox(),
            const SizedBox(height: 15),
            CustomButton(
              type: ButtonType.BUTTON_TEXT,
              label: 'cancel'.tr,
              color: Colors.white,
              borderColor: Colors.grey[600],
              onPressed: () => Get.back(),
            ),
          ],
        ),
      ),
    );
  }

  static void showDialogFullScreen({
    required BuildContext context,
    required String title,
    required Widget child,
  }) async {
    await Navigator.of(context).push(
      MaterialPageRoute<String>(
        fullscreenDialog: true,
        builder: (BuildContext context) => Scaffold(
          appBar: CustomAppBar(
            title: title,
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20),
            color: Colors.white,
            child: child,
          ),
        ),
      ),
    );
  }

  static void showCustomGeneralDialog(
      {String? text, bool status = false, Widget? widget}) {
    showGeneralDialog(
      context: Get.context!,
      barrierLabel: "Barrier",
      barrierDismissible: status,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 700),
      pageBuilder: (_, __, ___) => Center(
        child: Container(
          height: 251,
          margin: const EdgeInsets.symmetric(
              horizontal: Dimensions.PADDING_SIZE_LARGE),
          decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius:
                  BorderRadius.circular(Dimensions.PADDING_SIZE_LARGE)),
          child: Scaffold(
            body: AppLoadingWidget(
              widget: widget,
              text: text ?? '',
            ),
          ),
        ),
      ),
      transitionBuilder: (_, anim, __, child) {
        Tween<Offset> tween;
        if (anim.status == AnimationStatus.reverse) {
          tween = Tween(begin: const Offset(-1, 0), end: Offset.zero);
        } else {
          tween = Tween(begin: const Offset(1, 0), end: Offset.zero);
        }

        return SlideTransition(
          position: tween.animate(anim),
          child: FadeTransition(
            opacity: anim,
            child: child,
          ),
        );
      },
    );
  }

  static showDialogDefaultBloc(
      {required StatusType status, required String text}) {
    if (status == StatusType.loading) {
      return UIHelpers.showCustomGeneralDialog(text: text);
    } else if (status == StatusType.loaded) {
      navigator!.pop();
      return UIHelpers.showCustomGeneralDialog(
          status: true,
          text: text,
          widget: Image.asset(GlobalImages.success, height: 165, width: 165));
    } else if (status == StatusType.init) {
      return UIHelpers.showCustomGeneralDialog();
    } else if (status == StatusType.error) {
      navigator!.pop();
      return UIHelpers.showCustomGeneralDialog(
          status: true,
          text: text,
          widget: const Icon(Icons.error, color: Colors.red, size: 160));
    }
  }
}
