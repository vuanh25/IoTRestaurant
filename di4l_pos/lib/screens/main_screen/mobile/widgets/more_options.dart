import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/get_link/response/get_link_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/get_link_screen/cubit/get_link_cubit.dart';
import 'package:di4l_pos/screens/main_screen/cubit/main_cubit.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/item_girb_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class MoreOptionsWidget extends StatefulWidget {
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainCubit>(
          create: (context) => MainCubit(),
        ),
        BlocProvider<GetLinkCubit>(
          create: (context) => GetLinkCubit(),
        ),
      ],
      child: const MoreOptionsWidget(),
    );
  }

  // static BlocProvider<MainCubit> provider() {
  //   return BlocProvider(
  //     create: (context) => MainCubit(),
  //     child: const MoreOptionsWidget(),
  //   );
  // }

  const MoreOptionsWidget({Key? key}) : super(key: key);

  @override
  State<MoreOptionsWidget> createState() => _MoreOptionsWidgetState();
}

class _MoreOptionsWidgetState extends State<MoreOptionsWidget>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<MainCubit>().getMenu();
    context.read<GetLinkCubit>().getLinks();
  }
  // @override
  // void initState() {
  //   super.initState();
  //   context.read<MainCubit>().getMenu();
  //   context.read<GetLinkCubit>().getLinks();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.48,
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: Get.height * 0.07,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    navigator!
                        .pushNamed(RouteGenerator.editMoreScreen)
                        .whenComplete(
                      () {
                        context.read<MainCubit>().getMenu();
                        context.read<GetLinkCubit>().getLinks();
                      },
                    );
                  },
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.edit,
                          color: Colors.blue,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'edit'.tr,
                          style:
                              GlobalStyles.titilliumRegular(context).copyWith(
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text(
                    'more'.tr,
                    style: GlobalStyles.titilliumRegular(context).copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close_outlined,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<MainCubit, MainState>(builder: (context, state) {
            final menuData = state.data!.menuData?.items ?? [];
            return BlocBuilder<GetLinkCubit, GetLinkState>(
              builder: (context, state) {
                final links = state.data?.links ?? [];
                final List<Link> linkFunctions = [];
                for (var link in links) {
                  if (link.position == 'Function Screen') {
                    linkFunctions.add(link);
                  }
                }
                final menu =
                    menuData.cast<dynamic>() + linkFunctions.cast<dynamic>();
                return Flexible(
                    child: SizedBox(
                  height: Get.height * 0.45,
                  child: GridView.builder(
                    itemCount: menu.length,
                    primary: false,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 15,
                      maxCrossAxisExtent: 110,
                    ),
                    itemBuilder: (context, index) => ItemGridCard(
                      menu: menu.elementAt(index),
                    ),
                  ),
                ));
              },
            );
          }),
        ],
      ),
    );
  }
}
