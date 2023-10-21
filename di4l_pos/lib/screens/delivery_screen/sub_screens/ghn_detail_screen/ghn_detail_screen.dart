import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_configs.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/delivery/response/delivery_response.dart';
import 'package:di4l_pos/screens/delivery_screen/cubit/delivery_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_ghn_screen/connect_ghn_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_ghtk_screen/connect_ghtk_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_viettelpost_screen/connect_viettelpost_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_vnpost_screen/connect_vnpost_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/ghn_detail_screen/cubit/ghn_detail_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/delivery_card_widget.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/ghn_detail_card_widget.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class GhnDetailScreen extends StatefulWidget {
  final DeliveryPartner? deliveryPartner;
  static BlocProvider<GhnDetailCubit> provider(
      {DeliveryPartner? deliveryPartner}) {
    return BlocProvider(
      create: (context) => GhnDetailCubit(),
      child: GhnDetailScreen(
        deliveryPartner: deliveryPartner,
      ),
    );
  }

  const GhnDetailScreen({Key? key, this.deliveryPartner}) : super(key: key);

  @override
  State<GhnDetailScreen> createState() => _GhnDetailScreenState();
}

class _GhnDetailScreenState extends State<GhnDetailScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context
        .read<GhnDetailCubit>()
        .getDetailGhnDelivery(id: widget.deliveryPartner!.deliveryTenancy!.id!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Giao hàng nhanh',
            style: GlobalStyles.titilliumRegular(context).copyWith(
              fontSize: 16,
            )),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: BlocBuilder<GhnDetailCubit, GhnDetailState>(
            buildWhen: (previous, current) =>
                previous.data!.status != current.data!.status,
            builder: (context, state) {
              final orders = state.data?.orders ?? [];
              // bool isLoading = false;
              switch (state.data!.status) {
                case StatusType.loading:
                // isLoading = true;
                // return Container(
                //   color: Colors.transparent,
                // );
                // isLoading = true;
                // return Container();
                // isLoading = true;
                // return SizedBox.shrink();
                // break;
                // return Center(
                //   child: CircularProgressIndicator(),
                // );
                // return const AppLoadingWidget(
                //   widget: null,
                //   text: 'Loading...',
                // );
                case StatusType.loaded:
                  // isLoading = true;
                  return orders.isNotEmpty
                      ? ListView.separated(
                          // controller: _scrollController,
                          itemBuilder: (context, index) {
                            return GhnDetailCardWidget(
                              orderElement: orders.elementAt(index),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox.shrink(),
                          itemCount: orders.length,
                        )
                      : const AppLoadingWidget(
                          text: 'Loading',
                        );
                case StatusType.error:
                  return const Error404Widget();
                default:
                  return const SizedBox.shrink();
              }
            }),
      ),
    );
  }
}
