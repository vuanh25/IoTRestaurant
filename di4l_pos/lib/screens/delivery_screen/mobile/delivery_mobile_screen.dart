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
import 'package:di4l_pos/screens/delivery_screen/sub_screens/ghn_detail_screen/ghn_detail_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/ghtk_detail_screen/ghtk_detail_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/delivery_card_widget.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class DeliveryMobileScreen extends StatefulWidget {
  static BlocProvider<DeliveryCubit> provider() {
    return BlocProvider(
      create: (context) => DeliveryCubit(),
      child: const DeliveryMobileScreen(),
    );
  }

  const DeliveryMobileScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryMobileScreen> createState() => _DeliveryMobileScreenState();
}

class _DeliveryMobileScreenState extends State<DeliveryMobileScreen>
    with AfterLayoutMixin {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<DeliveryCubit>().getDeliveryPartners();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: GlobalColors.bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('shipping_partner'.tr,
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
        child: BlocBuilder<DeliveryCubit, DeliveryState>(
            buildWhen: (previous, current) =>
                previous.data!.status != current.data!.status,
            builder: (context, state) {
              final _deliveryPartners = state.data?.deliveryPartners ?? [];
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
                  return _deliveryPartners.isNotEmpty
                      ? ListView.separated(
                          // controller: _scrollController,
                          itemBuilder: (context, index) {
                            // switch (_deliveryPartners.elementAt(index).code) {
                            //   case 'ghn':
                            //     return ConnectGHNScreen();
                            //      case 'ghtk':
                            //     return ConnectGHTKScreen();
                            // }
                            // if (index < _deliveryPartners.length) {
                            return DeliveryCardWidget(
                                deliveryPartner:
                                    _deliveryPartners.elementAt(index),
                                onPressed: (DeliveryPartner? deliveryPartner) {
                                  _deliveryPartners.elementAt(index).code ==
                                              'ghn' &&
                                          _deliveryPartners
                                                  .elementAt(index)
                                                  .deliveryTenancy !=
                                              null
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  GhnDetailScreen.provider(
                                                      deliveryPartner:
                                                          deliveryPartner)),
                                        )
                                      : (_deliveryPartners
                                                      .elementAt(index)
                                                      .code ==
                                                  'ghtk' &&
                                              _deliveryPartners
                                                      .elementAt(index)
                                                      .deliveryTenancy !=
                                                  null
                                          ? Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      GhtkDetailScreen.provider(
                                                          deliveryPartner:
                                                              deliveryPartner)),
                                            )
                                          : null);
                                });
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox.shrink(),
                          itemCount: _deliveryPartners.length,
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
      // Column(
      //   children: [
      //     const DeliveryCardWidget(
      //       image: GlobalImages.ghn,
      //       nameDelivery: 'Giao hàng nhanh',
      //       widget: ConnectGHNScreen(),
      //     ),
      //     const DeliveryCardWidget(
      //       image: GlobalImages.ghtk,
      //       nameDelivery: 'Giao hàng tiết kiệm',
      //       widget: ConnectGHTKScreen(),
      //     ),
      //     DeliveryCardWidget(
      //       image: GlobalImages.viettelPost,
      //       nameDelivery: 'ViettelPost',
      //       widget: ConnectViettelPostScreen(),
      //     ),
      //     DeliveryCardWidget(
      //       image: GlobalImages.vnpost,
      //       nameDelivery: 'VIETNAMPOST',
      //       widget: ConnectVietNamPostScreen(),
      //     ),
      //   ],
      // ),
    );
  }
}
