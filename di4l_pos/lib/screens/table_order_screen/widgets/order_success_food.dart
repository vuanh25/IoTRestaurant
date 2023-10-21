import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/table_order_screen/widgets/custom_button_order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class OrderFoodSuccessScreen extends StatefulWidget {
  const OrderFoodSuccessScreen({Key? key}) : super(key: key);

  @override
  State<OrderFoodSuccessScreen> createState() => _OrderFoodSuccessScreenState();
}

class _OrderFoodSuccessScreenState extends State<OrderFoodSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('table_order'.tr),
          titleTextStyle: GlobalStyles.robotoBold(context).copyWith(
            fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
            color: Colors.black,
          ),
          toolbarHeight: 55,
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 10,
          shadowColor: Colors.white54,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height * 0.17,
              ),
              Text(
                'your_order_has_been_received'.tr,
                style: GlobalStyles.robotoRegular(context)
                    .copyWith(fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE),
              ),
              const SizedBox(
                height: 70,
              ),
              Lottie.asset(
                GlobalImages.orderSuccessTableOrder,
                width: 150,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: 150,
              ),
              CustomButton2(
                height: 50,
                width: 300,
                buttonText: 'back_to_home'.tr,
                onPressed: () {
                  navigator!
                      .pushReplacementNamed(RouteGenerator.tableOrderScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
