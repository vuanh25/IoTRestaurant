import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/screens/delivery_screen/sub_screens/connect_ghtk_screen/cubit/connect_ghtk_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class FooterDeliveryWidget extends StatelessWidget {
  static BlocProvider<ConnectGhtkCubit> provider(
      {final dynamic token, Widget? widget}) {
    return BlocProvider(
      create: (context) => ConnectGhtkCubit(),
      child: FooterDeliveryWidget(
        token: token,
      ),
    );
  }

  const FooterDeliveryWidget({
    Key? key,
    this.widget,
    this.token,
  }) : super(key: key);

  final dynamic token;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
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
              style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
            )),
        const SizedBox(
          width: 20,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: GlobalColors.primaryColor),
              backgroundColor: GlobalColors.primaryColor,
            ),
            onPressed: () =>
                context.read<ConnectGhtkCubit>().getLocationsGHTK(token: token),
            // => showModalBottomSheet(
            //       isScrollControlled: true,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //       context: context,
            //       builder: (context) => widget ?? Container(),
            //     ),
            child: Text(
              'continue_button'.tr,
              style: const TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
            ))
      ],
    );
  }
}

class FooterNoteDeliveryWidget extends StatelessWidget {
  const FooterNoteDeliveryWidget({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
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
              style: const TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
            )),
        const SizedBox(
          width: 20,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: GlobalColors.primaryColor),
              backgroundColor: GlobalColors.primaryColor,
            ),
            onPressed: onPressed,
            child: Text(
              'save'.tr,
              style: const TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
            ))
      ],
    );
  }
}
