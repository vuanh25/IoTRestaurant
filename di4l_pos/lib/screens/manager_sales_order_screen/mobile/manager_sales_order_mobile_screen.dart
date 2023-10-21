import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../order_screen/cubit/order_cubit.dart';

class ManagerSalesOrderMobileScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<SalesOrderCubit> provider() {
    return BlocProvider(
      create: (context) => SalesOrderCubit(),
      child: ManagerSalesOrderMobileScreen(),
    );
  }

  const ManagerSalesOrderMobileScreen({Key? key}) : super(key: key);

  @override
  State<ManagerSalesOrderMobileScreen> createState() =>
      _ManagerSalesOrderMobileScreenState();
}

class _ManagerSalesOrderMobileScreenState
    extends State<ManagerSalesOrderMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'orders'.tr,
      ),
      backgroundColor: GlobalColors.bgSearch,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Create Order
            _buildCreateOrderButton(),

            /// Orders, Sell return
            Container(
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Column(
                children: [
                  /// Orders
                  ListTile(
                    title: Text('orders'.tr),
                    leading: const Icon(
                      Icons.list,
                      color: Colors.grey,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),

                  /// Sell return
                  const CustomDividerWidget(),
                  ListTile(
                    title: Text('sell_return'.tr),
                    leading: const Icon(
                      Icons.list,
                      color: Colors.grey,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            /// Manager Delivery
            const SizedBox(height: 16),
            Container(
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Column(
                children: [
                  /// Orders
                  ListTile(
                    title: Text('manager_delivery'.tr),
                    leading: const Icon(
                      Icons.local_shipping,
                      color: Colors.grey,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            /// Sale FnB, Temp
            const SizedBox(height: 16),
            Container(
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Column(
                children: [
                  /// Sale FnB
                  ListTile(
                    title: Text('sale_fnp'.tr),
                    leading: const Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),

                  /// Temp
                  const CustomDividerWidget(),
                  ListTile(
                    title: Text('temporary_order'.tr),
                    leading: const Icon(
                      Icons.view_timeline_sharp,
                      color: Colors.grey,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCreateOrderButton() {
    return GestureDetector(
      onTap: () {},
      behavior: HitTestBehavior.opaque,
      child: Container(
        height: 150,
        margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: GlobalColors.primaryColor,
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'create_order'.tr,
              style: GlobalStyles.boldStyle,
            )
          ],
        ),
      ),
    );
  }
}
