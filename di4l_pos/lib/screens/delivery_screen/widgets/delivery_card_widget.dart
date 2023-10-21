import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_configs.dart';
import 'package:di4l_pos/models/delivery/response/delivery_response.dart';
import 'package:di4l_pos/screens/delivery_screen/cubit/delivery_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_ghn_screen/connect_ghn_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_ghtk_screen/connect_ghtk_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_viettelpost_screen/connect_viettelpost_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_vnpost_screen/connect_vnpost_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/note_delivery_screen/note_delivery_ghn_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/note_delivery_screen/note_delivery_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/note_delivery_screen/note_delivery_viettel_post_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class DeliveryCardWidget extends StatelessWidget {
  const DeliveryCardWidget({
    Key? key,
    this.deliveryPartner,
    this.onPressed,
  }) : super(key: key);
  final DeliveryPartner? deliveryPartner;
  final Function(DeliveryPartner?)? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) {
          onPressed!(deliveryPartner);
        }
      },
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [
          Container(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                CachedNetworkImage(
                  imageUrl: GlobalConfigs.kBaseUrl + deliveryPartner!.logo!,
                  width: 50,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                // Image.asset(
                //   image,
                //   width: 50,
                // ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  width: 270,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        deliveryPartner!.fullname!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        deliveryPartner!.deliveryTenancy == null
                            ? '(${'not_connected_yet'.tr})'
                            : '(${'connected'.tr})',
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'text_partner'.tr,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 10,
              right: 10,
              child: deliveryPartner!.deliveryTenancy == null
                  ? ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () => showModalBottomSheet(
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          context: context,
                          builder: (context) => deliveryPartner!.code == 'ghn'
                              ? ConnectGHNScreen.provider(
                                  deliveryPartner: deliveryPartner)
                              : (deliveryPartner!.code == 'ghtk'
                                  ? ConnectGHTKScreen.provider(
                                      deliveryPartner: deliveryPartner)
                                  : (deliveryPartner!.code == 'viettelpost'
                                      ? ConnectViettelPostScreen.provider(
                                          deliveryPartner: deliveryPartner)
                                      : ConnectVietNamPostScreen.provider(
                                          deliveryPartner: deliveryPartner)))),
                      child: Text('connect'.tr))
                  : PopupMenuButton(
                      onSelected: (value) {
                        if (value == 0) {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            context: context,
                            builder: (context) => deliveryPartner!.code == 'ghn'
                                ? NoteDeliveryGhnScreen.provider(
                                    deliveryPartner: deliveryPartner)
                                : (deliveryPartner!.code == 'ghtk'
                                    ? NoteDeliveryScreen.provider(
                                        deliveryPartner: deliveryPartner)
                                    : (deliveryPartner!.code == 'viettelpost'
                                        ? NoteDeliveryViettelPostScreen
                                            .provider(
                                                deliveryPartner:
                                                    deliveryPartner)
                                        : NoteDeliveryScreen.provider(
                                            deliveryPartner: deliveryPartner))),
                          );
                        }
                        if (value == 1) {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            context: context,
                            builder: (context) => deliveryPartner!.code == 'ghn'
                                ? ConnectGHNScreen.provider(
                                    deliveryPartner: deliveryPartner)
                                : (deliveryPartner!.code == 'ghtk'
                                    ? ConnectGHTKScreen.provider(
                                        deliveryPartner: deliveryPartner)
                                    : (deliveryPartner!.code == 'viettelpost'
                                        ? ConnectViettelPostScreen.provider(
                                            deliveryPartner: deliveryPartner)
                                        : ConnectVietNamPostScreen.provider(
                                            deliveryPartner: deliveryPartner))),
                          );
                        }
                        if (value == 2) {
                          context.read<DeliveryCubit>().disconnectDelivery(
                              deliveryPartner!.deliveryTenancy!.id!);
                        }
                      },
                      child: Container(
                        color: GlobalColors.bgColor,
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        child: Row(children: [
                          const Icon(Icons.add_circle),
                          const SizedBox(
                            width: 5,
                          ),
                          Text('other'.tr)
                        ]),
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 0,
                          child: Text('set_up_store_address'.tr),
                        ),
                        PopupMenuItem(
                          value: 1,
                          child: Text('account_information'.tr),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Text('disconnect'.tr),
                        )
                      ],
                    ))
        ],
      ),
    );
  }
}
