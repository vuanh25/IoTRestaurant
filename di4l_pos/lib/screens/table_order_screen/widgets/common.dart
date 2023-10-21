import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/screens/table_order_screen/mobile/table_order_mobile_screen.dart';
import 'package:di4l_pos/screens/table_order_screen/widgets/custom_button_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';

Widget description(String? description) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'description'.tr,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      description != null ? Html(data: description) : Text('no_description'.tr),
    ],
  );
}

Widget editButton({
  required IconData icon,
  required VoidCallback onTap,
  double width = 25,
  double height = 25,
  double iconSize = 15,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.blueGrey.shade100),
      borderRadius: BorderRadius.circular(5),
    ),
    child: InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Center(
          child: Icon(
        icon,
        size: iconSize,
        color: GlobalColors.primaryColor,
      )),
    ),
  );
}

setNote(BuildContext context) {
  final tableOrder = Get.put(TableOrderController());
  final _appPrefs = getIt<AppPref>();
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    builder: (BuildContext context) {
      String? temp;
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              horizontal: Dimensions.PADDING_SIZE_EXTRA_LARGE),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        navigator!.pop();
                      },
                      child: const Icon(Icons.close),
                    ),
                  ],
                ),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_LARGE,
                ),
                SizedBox(
                  child: TextFormField(
                    initialValue: tableOrder.noteOrder.value != ''
                        ? tableOrder.noteOrder.value
                        : null,
                    decoration: InputDecoration(
                      hintText: 'add_special_note_here'.tr,
                      hintStyle: GlobalStyles.robotoRegular(context)
                          .copyWith(fontSize: Dimensions.FONT_SIZE_DEFAULT),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: GlobalColors.primaryColor, width: 1),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: GlobalColors.primaryColor, width: 1),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    maxLines: 6,
                    onChanged: (val) => temp = val,
                    autofocus: true,
                  ),
                ),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                ),
                CustomButton2(
                  buttonText: 'save'.tr,
                  width: 200,
                  height: 50,
                  onPressed: () async {
                    await _appPrefs.saveNote(note: temp!);
                    tableOrder.noteOrder.value = temp!;
                    navigator!.pop();
                  },
                ),
              ],
            ),
          ),
        ),
      );
    },
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
  );
}
