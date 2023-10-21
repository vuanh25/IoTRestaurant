import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_configs.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/delivery/response/delivery_response.dart';
import 'package:di4l_pos/screens/delivery_screen/cubit/delivery_cubit.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/note_delivery_screen/note_delivery_screen.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/footer_delivery_widget.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/header_delivery_widget.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/support_information_widget.dart';
import 'package:di4l_pos/screens/delivery_screen/widgets/text_intro_partner_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectVietNamPostScreen extends StatefulWidget {
  final DeliveryPartner? deliveryPartner;
  static BlocProvider<DeliveryCubit> provider(
      {DeliveryPartner? deliveryPartner}) {
    return BlocProvider(
      create: (context) => DeliveryCubit(),
      child: ConnectVietNamPostScreen(deliveryPartner: deliveryPartner),
    );
  }

  const ConnectVietNamPostScreen({Key? key, this.deliveryPartner})
      : super(key: key);

  @override
  State<ConnectVietNamPostScreen> createState() =>
      _ConnectVietNamPostScreenState();
}

class _ConnectVietNamPostScreenState extends State<ConnectVietNamPostScreen>
    with AfterLayoutMixin {
  final TextEditingController? txtUsername = TextEditingController();
  final TextEditingController? txtPassword = TextEditingController();
  final TextEditingController? txtUnitCode = TextEditingController();
  final TextEditingController? txtToken = TextEditingController();

  final String namePartner = 'Vietnam Post';
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    txtToken!.text = widget.deliveryPartner!.deliveryTenancy!.tokenKey!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderDeliveryWidget(
              logoPartner:
                  GlobalConfigs.kBaseUrl + widget.deliveryPartner!.logo!,
              deliveryPartner: widget.deliveryPartner,
            ),
            widget.deliveryPartner!.deliveryTenancy == null
                ? TextIntroPartnerWidget(
                    namePartner: widget.deliveryPartner!.fullname!)
                : Container(),
            widget.deliveryPartner!.deliveryTenancy == null
                ? buildMain()
                : buildMainData(),
            const Divider(),
            SupportInformationWidget(
              urlConnectionUse: 'https://my.di4l.vn/delivery/partner',
              urlLearnAbout: 'https://viettelpost.vn/',
              namePartner: widget.deliveryPartner!.fullname!,
            ),
            widget.deliveryPartner!.deliveryTenancy == null
                ? FooterDeliveryWidget(
                    widget: NoteDeliveryScreen.provider(
                      deliveryPartner: widget.deliveryPartner,
                    ),
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
                            'exit'.tr,
                            style:
                                TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
                          )),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  Column buildMain() {
    return Column(
      children: [
        TextFormField(
          controller: txtUsername,
          // onChanged: (value) =>
          //     listInfoBussiness?.defaultProfitPercent = int.parse(value),

          decoration: InputDecoration(
              labelText: 'phone_number'.tr,
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
              hintText: "",
              hintStyle:
                  const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
              floatingLabelBehavior: FloatingLabelBehavior.always),
          cursorColor: const Color.fromARGB(255, 6, 154, 77),
        ),
        TextFormField(
          controller: txtPassword,
          obscureText: true,
          // onChanged: (value) =>
          //     listInfoBussiness?.defaultProfitPercent = int.parse(value),

          decoration: InputDecoration(
              labelText: 'password'.tr,
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
              hintText: "",
              hintStyle:
                  const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
              floatingLabelBehavior: FloatingLabelBehavior.always),
          cursorColor: const Color.fromARGB(255, 6, 154, 77),
        ),
        TextFormField(
          controller: txtUnitCode,
          // onChanged: (value) =>
          //     listInfoBussiness?.defaultProfitPercent = int.parse(value),

          decoration: InputDecoration(
              labelText: 'unit_code'.tr,
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
              hintText: "",
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
              onPressed: () =>
                  launchUrl(Uri.parse('https://my.vnpost.vn/auth/register')),
              child: Text(
                'register'.tr,
                style: GlobalStyles.boldStyle
                    .copyWith(fontSize: 17, color: GlobalColors.primaryColor),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Column buildMainData() {
    return Column(
      children: [
        TextFormField(
          controller: txtToken,
          enabled: false,
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
              hintText: "",
              hintStyle:
                  const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
              floatingLabelBehavior: FloatingLabelBehavior.always),
          cursorColor: const Color.fromARGB(255, 6, 154, 77),
        ),
      ],
    );
  }
}
