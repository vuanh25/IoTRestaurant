import 'dart:async';

import 'package:after_layout/after_layout.dart' as after_layout;
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_obs.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/home/response/home_menu.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/home_screen/cubit/home_cubit.dart';
import 'package:di4l_pos/screens/home_screen/widgets/home_category_widget.dart';
import 'package:di4l_pos/screens/home_screen/widgets/home_grid_card.dart';
import 'package:di4l_pos/screens/home_screen/widgets/revenue_widget.dart';
import 'package:di4l_pos/widgets/custom_tollbar_shape.dart';
import 'package:di4l_pos/widgets/notification_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<HomeCubit> provider() {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: HomeScreen(),
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with after_layout.AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<HomeCubit>()
      ..loadUser()
      ..getContactMenus()
      ..getImportMenus()
      ..getSellMenus()
      ..getProductMenus()
      ..getReportMenus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              color: Colors.transparent,
              width: Get.width,
              height: 200,
              child: CustomPaint(
                painter:
                    CustomToolbarShape(lineColor: GlobalColors.primaryColor),
              ),
            ),

            /// Revenue
            Positioned.fill(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Name
                    _buildHeaderName(),

                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            /// Revenue
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RevenueWidget(),
                            ),

                        // /// Imports
                        // BlocBuilder<HomeCubit, HomeState>(
                        //   builder: (context, state) {
                        //     final _menus = state.data?.importMenus ?? [];
                        //     if (_menus.isEmpty) {
                        //       return const SizedBox.shrink();
                        //     }
                        //     return Column(
                        //       children: [
                        //         HomeCategoryWidget(title: 'import_products'.tr),
                        //         Container(
                        //           padding: EdgeInsets.all(10.0),
                        //           child: GridView.builder(
                        //             shrinkWrap: true,
                        //             physics: NeverScrollableScrollPhysics(),
                        //             gridDelegate:
                        //                 SliverGridDelegateWithFixedCrossAxisCount(
                        //               crossAxisCount: 4,
                        //               crossAxisSpacing: 2,
                        //               mainAxisSpacing: 2,
                        //               childAspectRatio: .8,
                        //             ),
                        //             itemBuilder: (context, index) {
                        //               return HomeGridCard(
                        //                 homeMenu: _menus.elementAt(index),
                        //                 onPressed: (HomeMenu? menu) {
                        //                   _globalKey.currentContext!
                        //                       .read<HomeCubit>()
                        //                       .handlePressedMenu(
                        //                           homeMenu: menu);
                        //                 },
                        //               );
                        //             },
                        //             itemCount: _menus.length,
                        //           ),
                        //         ),
                        //       ],
                        //     );
                        //   },
                        // ),

                            Container(
                              color: Colors.white,
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  /// Contacts
                                  _buildMenuContacts(),


                                  /// Products
                                  _buildMenuProducts(),

                                  /// Imports
                                  _buildMenuImport(),

                                  /// Sale orders
                                  _buildMenuSaleOrders(),

                                  /// Report Menus
                                  _buildMenuReports(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BlocBuilder<HomeCubit, HomeState> _buildMenuReports() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final _menus = state.data?.reportMenus ?? [];
        if (_menus.isEmpty) {
          return const SizedBox.shrink();
        }
        return Column(
          children: [
            HomeCategoryWidget(title: 'reports'.tr),
            Container(
              padding: EdgeInsets.all(10.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  childAspectRatio: .8,
                ),
                itemBuilder: (context, index) {
                  return HomeGridCard(
                    homeMenu: _menus.elementAt(index),
                    onPressed: (HomeMenu? menu) {
                      _globalKey.currentContext!
                          .read<HomeCubit>()
                          .handlePressedMenu(homeMenu: menu);
                    },
                  );
                },
                itemCount: _menus.length,
              ),
            ),
          ],
        );
      },
    );
  }

  /// Menu Sale Orders
  BlocBuilder<HomeCubit, HomeState> _buildMenuSaleOrders() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final _menus = state.data?.sellMenus ?? [];
        if (_menus.isEmpty) {
          return const SizedBox.shrink();
        }
        return Column(
          children: [
            HomeCategoryWidget(title: 'sale_orders'.tr),
            Container(
              padding: EdgeInsets.all(10.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  childAspectRatio: .8,
                ),
                itemBuilder: (context, index) {
                  return HomeGridCard(
                    homeMenu: _menus.elementAt(index),
                    onPressed: (HomeMenu? menu) {
                      _globalKey.currentContext!
                          .read<HomeCubit>()
                          .handlePressedMenu(homeMenu: menu);
                    },
                  );
                },
                itemCount: _menus.length,
              ),
            ),
          ],
        );
      },
    );
  }

  /// Menu Import
  BlocBuilder<HomeCubit, HomeState> _buildMenuImport() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final _menus = state.data?.importMenus ?? [];
        if (_menus.isEmpty) {
          return const SizedBox.shrink();
        }
        return Column(
          children: [
            HomeCategoryWidget(title: 'import_products'.tr),
            Container(
              padding: EdgeInsets.all(10.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  childAspectRatio: .8,
                ),
                itemBuilder: (context, index) {
                  return HomeGridCard(
                    homeMenu: _menus.elementAt(index),
                    onPressed: (HomeMenu? menu) {
                      _globalKey.currentContext!
                          .read<HomeCubit>()
                          .handlePressedMenu(homeMenu: menu);
                    },
                  );
                },
                itemCount: _menus.length,
              ),
            ),
          ],
        );
      },
    );
  }

  /// Menu Products
  BlocBuilder<HomeCubit, HomeState> _buildMenuProducts() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final _menus = state.data?.productMenus ?? [];
        if (_menus.isEmpty) {
          return const SizedBox.shrink();
        }
        return Column(
          children: [
            HomeCategoryWidget(title: 'products'.tr),
            Container(
              padding: EdgeInsets.all(10.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  childAspectRatio: .8,
                ),
                itemBuilder: (context, index) {
                  return HomeGridCard(
                    homeMenu: _menus.elementAt(index),
                    onPressed: (HomeMenu? menu) {
                      _globalKey.currentContext!
                          .read<HomeCubit>()
                          .handlePressedMenu(homeMenu: menu);
                    },
                  );
                },
                itemCount: _menus.length,
              ),
            ),
          ],
        );
      },
    );
  }

  /// Menu Contacts
  BlocBuilder<HomeCubit, HomeState> _buildMenuContacts() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final _menus = state.data?.contactMenus ?? [];
        if (_menus.isEmpty) {
          return const SizedBox.shrink();
        }
        return Column(
          children: [
            HomeCategoryWidget(title: 'contacts'.tr),
            Container(
              padding: EdgeInsets.all(10.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  childAspectRatio: .8,
                ),
                itemBuilder: (context, index) {
                  return HomeGridCard(
                    homeMenu: _menus.elementAt(index),
                    onPressed: (HomeMenu? menu) {
                      _globalKey.currentContext!
                          .read<HomeCubit>()
                          .handlePressedMenu(homeMenu: menu);
                    },
                  );
                },
                itemCount: _menus.length,
              ),
            ),
          ],
        );
      },
    );
  }

  /// Header Name
  Widget _buildHeaderName() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              return TextIcon(
                text:
                    '${GlobalObs.firstName.value} ${GlobalObs.lastName.value}',
                textStyle: GlobalStyles.robotoBold(context).copyWith(
                  color: Colors.white,
                  fontSize: 16,
                ),
                prefix: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
              );
            }),

            /// Notifications
            NotificationIconWidget(
              onPressed: () {
                navigator!.pushNamed(RouteGenerator.notificationsScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
