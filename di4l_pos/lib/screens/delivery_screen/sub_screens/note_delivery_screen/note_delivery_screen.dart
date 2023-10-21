import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_configs.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/delivery/response/connect_ghtk_response.dart';
import 'package:di4l_pos/models/delivery/response/delivery_response.dart';
import 'package:di4l_pos/models/delivery/response/locations_ghn_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/delivery_screen/cubit/delivery_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_ghn_screen/cubit/connect_ghn_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_ghtk_screen/cubit/connect_ghtk_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/header_delivery_widget.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/note_delivery_widget.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class NoteDeliveryScreen extends StatefulWidget {
  final DeliveryPartner? deliveryPartner;
  final dynamic token;
  final List<LocationGHTK>? locationsGhtk;
  final List<Shop>? locationsGhn;

  // static BlocProvider<DeliveryCubit> provider(
  //     {DeliveryPartner? deliveryPartner, List<LocationGHTK>? locationsGhtk}) {
  //   return BlocProvider(
  //     create: (context) => DeliveryCubit(),
  //     child: NoteDeliveryScreen(
  //         deliveryPartner: deliveryPartner, locationsGhtk: locationsGhtk),
  //   );
  // }
  static MultiBlocProvider provider(
      {DeliveryPartner? deliveryPartner,
      List<LocationGHTK>? locationsGhtk,
      List<Shop>? locationsGhn,
      dynamic token}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DeliveryCubit>(
          create: (context) => DeliveryCubit(),
        ),
        BlocProvider<ConnectGhtkCubit>(
          create: (context) => ConnectGhtkCubit(),
        ),
        BlocProvider<ConnectGhnCubit>(
          create: (context) => ConnectGhnCubit(),
        ),
      ],
      child: NoteDeliveryScreen(
        deliveryPartner: deliveryPartner,
        locationsGhtk: locationsGhtk,
        locationsGhn: locationsGhn,
        token: token,
      ),
    );
  }

  const NoteDeliveryScreen({
    Key? key,
    this.deliveryPartner,
    this.locationsGhtk,
    this.token,
    this.locationsGhn,
  }) : super(key: key);

  @override
  State<NoteDeliveryScreen> createState() => _NoteDeliveryScreenState();
}

class _NoteDeliveryScreenState extends State<NoteDeliveryScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    if (widget.deliveryPartner!.deliveryTenancy != null) {
      context.read<ConnectGhtkCubit>().getLocationsGhtkTokenNotNull(
          token: widget.deliveryPartner!.deliveryTenancy!.tokenKey);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectGhtkCubit, ConnectGhtkState>(
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
                ? BlocBuilder<ConnectGhtkCubit, ConnectGhtkState>(
                    builder: (context, state) {
                      final value = state.data?.locationGHTK ??
                          widget.locationsGhtk!.firstWhereOrNull((item) =>
                              item.pickAddressId ==
                              widget.deliveryPartner?.deliveryTenancy
                                  ?.connectPartnerId
                                  .toString());
                      return CustomDropDownWithT<LocationGHTK>(
                        labelText: 'choose_a_store_to_connect'.tr,
                        items: widget.locationsGhtk!
                            .map<DropdownMenuItem<LocationGHTK>>(
                              (LocationGHTK value) =>
                                  DropdownMenuItem<LocationGHTK>(
                                value: value,
                                child: Text(value.address!),
                              ),
                            )
                            .toList(),
                        value: value,
                        onChanged: (dynamic value) => context
                            .read<ConnectGhtkCubit>()
                            .getLocationGHTK(value),
                      );
                    },
                  )
                : BlocBuilder<ConnectGhtkCubit, ConnectGhtkState>(
                    builder: (context, state) {
                      final value = state.data?.locationGHTK ??
                          state.data!.locationsGHTK.firstWhereOrNull((item) =>
                              item.pickAddressId ==
                              widget.deliveryPartner?.deliveryTenancy
                                  ?.connectPartnerId
                                  .toString());
                      return CustomDropDownWithT<LocationGHTK>(
                        labelText: 'choose_a_store_to_connect'.tr,
                        items: state.data!.locationsGHTK
                            .map<DropdownMenuItem<LocationGHTK>>(
                              (LocationGHTK value) =>
                                  DropdownMenuItem<LocationGHTK>(
                                value: value,
                                child: Text(value.address!),
                              ),
                            )
                            .toList(),
                        value: value,
                        onChanged: (dynamic value) => context
                            .read<ConnectGhtkCubit>()
                            .getLocationGHTK(value),
                      );
                    },
                  ),
            const Divider(),
            BlocBuilder<ConnectGhtkCubit, ConnectGhtkState>(
              builder: (context, state) {
                final locationGhtk = state.data!.locationGHTK;
                final ghtkId = locationGhtk?.pickAddressId;
                final address =
                    '${locationGhtk?.pickTel} - ${locationGhtk?.address}';
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
                            .read<ConnectGhtkCubit>()
                            .saveConnectGHTK(
                                tokenKey: widget.token ??
                                    widget.deliveryPartner!.deliveryTenancy!
                                        .tokenKey,
                                ghtkId: int.parse(ghtkId!),
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
