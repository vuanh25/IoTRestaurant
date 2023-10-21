import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
    );
  }

  MyAppBar buildAppBar(BuildContext context) {
    return MyAppBar(
      isShowBackButton: true,
      backgroundColor: GlobalColors.bgWebColor,
      title: Text(
        'add_todo'.tr,
        style: GlobalStyles.titleHeader(context).copyWith(
          fontSize: 18,
          color: GlobalColors.primaryWebColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
