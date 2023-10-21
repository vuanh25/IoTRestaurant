import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_configs.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/delivery/response/connect_ghtk_response.dart';
import 'package:di4l_pos/models/delivery/response/connect_viettel_post_response.dart';
import 'package:di4l_pos/models/delivery/response/delivery_response.dart';
import 'package:di4l_pos/models/delivery/response/locations_ghn_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/delivery_screen/cubit/delivery_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_ghn_screen/cubit/connect_ghn_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_ghtk_screen/cubit/connect_ghtk_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_viettelpost_screen/cubit/connect_viettelpost_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/header_delivery_widget.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/note_delivery_widget.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class NoteDeliveryViettelPostScreen extends StatefulWidget {
  final DeliveryPartner? deliveryPartner;
  final String? token;
  final List<LocationViettelPost>? locationsViettelPost;

  // static BlocProvider<DeliveryCubit> provider(
  //     {DeliveryPartner? deliveryPartner, List<LocationGHTK>? locationsGhtk}) {
  //   return BlocProvider(
  //     create: (context) => DeliveryCubit(),
  //     child: NoteDeliveryViettelPostScreen(
  //         deliveryPartner: deliveryPartner, locationsGhtk: locationsGhtk),
  //   );
  // }
  static MultiBlocProvider provider(
      {DeliveryPartner? deliveryPartner,
      List<LocationViettelPost>? locationsViettelPost,
      String? token}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DeliveryCubit>(
          create: (context) => DeliveryCubit(),
        ),
        BlocProvider<ConnectViettelpostCubit>(
          create: (context) => ConnectViettelpostCubit(),
        ),
      ],
      child: NoteDeliveryViettelPostScreen(
        deliveryPartner: deliveryPartner,
        locationsViettelPost: locationsViettelPost,
        token: token,
      ),
    );
  }

  const NoteDeliveryViettelPostScreen({
    Key? key,
    this.deliveryPartner,
    this.token,
    this.locationsViettelPost,
  }) : super(key: key);

  @override
  State<NoteDeliveryViettelPostScreen> createState() =>
      _NoteDeliveryViettelPostScreenState();
}

class _NoteDeliveryViettelPostScreenState
    extends State<NoteDeliveryViettelPostScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    if (widget.deliveryPartner!.deliveryTenancy != null) {
      context
          .read<ConnectViettelpostCubit>()
          .getLocationsViettelPostTokenNotNull(
              token: widget.deliveryPartner!.deliveryTenancy!.tokenKey);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectViettelpostCubit, ConnectViettelpostState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          if (state.data!.error.contains('Required')) {
            UIHelpers.showSnackBar(
                message: state.data!.error, type: SnackBarType.ERROR);
          } else if (state.data!.error.contains('Done')) {
            UIHelpers.showSnackBar(
                message: state.data!.error, type: SnackBarType.SUCCESS);
          } else {
            if (state.data!.error.contains('Success')) {
              navigator!.pushNamedAndRemoveUntil(
                  RouteGenerator.deliveryScreen, (route) => route.isFirst);
            } else {
              UIHelpers.showDialogDefaultBloc(
                status: state.data!.status,
                text: state.data!.error,
              );
            }
          }
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderDeliveryWidget(
                deliveryPartner: widget.deliveryPartner,
                logoPartner:
                    GlobalConfigs.kBaseUrl + widget.deliveryPartner!.logo!),
            NoteDeliveryWidget(
              namePartner: widget.deliveryPartner!.fullname!,
            ),
            const SizedBox(
              height: 10,
            ),
            widget.deliveryPartner?.deliveryTenancy == null
                ? BlocBuilder<ConnectViettelpostCubit, ConnectViettelpostState>(
                    builder: (context, state) {
                      final value = state.data?.locationViettelPost ??
                          widget.locationsViettelPost!.firstWhereOrNull(
                              (item) =>
                                  item.groupaddressId ==
                                  widget.deliveryPartner?.deliveryTenancy
                                      ?.connectPartnerId);
                      return CustomDropDownWithT<LocationViettelPost>(
                        labelText: 'choose_a_store_to_connect'.tr,
                        items: widget.locationsViettelPost!
                            .map<DropdownMenuItem<LocationViettelPost>>(
                              (LocationViettelPost value) =>
                                  DropdownMenuItem<LocationViettelPost>(
                                value: value,
                                child: Text(value.address!),
                              ),
                            )
                            .toList(),
                        value: value,
                        onChanged: (dynamic value) => context
                            .read<ConnectViettelpostCubit>()
                            .getLocationViettelPost(value),
                      );
                    },
                  )
                : BlocBuilder<ConnectViettelpostCubit, ConnectViettelpostState>(
                    builder: (context, state) {
                      final value = state.data?.locationViettelPost ??
                          state.data!.locationsViettelPost.firstWhereOrNull(
                              (item) =>
                                  item.groupaddressId ==
                                  widget.deliveryPartner?.deliveryTenancy
                                      ?.connectPartnerId);
                      return CustomDropDownWithT<LocationViettelPost>(
                        labelText: 'choose_a_store_to_connect'.tr,
                        items: state.data!.locationsViettelPost
                            .map<DropdownMenuItem<LocationViettelPost>>(
                              (LocationViettelPost value) =>
                                  DropdownMenuItem<LocationViettelPost>(
                                value: value,
                                child: Text(value.address!),
                              ),
                            )
                            .toList(),
                        value: value,
                        onChanged: (dynamic value) => context
                            .read<ConnectViettelpostCubit>()
                            .getLocationViettelPost(value),
                      );
                    },
                  ),
            const Divider(),
            BlocBuilder<ConnectViettelpostCubit, ConnectViettelpostState>(
              builder: (context, state) {
                final locationViettelPost = state.data!.locationViettelPost;
                final groupaddressId = locationViettelPost?.groupaddressId;
                final address =
                    '${locationViettelPost?.phone} - ${locationViettelPost?.address}';
                return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'cancel'.tr,
                          style: const TextStyle(
                              fontSize: Dimensions.FONT_SIZE_LARGE),
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                              color: GlobalColors.primaryColor),
                          backgroundColor: GlobalColors.primaryColor,
                        ),
                        onPressed: () => context
                            .read<ConnectViettelpostCubit>()
                            .saveConnectViettelpost(
                                tokenKey: widget.token ??
                                    widget.deliveryPartner!.deliveryTenancy!
                                        .tokenKey!,
                                storeAddressId: groupaddressId.toString(),
                                address: address),
                        child: Text(
                          'save'.tr,
                          style: const TextStyle(
                              fontSize: Dimensions.FONT_SIZE_LARGE),
                        ))
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
