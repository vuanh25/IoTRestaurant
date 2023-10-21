import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextIntroPartnerWidget extends StatelessWidget {
  const TextIntroPartnerWidget({
    Key? key,
    required this.namePartner,
  }) : super(key: key);
  final String namePartner;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${'text_intro_start'.tr} $namePartner ${'text_intro_end'.tr}'),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('+ ${'text_intro_1'.tr}'),
            const SizedBox(
              height: 5,
            ),
            Text('+ ${'text_intro_2'.tr}'),
            const SizedBox(
              height: 5,
            ),
            Text('+ ${'text_intro_3'.tr}')
          ]),
        ),
      ],
    );
  }
}
