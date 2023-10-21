import 'dart:async';

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_obs.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/contact_screen.dart';
import 'package:di4l_pos/screens/home_screen/cubit/home_cubit.dart';
import 'package:di4l_pos/screens/main_screen/cubit/main_cubit.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/more_options.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_drawer.dart';
import 'package:di4l_pos/screens/manage_screen/manage_screen.dart';
import 'package:di4l_pos/screens/expense_screen/revenue_expense_screen.dart';
import 'package:di4l_pos/screens/products_screen/products_screen.dart';
import 'package:di4l_pos/screens/settings_screen/cubit/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:get/get.dart';

class MainMobileScreen extends StatefulWidget {
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainCubit>(
          create: (context) => MainCubit(),
        ),
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(),
        ),
        BlocProvider<SettingsCubit>(
          create: (context) => SettingsCubit(),
        ),
        BlocProvider<BusinessCubit>(
          create: (context) => BusinessCubit(),
        ),
      ],
      child: const MainMobileScreen(),
    );
  }

  const MainMobileScreen({Key? key}) : super(key: key);

  @override
  State<MainMobileScreen> createState() => _MainScreenState();
}

// ignore: deprecated_member_use
class _MainScreenState extends State<MainMobileScreen> with AfterLayoutMixin {
  /// MARK: - Initials;
  final List<Widget> _screens = [
    ManageScreen.provider(),
    ContactsScreen.provider(),
    const ProductsScreen(),
  ];
  int _indexTab = 0;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  DateTime? currentBackPressTime;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<HomeCubit>().loadUser();
    context.read<BusinessCubit>()
      ..getBusinesss()
      ..getAccounts();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        DateTime now = DateTime.now();
        if (currentBackPressTime == null ||
            now.difference(currentBackPressTime ?? now) >
                Duration(seconds: 2)) {
          currentBackPressTime = now;
          Fluttertoast.showToast(msg: "exit_warning".tr);
          return Future.value(false);
        }
        return Future.value(true);
      },
      child: Scaffold(
        key: _globalKey,
        drawer: const Drawer(
          child: MyDrawar(),
        ),
        appBar: buildAppbar(context),
        body: IndexedStack(
          index: _indexTab,
          children: _screens,
        ),
        bottomNavigationBar: buildNavbar(),
      ),
    );
  }

  BottomNavigationBar buildNavbar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: 'home'.tr,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.groups),
          label: 'contacts'.tr,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.archive),
          label: 'products_bottom_bar'.tr,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.more_horiz),
          label: 'more'.tr,
        ),
      ],
      currentIndex: _indexTab,
      selectedItemColor: GlobalColors.primaryColor,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
    );
  }

  MyAppBar buildAppbar(BuildContext context) {
    return MyAppBar(
      isShowBackButton: false,
      title: InkWell(
        onTap: () => _globalKey.currentState!.openDrawer(),
        child: Obx(() {
          return TextIcon(
            text: '${GlobalObs.firstName.value} ${GlobalObs.lastName.value}',
            textStyle: GlobalStyles.robotoBold(context).copyWith(
              color: Colors.white,
              fontSize: 16,
            ),
            prefix: const Icon(
              Icons.location_on,
              color: Colors.white,
            ),
          );
        }),
      ),
      titleCenter: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            GlobalImages.barCodeScan,
            height: 22,
            width: 22,
            fit: BoxFit.cover,
            color: Colors.white,
          ),
        ),
        IconButton(
            onPressed: () {
              navigator!.pushNamed(
                RouteGenerator.productsStockScreen,
              );
            },
            icon: const Icon(
              Icons.chat_bubble_sharp,
              color: Colors.white,
            )),
      ],
    );
  }

  /// Handle Tap Index
  void _onItemTapped(int index) {
    setState(() {
      if (index == 3) {
        showModalBottomSheet(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          context: context,
          builder: (BuildContext context) => MoreOptionsWidget.provider(),
        );
      } else {
        _indexTab = index;
      }
    });
  }
}
