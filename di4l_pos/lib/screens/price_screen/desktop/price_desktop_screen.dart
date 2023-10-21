import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/price/response/price_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/price_screen/cubit/price_cubit.dart';
import 'package:di4l_pos/screens/price_screen/widgets/price_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_divider_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class PriceDesktopScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<PriceCubit> provider() {
    return BlocProvider(
      create: (context) => PriceCubit(),
      child: PriceDesktopScreen(),
    );
  }

  const PriceDesktopScreen({Key? key}) : super(key: key);

  @override
  State<PriceDesktopScreen> createState() => _PriceDesktopScreenState();
}

class _PriceDesktopScreenState extends State<PriceDesktopScreen> with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<PriceCubit>().getPrices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: CustomAppBar(
        title: 'price'.tr,
        actions: [
          IconButton(
            onPressed: () => navigator!.pushNamed(
              RouteGenerator.addPriceScreen,
              arguments: {
                'ADD_PRICE_TYPE': AddType.NEW,
              },
            ).whenComplete(() =>
                _globalKey.currentContext!.read<PriceCubit>().getPrices()),
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: BlocBuilder<PriceCubit, PriceState>(
        buildWhen: (previous, current) =>
            previous.data!.status != current.data!.status,
        builder: (context, state) {
          final _prices = state.data?.prices ?? [];
          switch (state.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return _prices.isNotEmpty
                  ? ListView.separated(
                      itemBuilder: (context, index) {
                        return PriceWidget(
                          onEdit: (Price? price) {
                            navigator!.pushNamed(
                              RouteGenerator.addPriceScreen,
                              arguments: {
                                'ADD_PRICE_TYPE': AddType.UPDATE,
                                'PRICE_MODEL': price,
                              },
                            ).whenComplete(() => _globalKey.currentContext!
                                .read<PriceCubit>()
                                .getPrices());
                          },
                          onDelete: (Price? price) {
                            _globalKey.currentContext!
                                .read<PriceCubit>()
                                .deletePrice(_prices.elementAt(index).id!)
                                .whenComplete(() => _globalKey.currentContext!
                                    .read<PriceCubit>()
                                    .getPrices());
                          },
                          price: _prices.elementAt(index),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const CustomDividerWidget(),
                      itemCount: _prices.length,
                    )
                  : const NoDataWidget();
            case StatusType.error:
              return const Error404Widget();
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
