import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/cart_table_order_screen/cubit/cart_table_order_cubit.dart';
import 'package:di4l_pos/screens/table_order_screen/mobile/table_order_mobile_screen.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CartButton extends StatefulWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  final tableOrder = Get.put(TableOrderController());

  @override
  Widget build(BuildContext context) {
    return
        Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: GestureDetector(
          onTap: () {
            context.read<CartCubit>().getCart();
            navigator!.pushNamed(RouteGenerator.cartTableOrderScreen);
          },
          child: badges.Badge(
            position: badges.BadgePosition.topEnd(top: -10, end: -15),
            showBadge: true,
            badgeContent: Obx(
              () => Text(
                '${tableOrder.amountCart.value}',
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
            badgeAnimation: const badges.BadgeAnimation.scale(),
            child: const Icon(
              Icons.shopping_cart,
              size: 30,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
