// ignore_for_file: no_leading_underscores_for_local_identifiers, duplicate_ignore

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:di4l_pos/screens/settings_screen/sub_screens/cubit/change_language_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ChangeLanguageScreen extends StatefulWidget {
  /// MARK: - Initials
  static BlocProvider<ChangeLanguageCubit> provider() {
    return BlocProvider(
      create: (context) => ChangeLanguageCubit(),
      child: const ChangeLanguageScreen(),
    );
  }

  const ChangeLanguageScreen({Key? key}) : super(key: key);

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<ChangeLanguageCubit>().getLanguagesSupport();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: buildAppBar(context),
      body: BlocBuilder<ChangeLanguageCubit, ChangeLanguageState>(
        builder: (context, state) {
          // ignore: no_leading_underscores_for_local_identifiers
          final _countries = state.data?.countries ?? [];
          return ListView.separated(
            itemBuilder: (context, index) {
              final _country = _countries.elementAt(index);
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    _globalKey.currentContext!
                        .read<ChangeLanguageCubit>()
                        .changeLanguage(countryModel: _country);
                  },
                  title: Text(
                    (_country.countryName ?? '').tr,
                    style: GlobalStyles.boldStyle.copyWith(fontSize: 17),
                  ),
                  leading: Image.asset(_country.flagUrl ?? ''),
                  trailing: (_country.isSelected ?? false)
                      ? const Icon(
                          Icons.check,
                          color: GlobalColors.primaryColor,
                        )
                      : const SizedBox.shrink(),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const CustomDividerWidget();
            },
            itemCount: _countries.length,
          );
        },
      ),
    );
  }

  MyAppBar buildAppBar(BuildContext context) {
    return MyAppBar(
      isShowBackButton: true,
      backgroundColor: GlobalColors.bgWebColor,
      title: Text(
        'change_language'.tr,
        style: GlobalStyles.titleHeader(context).copyWith(
            fontSize: 18,
            color: GlobalColors.primaryWebColor,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
