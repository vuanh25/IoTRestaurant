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
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_ghn_screen/get_otp_ghn_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_ghtk_screen/cubit/connect_ghtk_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/header_delivery_widget.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/note_delivery_widget.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class NoteDeliveryGhnScreen extends StatefulWidget {
  final DeliveryPartner? deliveryPartner;
  final dynamic token;
  final List<Shop>? locationsGhn;

  // static BlocProvider<DeliveryCubit> provider(
  //     {DeliveryPartner? deliveryPartner, List<LocationGHTK>? locationsGhtk}) {
  //   return BlocProvider(
  //     create: (context) => DeliveryCubit(),
  //     child: NoteDeliveryGhnScreen(
  //         deliveryPartner: deliveryPartner, locationsGhtk: locationsGhtk),
  //   );
  // }
  static MultiBlocProvider provider(
      {DeliveryPartner? deliveryPartner,
      List<Shop>? locationsGhn,
      dynamic token}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DeliveryCubit>(
          create: (context) => DeliveryCubit(),
        ),
        BlocProvider<ConnectGhnCubit>(
          create: (context) => ConnectGhnCubit(),
        ),
      ],
      child: NoteDeliveryGhnScreen(
        deliveryPartner: deliveryPartner,
        locationsGhn: locationsGhn,
        token: token,
      ),
    );
  }

  const NoteDeliveryGhnScreen({
    Key? key,
    this.deliveryPartner,
    this.token,
    this.locationsGhn,
  }) : super(key: key);

  @override
  State<NoteDeliveryGhnScreen> createState() => _NoteDeliveryGhnScreenState();
}

class _NoteDeliveryGhnScreenState extends State<NoteDeliveryGhnScreen>
    with AfterLayoutMixin {
  final TextEditingController txtPhoneGhn = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    if (widget.deliveryPartner!.deliveryTenancy != null) {
      context.read<ConnectGhnCubit>().getLocationsGhnTokenNotNull(
          token: widget.deliveryPartner!.deliveryTenancy!.tokenKey);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectGhnCubit, ConnectGhnState>(
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
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                context: context,
                builder: (context) => GetOtpScreen.provider(
                  deliveryPartner: widget.deliveryPartner,
                  locationGhn: state.data!.locationGHN,
                  phoneGhn: txtPhoneGhn.text.trim(),
                  token: widget.token,
                ),
              );
              // navigator!.pushNamedAndRemoveUntil(
              //     RouteGenerator.deliveryScreen, (route) => route.isFirst);
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
                ? BlocBuilder<ConnectGhnCubit, ConnectGhnState>(
                    builder: (context, state) {
                      final value = state.data?.locationGHN ??
                          widget.locationsGhn!.firstWhereOrNull((item) =>
                              item.id ==
                              widget.deliveryPartner?.deliveryTenancy
                                  ?.connectPartnerId);

                      return CustomDropDownWithT<Shop>(
                        labelText: 'choose_a_store_to_connect'.tr,
                        items: widget.locationsGhn!
                            .map<DropdownMenuItem<Shop>>(
                              (Shop value) => DropdownMenuItem<Shop>(
                                value: value,
                                child: Text(value.address!),
                              ),
                            )
                            .toList(),
                        value: value,
                        onChanged: (dynamic value) => context
                            .read<ConnectGhnCubit>()
                            .getLocationGHN(value),
                      );
                    },
                  )
                : BlocBuilder<ConnectGhnCubit, ConnectGhnState>(
                    builder: (context, state) {
                      final value = state.data?.locationGHN ??
                          state.data!.locationsGhn.firstWhereOrNull((item) =>
                              item.id ==
                              widget.deliveryPartner?.deliveryTenancy
                                  ?.connectPartnerId);
                      return CustomDropDownWithT<Shop>(
                        labelText: 'choose_a_store_to_connect'.tr,
                        items: state.data!.locationsGhn
                            .map<DropdownMenuItem<Shop>>(
                              (Shop value) => DropdownMenuItem<Shop>(
                                value: value,
                                child: Text(value.address!),
                              ),
                            )
                            .toList(),
                        value: value,
                        onChanged: (dynamic value) => context
                            .read<ConnectGhnCubit>()
                            .getLocationGHN(value),
                      );
                    },
                  ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: txtPhoneGhn,
              // onChanged: (value) => infoProduct?.skuPrefix = value,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                  labelText: "Số điện thoại tài khoản Giao hàng nhanh".tr + ":",
                  // ignore: prefer_const_constructors
                  floatingLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff49545C),
                      fontSize: 18),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff49545C),
                      fontSize: 18),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffDFDFDF),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 3, 162, 85),
                    ),
                  ),
                  hintText: "Số điện thoại tài khoản Giao hàng nhanh".tr,
                  hintStyle:
                      const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
                  floatingLabelBehavior: FloatingLabelBehavior.always),
              cursorColor: const Color.fromARGB(255, 6, 154, 77),
            ),
            const Divider(),
            BlocBuilder<ConnectGhnCubit, ConnectGhnState>(
              builder: (context, state) {
                // final locationGhn = state.data!.locationGHN;
                // final ghtkId = locationGhN?.pickAddressId;
                // final address =
                //     '${locationGhtk?.pickTel} - ${locationGhtk?.address}';
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
                        onPressed: () =>
                            context.read<ConnectGhnCubit>().getOtpGHN(
                                  phoneGhn: txtPhoneGhn.text,
                                ),
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
