import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_configs.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/delivery/response/delivery_response.dart';
import 'package:di4l_pos/screens/delivery_screen/cubit/delivery_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_ghtk_screen/cubit/connect_ghtk_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/note_delivery_screen/note_delivery_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/footer_delivery_widget.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/header_delivery_widget.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/support_information_widget.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/text_intro_partner_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectGHTKScreen extends StatefulWidget {
  final DeliveryPartner? deliveryPartner;

  static MultiBlocProvider provider({DeliveryPartner? deliveryPartner}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DeliveryCubit>(
          create: (context) => DeliveryCubit(),
        ),
        BlocProvider<ConnectGhtkCubit>(
          create: (context) => ConnectGhtkCubit(),
        ),
      ],
      child: ConnectGHTKScreen(deliveryPartner: deliveryPartner),
    );
  }

  const ConnectGHTKScreen({Key? key, this.deliveryPartner}) : super(key: key);

  @override
  State<ConnectGHTKScreen> createState() => _ConnectGHTKScreenState();
}

class _ConnectGHTKScreenState extends State<ConnectGHTKScreen>
    with AfterLayoutMixin {
  final TextEditingController txtGHTK = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    txtGHTK.text = widget.deliveryPartner!.deliveryTenancy!.tokenKey!;
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectGhtkCubit, ConnectGhtkState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          if (state.data!.error.contains('Token')) {
            UIHelpers.showSnackBar(
                message: state.data!.error, type: SnackBarType.ERROR);
          } else {
            if (state.data!.error.contains('Success')) {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                context: context,
                builder: (context) => NoteDeliveryScreen.provider(
                    deliveryPartner: widget.deliveryPartner,
                    locationsGhtk: state.data!.locationsGHTK,
                    token: txtGHTK.text.trim()),
              );
            } else {
              UIHelpers.showSnackBar(
                  message: 'Token is not correct'.tr, type: SnackBarType.ERROR);

              txtGHTK.text = '';
            }
          }
        }
        // if (state.data!.error != '') {
        //   if (state.data!.error.contains('true')) {
        //     showModalBottomSheet(
        //       isScrollControlled: true,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(10.0),
        //       ),
        //       context: context,
        //       builder: (context) => NoteDeliveryScreen.provider(
        //           deliveryPartner: widget.deliveryPartner,
        //           token: txtGHTK.text),
        //     );
        //   } else {
        //     UIHelpers.showDialogDefaultBloc(
        //       status: state.data!.status,
        //       text: state.data!.error,
        //     );
        //   }
        // }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderDeliveryWidget(
                deliveryPartner: widget.deliveryPartner,
                logoPartner:
                    GlobalConfigs.kBaseUrl + widget.deliveryPartner!.logo!,
              ),
              widget.deliveryPartner!.deliveryTenancy == null
                  ? TextIntroPartnerWidget(
                      namePartner: widget.deliveryPartner!.fullname!)
                  : Container(),
              const Divider(),
              widget.deliveryPartner!.deliveryTenancy == null
                  ? buildMain()
                  : buildMainData(),
              const Divider(),
              SupportInformationWidget(
                urlConnectionUse: 'https://my.di4l.vn/delivery/partner',
                urlLearnAbout: 'https://giaohangtietkiem.vn/',
                namePartner: widget.deliveryPartner!.fullname!,
              ),
              widget.deliveryPartner!.deliveryTenancy != null
                  ? Row(
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
                              'exit'.tr,
                              style: TextStyle(
                                  fontSize: Dimensions.FONT_SIZE_LARGE),
                            )),
                      ],
                    )
                  : Row(
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
                              style: TextStyle(
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
                            onPressed: () {
                              context
                                  .read<ConnectGhtkCubit>()
                                  .getLocationsGHTK(token: txtGHTK.text.trim());
                            },
                            child: Text(
                              'continue_button'.tr,
                              style: const TextStyle(
                                  fontSize: Dimensions.FONT_SIZE_LARGE),
                            ))
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }

  Column buildMain() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: txtGHTK,
          // onChanged: (value) => widget.deliveryPartner!.rememberToken = value,
          decoration: InputDecoration(
              labelText: 'account_token'.tr + widget.deliveryPartner!.fullname!,
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
              hintText: "Token",
              hintStyle:
                  const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
              floatingLabelBehavior: FloatingLabelBehavior.always),
          cursorColor: const Color.fromARGB(255, 6, 154, 77),
        ),
        Row(
          children: [
            Text('have_not_any_account'.tr),
            const SizedBox(width: Dimensions.BORDER_DEFAULT),
            TextButton(
              onPressed: () => launchUrl(
                  Uri.parse('https://khachhang.giaohangtietkiem.vn/')),
              child: Text(
                'register'.tr,
                style: GlobalStyles.boldStyle
                    .copyWith(fontSize: 17, color: GlobalColors.primaryColor),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('see_instructions_to_get_token'.tr),
            const SizedBox(width: Dimensions.BORDER_DEFAULT),
            TextButton(
              onPressed: () =>
                  launchUrl(Uri.parse('https://my.di4l.vn/delivery/partner')),
              child: Text(
                'here'.tr,
                style: GlobalStyles.boldStyle
                    .copyWith(fontSize: 17, color: GlobalColors.primaryColor),
              ),
            )
          ],
        ),
      ],
    );
  }

  Column buildMainData() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          enabled: false,
          controller: txtGHTK,
          // onChanged: (value) =>
          //     listInfoBussiness?.defaultProfitPercent = int.parse(value),

          decoration: InputDecoration(
              labelText: 'account_token'.tr,
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
              hintText: "Token",
              hintStyle:
                  const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
              floatingLabelBehavior: FloatingLabelBehavior.always),
          cursorColor: const Color.fromARGB(255, 6, 154, 77),
        ),
      ],
    );
  }
}
