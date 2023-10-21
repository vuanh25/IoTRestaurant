import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_configs.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/delivery/response/delivery_response.dart';
import 'package:di4l_pos/models/delivery/response/locations_ghn_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/delivery_screen/cubit/delivery_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_ghn_screen/cubit/connect_ghn_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/header_delivery_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class GetOtpScreen extends StatefulWidget {
  final DeliveryPartner? deliveryPartner;
  final Shop? locationGhn;
  final String? phoneGhn;
  final String? token;
  static MultiBlocProvider provider(
      {DeliveryPartner? deliveryPartner,
      String? phoneGhn,
      Shop? locationGhn,
      String? token}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DeliveryCubit>(
          create: (context) => DeliveryCubit(),
        ),
        BlocProvider<ConnectGhnCubit>(
          create: (context) => ConnectGhnCubit(),
        ),
      ],
      child: GetOtpScreen(
        deliveryPartner: deliveryPartner,
        locationGhn: locationGhn,
        phoneGhn: phoneGhn,
        token: token,
      ),
    );
  }

  const GetOtpScreen(
      {Key? key,
      this.deliveryPartner,
      this.locationGhn,
      this.phoneGhn,
      this.token})
      : super(key: key);

  @override
  State<GetOtpScreen> createState() => _GetOtpScreenState();
}

class _GetOtpScreenState extends State<GetOtpScreen> {
  final TextEditingController txtCode = TextEditingController();

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
            if (state.data!.error.contains('Verify')) {
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
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: txtCode,
                  // onChanged: (value) => infoProduct?.skuPrefix = value,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                      labelText:
                          "Nhập Mã OTP - đã được gửi vào số điện thoại".tr,
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
                      hintText: "Mã OTP".tr,
                      hintStyle: const TextStyle(
                          color: Color(0xff9DA1A4), fontSize: 14),
                      floatingLabelBehavior: FloatingLabelBehavior.always),
                  cursorColor: const Color.fromARGB(255, 6, 154, 77),
                ),
                TextButton(
                    onPressed: () =>
                        context.read<ConnectGhnCubit>().getOtpGHNAgain(
                              phoneGhn: widget.phoneGhn!,
                            ),
                    child: const Text('Gửi lại mã OTP')),
                Row(
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
                        onPressed: () => context.read<ConnectGhnCubit>().connectGHN(
                            phoneGhn: widget.phoneGhn!,
                            otp: txtCode.text.trim(),
                            shopId: widget.locationGhn!.id.toString(),
                            address:
                                '${widget.locationGhn!.phone} - ${widget.locationGhn!.address}',
                            tokenKey: widget.token ??
                                widget.deliveryPartner!.deliveryTenancy!
                                    .tokenKey!),
                        child: Text(
                          'Xác nhận'.tr,
                          style: const TextStyle(
                              fontSize: Dimensions.FONT_SIZE_LARGE),
                        ))
                  ],
                )
              ])),
    );
  }
}
