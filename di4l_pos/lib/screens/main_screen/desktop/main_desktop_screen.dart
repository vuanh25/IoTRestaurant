import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/home/response/home_menu.dart';
import 'package:di4l_pos/models/products/response/add_product_response.dart';
import 'package:di4l_pos/screens/contacts_screen/customer_group/customer_group_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/customers_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/suppliers_screen/suplliers_screen.dart';
import 'package:di4l_pos/screens/home_screen/cubit/home_cubit.dart';
import 'package:di4l_pos/screens/main_screen/cubit/main_cubit.dart';
import 'package:di4l_pos/screens/main_screen/desktop/widgets/menu_dash_desktop_item.dart';
import 'package:di4l_pos/screens/products_screen/products_screen.dart';
import 'package:di4l_pos/screens/products_screen/sub_screens/add_product_screen/add_product_screen.dart';
import 'package:di4l_pos/widgets/logo_with_text.dart';
import 'package:di4l_pos/widgets/notification_item_widget.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/screens/variant_screen/variant_screen.dart';
import 'package:di4l_pos/screens/price_screen/price_screen.dart';
import 'package:di4l_pos/screens/unit_screen/unit_screen.dart';
import 'package:di4l_pos/screens/category_screen/category_screen.dart';
import 'package:di4l_pos/screens/branch_screen/branch_screen.dart';
import 'package:di4l_pos/screens/warranties_screen/warranties_screen.dart';
import 'package:di4l_pos/screens/sell_return_screen/sell_return_screen.dart';
import 'package:di4l_pos/screens/return_products_screen/return_products_screen.dart';
import 'package:di4l_pos/screens/create_order_screen/create_order_screen.dart';
import 'package:di4l_pos/screens/temp_order_screen/temp_order_screen.dart';
import 'package:di4l_pos/screens/cash_register_screen/cash_register_screen/cash_register_screen.dart';

class MainDesktopScreen extends StatefulWidget {
  /// MARK: - Initials;
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainCubit(),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
      ],
      child: MainDesktopScreen(),
    );
  }

  const MainDesktopScreen({Key? key}) : super(key: key);

  @override
  State<MainDesktopScreen> createState() => _MainDesktopScreenState();
}

class _MainDesktopScreenState extends State<MainDesktopScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  bool isOpenDrawer = true;
  final Map<String, Widget> _contents = {
    'suppliers': SuppliersScreen(),
    'customers': const CustomersScreen(),
    'customer_groups': const CustomerGroupScreen(),
    'products': const ProductsScreen(),
    'add_product': AddProductScreen.provider(),
    'variant': VariantScreen.provider(),
    'price': const PriceScreen(),
    'unit': UnitScreen.provider(),
    'category': CategoryScreen.provider(),
    'branch': const BranchScreen(),
    'warranties': WarrantiesScreen.provider(),
    'more_import_products': Container(),
    'import_list_products': Container(),
    'sale_orders': Container(),
    'return_products': ReturnProductsScreen.provider(),
    'create_order': CreateOrderScreen.provider(),
    'sell_return': SellReturnScreen.provider(),
    'temporary_order': TempOrderScreen.provider(),
    'cash_register': CashRegisterScreen.provider()
  };

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
      body: Row(
        children: [
          _buildDrawerMenu(),
          Expanded(
            flex: 10,
            child: Column(
              children: [
                _buildHeader(),
                _buildContent(),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Drawer Menu
  Widget _buildDrawerMenu() {
    return Visibility(
      visible: this.isOpenDrawer,
      child: Expanded(
        flex: 2,
        child: Column(
          children: [
            /// Logo
            Container(
              padding: const EdgeInsets.all(8.0),
              constraints: BoxConstraints(minHeight: 100),
              alignment: Alignment.center,
              child: LogoWithText(),
              color: GlobalColors.primaryWebColor,
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  constraints: BoxConstraints(
                    minHeight: Get.height,
                  ),
                  color: GlobalColors.primaryWebColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Contact Menus
                      ExpandablePanel(
                        header: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'contacts'.tr.toUpperCase(),
                            style: GlobalStyles.boldStyle.copyWith(
                              color: GlobalColors.hintMenuTextColor,
                            ),
                          ),
                        ),
                        collapsed: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: BlocBuilder<HomeCubit, HomeState>(
                            builder: (context, state) {
                              final _menus = state.data?.contactMenus ?? [];
                              return ListView.separated(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final _menu = _menus.elementAt(index);
                                  return MenuDashDesktopItem(
                                    homeMenu: _menu,
                                    onPressed: (HomeMenu? menu) {
                                      _globalKey.currentContext!
                                          .read<HomeCubit>()
                                          .handlePressedMenuWeb(homeMenu: menu);
                                    },
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(height: 20.0);
                                },
                                itemCount: _menus.length,
                              );
                            },
                          ),
                        ),
                        expanded: const SizedBox.shrink(),
                        theme: ExpandableThemeData(
                          hasIcon: false,
                        ),
                      ),

                      /// Products Menus
                      const SizedBox(height: 16),
                      ExpandablePanel(
                        header: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'products'.tr.toUpperCase(),
                            style: GlobalStyles.boldStyle.copyWith(
                              color: GlobalColors.hintMenuTextColor,
                            ),
                          ),
                        ),
                        collapsed: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: BlocBuilder<HomeCubit, HomeState>(
                            builder: (context, state) {
                              final _menus = state.data?.productMenus ?? [];
                              return ListView.separated(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final _menu = _menus.elementAt(index);
                                  return MenuDashDesktopItem(
                                    homeMenu: _menu,
                                    onPressed: (HomeMenu? menu) {
                                      _globalKey.currentContext!
                                          .read<HomeCubit>()
                                          .handlePressedMenuWeb(homeMenu: menu);
                                    },
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(height: 20.0);
                                },
                                itemCount: _menus.length,
                              );
                            },
                          ),
                        ),
                        expanded: const SizedBox.shrink(),
                        theme: ExpandableThemeData(
                          hasIcon: false,
                        ),
                      ),

                      /// Import products
                      const SizedBox(height: 16),
                      ExpandablePanel(
                        header: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'import_products'.tr.toUpperCase(),
                            style: GlobalStyles.boldStyle.copyWith(
                              color: GlobalColors.hintMenuTextColor,
                            ),
                          ),
                        ),
                        collapsed: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: BlocBuilder<HomeCubit, HomeState>(
                            builder: (context, state) {
                              final _menus = state.data?.importMenus ?? [];
                              return ListView.separated(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final _menu = _menus.elementAt(index);
                                  return MenuDashDesktopItem(
                                    homeMenu: _menu,
                                    onPressed: (HomeMenu? menu) {
                                      _globalKey.currentContext!
                                          .read<HomeCubit>()
                                          .handlePressedMenuWeb(homeMenu: menu);
                                    },
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(height: 20.0);
                                },
                                itemCount: _menus.length,
                              );
                            },
                          ),
                        ),
                        expanded: const SizedBox.shrink(),
                        theme: ExpandableThemeData(
                          hasIcon: false,
                        ),
                      ),

                      /// Sale orders
                      const SizedBox(height: 16),
                      ExpandablePanel(
                        header: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'sale_orders'.tr.toUpperCase(),
                            style: GlobalStyles.boldStyle.copyWith(
                              color: GlobalColors.hintMenuTextColor,
                            ),
                          ),
                        ),
                        collapsed: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: BlocBuilder<HomeCubit, HomeState>(
                            builder: (context, state) {
                              final _menus = state.data?.sellMenus ?? [];
                              return ListView.separated(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final _menu = _menus.elementAt(index);
                                  return MenuDashDesktopItem(
                                    homeMenu: _menu,
                                    onPressed: (HomeMenu? menu) {
                                      _globalKey.currentContext!
                                          .read<HomeCubit>()
                                          .handlePressedMenuWeb(homeMenu: menu);
                                    },
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(height: 20.0);
                                },
                                itemCount: _menus.length,
                              );
                            },
                          ),
                        ),
                        expanded: const SizedBox.shrink(),
                        theme: ExpandableThemeData(
                          hasIcon: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Content
  Widget _buildContent() {
    return Expanded(
      flex: 10,
      child: Container(
        color: GlobalColors.bgWebColor,
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            final _homeMenuSelected = state.data?.homeMenuSelected;
            final _content = this._contents[_homeMenuSelected?.key] ??
                const SizedBox.shrink();
            return _content;
          },
        ),
      ),
    );
  }

  /// Header
  Widget _buildHeader() {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  this.isOpenDrawer = !this.isOpenDrawer;
                });
              },
              icon: const Icon(
                Icons.menu,
              ),
            ),
            Spacer(),

            /// Profile
            const SizedBox(width: 8.0),
            Text(
              'Admin',
              style: GlobalStyles.boldStyle.copyWith(fontSize: 14),
            ),
            const SizedBox(width: 8.0),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  this.showPopupMenu();
                },
                behavior: HitTestBehavior.opaque,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: GlobalColors.bgWebMenuColor,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(22.0)),
                    child: CachedNetworkImage(
                      height: 44,
                      width: 44,
                      fit: BoxFit.cover,
                      imageUrl:
                          'https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg',
                    ),
                  ),
                ),
              ),
            ),

            /// Notifications
            NotificationItemWidget(
              hasNotify: true,
            ),
          ],
        ),
      ),
    );
  }

  void showPopupMenu() async {
    final _callback = await showMenu<String>(
      context: Get.context!,
      position: RelativeRect.fromLTRB(25.0, 65.0, 0.0, 0.0),
      items: [
        PopupMenuItem<String>(
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text('profile'.tr),
          ),
          value: '1',
        ),
        PopupMenuItem<String>(
          child: ListTile(
            leading: Icon(Icons.settings),
            title: Text('settings'.tr),
          ),
          value: '2',
        ),
        PopupMenuItem<String>(
          child: ListTile(
            leading: Icon(Icons.logout),
            title: Text('logout'.tr),
          ),
          value: '3',
        ),
      ],
      elevation: 8.0,
    );
    if (_callback != null) {}
  }
}
