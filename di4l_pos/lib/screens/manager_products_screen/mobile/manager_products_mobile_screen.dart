import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ManagerProductsMobileScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<ProductsCubit> provider() {
    return BlocProvider(
      create: (context) => ProductsCubit(),
      child: ManagerProductsMobileScreen(),
    );
  }

  const ManagerProductsMobileScreen({Key? key}) : super(key: key);

  @override
  State<ManagerProductsMobileScreen> createState() =>
      _ManagerProductsMobileScreenState();
}

class _ManagerProductsMobileScreenState
    extends State<ManagerProductsMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'products'.tr,
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
                  /// Products
                  ListTile(
                    title: Text('products'.tr),
                    leading: const Icon(
                      Icons.list,
                      color: Colors.grey,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),

                  /// Import products
                  const CustomDividerWidget(),
                  ListTile(
                    title: Text('import_products'.tr),
                    leading: const Icon(
                      Icons.add_business_sharp,
                      color: Colors.grey,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),

                  /// Barcode
                  const CustomDividerWidget(),
                  ListTile(
                    title: Text('barcode_product'.tr),
                    leading: const Icon(
                      Icons.qr_code,
                      color: Colors.grey,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),

                  /// supplier
                  const CustomDividerWidget(),
                  ListTile(
                    title: Text('suppliers'.tr),
                    leading: const Icon(
                      Icons.add_card_sharp,
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
              'add_product'.tr,
              style: GlobalStyles.boldStyle,
            )
          ],
        ),
      ),
    );
  }
}
