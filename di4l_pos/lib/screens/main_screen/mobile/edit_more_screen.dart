import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/main_screen/cubit/main_cubit.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/custom_container_edit.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class EditMoreScreen extends StatefulWidget {
  static BlocProvider<MainCubit> provider() {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: const EditMoreScreen(),
    );
  }

  const EditMoreScreen({Key? key}) : super(key: key);

  @override
  State<EditMoreScreen> createState() => _EditMoreScreenState();
}

class _EditMoreScreenState extends State<EditMoreScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    context.read<MainCubit>().getMenu();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.grey.shade100,
      appBar: buildAppbar(context),
      body: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          var mains = state.data!.menuDataOriginal?.items ?? [];
          return ReorderableListView(
            children: List.generate(
              mains.length,
              (index) => CustomContainerEdit(
                key: Key('$index'),
                backgroundIcon: GlobalColors.errorColor,
                item: mains[index],
                onPress: null,
              ),
            ),
            onReorder: (int oldIndex, int newIndex) => _globalKey
                .currentContext!
                .read<MainCubit>()
                .update(oldIndex, newIndex),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: buildNavbar(),
    );
  }

  Container buildNavbar() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.grey.withOpacity(0.3),
              onPressed: () => navigator!.pop(context),
              child: const Icon(
                Icons.close_outlined,
                color: Colors.black,
              ),
            ),
            FloatingActionButton(
              onPressed: () =>
                  _globalKey.currentContext!.read<MainCubit>().saveMenu(),
              child: const Icon(Icons.check_outlined),
            ),
          ],
        ),
      ),
    );
  }

  MyAppBar buildAppbar(BuildContext context) {
    return MyAppBar(
      title: Text(
        'edit_functionality'.tr,
        style: GlobalStyles.titleHeader(context).copyWith(
            fontSize: 18,
            color: GlobalColors.primaryWebColor,
            fontWeight: FontWeight.w500),
      ),
      titleCenter: true,
      backgroundColor: Colors.white,
    );
  }
}

class CustomButtonBottom extends StatelessWidget {
  final Color? color;
  final Color? titleColor;
  final String? title;
  final VoidCallback? onTap;
  final double? width;

  final double? height;
  const CustomButtonBottom({
    Key? key,
    this.color = Colors.white,
    this.title,
    this.titleColor,
    this.onTap,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width ?? Get.width * 0.45,
        height: height ?? Get.height,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: GlobalColors.kGreyTextColor),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          title!,
          style: GlobalStyles.robotoBold(context).copyWith(
            fontSize: 18,
            color: titleColor,
          ),
        ),
      ),
    );
  }
}
