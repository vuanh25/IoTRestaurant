import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/settings_screen/cubit/settings_cubit.dart';
import 'package:di4l_pos/screens/switch_account/cubit/switch_account_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SettingsMobileScreen extends StatefulWidget {
  /// MARK: - Initials;
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsCubit>(
          create: (BuildContext context) => SettingsCubit(),
        ),
        BlocProvider<SwitchAccountCubit>(
          create: (BuildContext context) => SwitchAccountCubit(),
        ),
      ],
      child: const SettingsMobileScreen(),
    );
  }

  const SettingsMobileScreen({Key? key}) : super(key: key);

  @override
  State<SettingsMobileScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsMobileScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: CustomAppBar(
        title: 'settings'.tr,
      ),
      backgroundColor: GlobalColors.bgSearch,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /// Profile
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.PADDING_SIZE_LARGE,
                    vertical: Dimensions.PADDING_SIZE_SMALL),
                child: InkWell(
                  onTap: () =>
                      navigator!.pushNamed(RouteGenerator.profileScreen),
                  child: ListTile(
                    leading:
                        const Icon(Icons.person, color: GlobalColors.appBar4),
                    title: Text('profile'.tr),
                    trailing: const Icon(Icons.arrow_right),
                  ),
                ),
              ),

              /// Update password
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.PADDING_SIZE_LARGE,
                    vertical: Dimensions.PADDING_SIZE_SMALL),
                child: InkWell(
                  onTap: () =>
                      navigator!.pushNamed(RouteGenerator.changePassScreen),
                  child: ListTile(
                    leading:
                        const Icon(Icons.password, color: GlobalColors.appBar4),
                    title: Text('change_password'.tr),
                    trailing: const Icon(Icons.arrow_right),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.PADDING_SIZE_LARGE,
                    vertical: Dimensions.PADDING_SIZE_SMALL),
                child: ExpansionTile(
                  title: Row(
                    children: [
                      const Icon(Icons.settings, color: GlobalColors.appBar4),
                      const SizedBox(width: Dimensions.PADDING_SIZE_LARGE),
                      Text(
                        'settings'.tr,
                        style: GlobalStyles.titleHeader(context),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    InkWell(
                      onTap: () => navigator!
                          .pushNamed(RouteGenerator.changeLanguageScreen),
                      child: ListTile(
                        title: Text('languages'.tr),
                        trailing: const Icon(Icons.arrow_right),
                      ),
                    ),
                  ],
                ),
              ),

              /// Switch Account
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.PADDING_SIZE_LARGE,
                    vertical: Dimensions.PADDING_SIZE_SMALL),
                child: InkWell(
                  onTap: () => _globalKey.currentContext!
                      .read<SwitchAccountCubit>()
                      .changedAccount(),
                  child: ListTile(
                    leading: const Icon(Icons.switch_account_outlined,
                        color: GlobalColors.appBar4),
                    title: Text('switch_account'.tr),
                    trailing: const Icon(Icons.arrow_right),
                  ),
                ),
              ),

              /// Logout
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.PADDING_SIZE_LARGE,
                    vertical: Dimensions.PADDING_SIZE_SMALL),
                child: InkWell(
                  onTap: () =>
                      _globalKey.currentContext!.read<SettingsCubit>().logout(),
                  child: ListTile(
                    leading:
                        const Icon(Icons.logout, color: GlobalColors.appBar4),
                    title: Text('logout'.tr),
                    trailing: const Icon(Icons.arrow_right),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
