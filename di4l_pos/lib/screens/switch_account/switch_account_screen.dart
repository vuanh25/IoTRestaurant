import 'dart:async';

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/enums/register_type.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/register_screen/cubit/register_cubit.dart';
import 'package:di4l_pos/screens/settings_screen/cubit/settings_cubit.dart';
import 'package:di4l_pos/screens/switch_account/cubit/switch_account_cubit.dart';
import 'package:di4l_pos/screens/switch_account/widgets/switch_card.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

class SwitchAccountScreen extends StatefulWidget {
  /// MARK: Initials;
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsCubit>(
          create: (BuildContext context) => SettingsCubit(),
        ),
        BlocProvider<SwitchAccountCubit>(
          create: (BuildContext context) => SwitchAccountCubit(),
        ),
        BlocProvider<RegisterCubit>(
          create: (BuildContext context) => RegisterCubit(),
        ),
      ],
      child: const SwitchAccountScreen(),
    );
  }

  const SwitchAccountScreen({Key? key}) : super(key: key);

  @override
  State<SwitchAccountScreen> createState() => _SwitchAccountScreenState();
}

class _SwitchAccountScreenState extends State<SwitchAccountScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<SwitchAccountCubit>().getAccounts();
  }

  @override
  Widget build(BuildContext context) {
    DateTime? currentBackPressTime;
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
        appBar: CustomAppBar(
          title: 'switch_account'.tr,
          actions: [
            IconButton(
              onPressed: () =>
                  _globalKey.currentContext!.read<SettingsCubit>().logout(),
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: BlocBuilder<SwitchAccountCubit, SwitchAccountState>(
          builder: (context, state) {
            final accounts = state.data?.accounts ?? [];
            return SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: List.generate(
                      accounts.length,
                      (index) => SwitchAccountCard(
                        account: accounts[index],
                        onPressed: () => _globalKey.currentContext!
                            .read<SwitchAccountCubit>()
                            .postSwitchAccount(id: accounts[index].userId!),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(
                        height: 54, width: double.maxFinite),
                    child: ElevatedButton(
                      onPressed: () => navigator!.pushNamed(
                        RouteGenerator.registerScreen,
                        arguments: {
                          'REGISTER_TYPE': RegisterType.ADD_BUSINESS,
                        },
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: GlobalColors.primaryColor,
                      ),
                      child: Text(
                        'add_new_business'.tr,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
