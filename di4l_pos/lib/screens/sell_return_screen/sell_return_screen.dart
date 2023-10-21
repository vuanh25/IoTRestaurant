import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/screens/sell_return_screen/cubit/sell_return_cubit.dart';
import 'package:di4l_pos/screens/sell_return_screen/widgets/sell_return_card.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_divider_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';

class SellReturnScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<SellReturnCubit> provider() {
    return BlocProvider(
      create: (context) => SellReturnCubit(),
      child: const SellReturnScreen(),
    );
  }

  const SellReturnScreen({Key? key}) : super(key: key);

  @override
  State<SellReturnScreen> createState() => _SellReturnScreenState();
}

class _SellReturnScreenState extends State<SellReturnScreen>
    with AfterLayoutMixin {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final _appPrefs = getIt<AppPref>();
  var _businessLocation;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    // context.read<SellReturnCubit>().getSell();
    // _businessLocation = await _appPrefs.getBusiness();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        key: _globalKey,
        title: 'sell_return'.tr,
      ),
      body: BlocBuilder<SellReturnCubit, SellReturnState>(
          buildWhen: (previous, current) =>
              previous.data!.status != current.data!.status,
          builder: (context, state) {
            final sells = state.data?.sells ?? [];
            switch (state.data!.status) {
              case StatusType.loading:
                return const AppLoadingWidget(
                  widget: null,
                  text: 'Loading...',
                );
              case StatusType.loaded:
                return sells.isNotEmpty
                    ? ListView.separated(
                        padding: const EdgeInsets.all(8.0),
                        itemBuilder: (context, index) => SellReturnCard(
                          sellData: sells[index],
                          location:
                              sells[index].locationId == _businessLocation.id
                                  ? _businessLocation.name
                                  : '${sells[index].locationId}',
                        ),
                        separatorBuilder: (context, index) =>
                            const CustomDividerWidget(),
                        itemCount: sells.length,
                      )
                    : const NoDataWidget();
              case StatusType.error:
                return const Error404Widget();
              default:
                return const SizedBox.shrink();
            }
          }),
    );
  }
}
