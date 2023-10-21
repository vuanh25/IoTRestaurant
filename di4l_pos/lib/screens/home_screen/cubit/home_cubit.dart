import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_obs.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/home/response/home_menu.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  /// MARK: - Initials;
  final _appPrefs = getIt<AppPref>();

  HomeCubit() : super(HomeState.initial(data: HomeStateData()));

  /// Get product menus
  Future<void> getProductMenus() async {
    final _menus = [
      HomeMenu(
        key: 'products',
        icon: GlobalImages.iconSizeTShirt,
        title: 'products',
        isSelected: false,
        parentMenu: 'products',
      ),
      HomeMenu(
        key: 'add_product',
        icon: GlobalImages.iconOnlineShopMobile,
        title: 'add_product',
        isSelected: false,
        parentMenu: 'products',
      ),
      // HomeMenu(
      //   key: 'barcode_product',
      //   icon: GlobalImages.iconBarcodeScan,
      //   title: 'barcode_product',
      //   isSelected: false,
      //   parentMenu: 'products',
      // ),
      HomeMenu(
        key: 'variant',
        icon: GlobalImages.iconMerchandside,
        title: 'variant'.tr,
        isSelected: false,
        parentMenu: 'products',
      ),
      HomeMenu(
        key: 'price',
        icon: GlobalImages.iconBargain,
        title: 'price',
        isSelected: false,
        parentMenu: 'products',
      ),
      HomeMenu(
        key: 'unit',
        icon: GlobalImages.iconWeight,
        title: 'unit',
        isSelected: false,
        parentMenu: 'products',
      ),
      HomeMenu(
        key: 'category',
        icon: GlobalImages.iconEcommerceWorldwide,
        title: 'category',
        isSelected: false,
        parentMenu: 'products',
      ),
      HomeMenu(
        key: 'branch',
        icon: GlobalImages.iconClothes,
        title: 'branch',
        isSelected: false,
        parentMenu: 'products',
      ),
      HomeMenu(
        key: 'warranties',
        icon: GlobalImages.iconVerification,
        title: 'warranties',
        isSelected: false,
        parentMenu: 'products',
      ),
    ];
    emit(HomeState.getProductMenus(
        data: state.data
            ?.copyWith(productMenus: _menus, productMenusOriginal: _menus)));
  }

  /// Get import menus
  Future<void> getImportMenus() async {
    final _menus = [
      HomeMenu(
        key: 'return_products',
        icon: GlobalImages.iconOnlineShopMobile,
        title: 'return_products',
        isSelected: false,
        parentMenu: 'imports',
      ),
      HomeMenu(
        key: 'more_import_products',
        icon: GlobalImages.iconTaxInvoice,
        title: 'more_import_products',
        isSelected: false,
        parentMenu: 'imports',
      ),
      HomeMenu(
        key: 'import_list_products',
        icon: GlobalImages.iconEcommerce,
        title: 'import_list_products',
        isSelected: false,
        parentMenu: 'imports',
      )
    ];
    emit(HomeState.getImportMenus(
        data: state.data
            ?.copyWith(importMenus: _menus, importMenusOriginal: _menus)));
  }

  /// Get sell menus
  Future<void> getSellMenus() async {
    final _menus = [
      HomeMenu(
        key: 'sale_orders',
        icon: GlobalImages.iconShoppingOnline,
        title: 'sale_orders',
        isSelected: false,
        parentMenu: 'sell',
      ),
      HomeMenu(
        key: 'create_order',
        icon: GlobalImages.iconShoppingList,
        title: 'create_order',
        isSelected: false,
        parentMenu: 'sell',
      ),
      HomeMenu(
        key: 'sell_return',
        icon: GlobalImages.salesReturn,
        title: 'sell_return',
        isSelected: false,
        parentMenu: 'sell',
      ),
      HomeMenu(
        key: 'temporary_order',
        icon: GlobalImages.iconVisa,
        title: 'temporary_order',
        isSelected: false,
        parentMenu: 'sell',
      ),
      // HomeMenu(
      //   key: 'sale_fnp',
      //   icon: GlobalImages.iconPlace,
      //   title: 'sale_fnp',
      //   isSelected: false,
      //   parentMenu: 'sell',
      // ),
      HomeMenu(
        key: 'cash_register',
        icon: GlobalImages.iconCashRegister,
        title: 'cash_register',
        isSelected: false,
        parentMenu: 'sell',
      ),
    ];
    emit(HomeState.getSellMenus(
        data: state.data
            ?.copyWith(sellMenus: _menus, sellMenusOriginal: _menus)));
  }

  /// Contacts
  Future<void> getContactMenus() async {
    final _menus = [
      HomeMenu(
        key: 'suppliers',
        icon: GlobalImages.iconStore,
        title: 'suppliers',
        isSelected: true,
        parentMenu: 'contacts',
      ),
      HomeMenu(
        key: 'customers',
        icon: GlobalImages.iconCustomer,
        title: 'customers',
        isSelected: false,
        parentMenu: 'contacts',
      ),
      HomeMenu(
        key: 'customer_groups',
        icon: GlobalImages.iconCustomerGroup,
        title: 'customer_group',
        isSelected: false,
        parentMenu: 'contacts',
      ),
    ];
    emit(
      HomeState.getContactMenus(
        data: state.data?.copyWith(
          contactMenus: _menus,
          contactMenusOriginal: _menus,
          homeMenuSelected: _menus.first,
        ),
      ),
    );
  }

  /// Report Menus
  Future<void> getReportMenus() async {
    final _menus = [
      HomeMenu(
        key: 'profit_and_loss',
        icon: GlobalImages.iconReportProfitAndLoss,
        title: 'profit_and_loss',
        isSelected: false,
        parentMenu: 'reports',
      ),
      HomeMenu(
        key: 'stock',
        icon: GlobalImages.iconOnlineShop,
        title: 'stock',
        isSelected: false,
        parentMenu: 'reports',
      ),
    ];
    emit(HomeState.getReportMenus(
        data: state.data
            ?.copyWith(reportMenus: _menus, reportMenusOriginal: _menus)));
  }

  /// Load User
  Future<void> loadUser() async {
    final _userResponse = await _appPrefs.getUser();
    if (_userResponse?.data != null) {
      GlobalObs.updateUserInfo(user: _userResponse!.data!);
    }
  }

  /// Handle Search Menus
  Future<void> searchMenus({required String searchText}) async {
    List<HomeMenu> _productMenusOriginal = [
      ...state.data!.productMenusOriginal
    ];
    List<HomeMenu> _importMenusOriginal = [...state.data!.importMenusOriginal];
    List<HomeMenu> _sellMenusOriginal = [...state.data!.sellMenusOriginal];
    List<HomeMenu> _contactMenusOriginal = [
      ...state.data!.contactMenusOriginal
    ];
    List<HomeMenu> _reportMenusOriginal = [...state.data!.reportMenusOriginal];
    if (searchText.isEmpty) {
      emit(HomeState.getContactMenus(
          data: state.data?.copyWith(contactMenus: _contactMenusOriginal)));
      emit(HomeState.getImportMenus(
          data: state.data?.copyWith(importMenus: _importMenusOriginal)));
      emit(HomeState.getProductMenus(
          data: state.data?.copyWith(productMenus: _productMenusOriginal)));
      emit(HomeState.getSellMenus(
          data: state.data?.copyWith(sellMenus: _sellMenusOriginal)));
      emit(HomeState.getReportMenus(
          data: state.data?.copyWith(reportMenus: _reportMenusOriginal)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final _contactMenus = _contactMenusOriginal.where((HomeMenu element) {
        return TiengViet.parse((element.title ?? '').tr)
            .toLowerCase()
            .contains(searchTextVN);
      }).toList();

      final _importMenus = _importMenusOriginal.where((HomeMenu element) {
        return TiengViet.parse((element.title ?? '').tr)
            .toLowerCase()
            .contains(searchTextVN);
      }).toList();

      final _productMenus = _productMenusOriginal.where((HomeMenu element) {
        return TiengViet.parse((element.title ?? '').tr)
            .toLowerCase()
            .contains(searchTextVN);
      }).toList();

      final _sellMenus = _sellMenusOriginal.where((HomeMenu element) {
        return TiengViet.parse((element.title ?? '').tr)
            .toLowerCase()
            .contains(searchTextVN);
      }).toList();

      final _reportMenus = _reportMenusOriginal.where((HomeMenu element) {
        return TiengViet.parse((element.title ?? '').tr)
            .toLowerCase()
            .contains(searchTextVN);
      }).toList();

      emit(HomeState.getContactMenus(
          data: state.data?.copyWith(contactMenus: _contactMenus)));
      emit(HomeState.getImportMenus(
          data: state.data?.copyWith(importMenus: _importMenus)));
      emit(HomeState.getProductMenus(
          data: state.data?.copyWith(productMenus: _productMenus)));
      emit(HomeState.getSellMenus(
          data: state.data?.copyWith(sellMenus: _sellMenus)));
      emit(HomeState.getReportMenus(
          data: state.data?.copyWith(reportMenus: _reportMenus)));
    }
  }

  /// Handle Pressed Menu
  void handlePressedMenu({required HomeMenu? homeMenu}) {
    debugPrint('Menu Code: ${homeMenu?.key}');
    switch (homeMenu?.key ?? '') {
      case 'products':
        navigator!.pushNamed(RouteGenerator.productsScreen);
        return;
      case 'unit':
        navigator!.pushNamed(RouteGenerator.unitScreen);
        return;
      case 'category':
        navigator!.pushNamed(RouteGenerator.categoryScreen);
        return;
      case 'warranties':
        navigator!.pushNamed(RouteGenerator.warrantiesScreen);
        return;
      case 'branch':
        navigator!.pushNamed(RouteGenerator.branchScreen);
        return;
      case 'price':
        navigator!.pushNamed(RouteGenerator.priceScreen);
        return;
      case 'variant':
        navigator!.pushNamed(RouteGenerator.variantScreen);
        return;
      case 'sale_orders':
        navigator!.pushNamed(RouteGenerator.saleOrderScreen);
        return;
      case 'create_order':
        navigator!.pushNamed(RouteGenerator.createOrderScreen);
        return;
      case 'sell_return':
        navigator!.pushNamed(RouteGenerator.sellReturnScreen);
        return;
      case 'temporary_order':
        navigator!.pushNamed(RouteGenerator.tempOrderScreen);
        return;
      case 'add_product':
        navigator!.pushNamed(RouteGenerator.addProductScreen);
        return;
      case 'suppliers':
        navigator!.pushNamed(RouteGenerator.suppliersScreen);
        return;
      case 'customers':
        navigator!.pushNamed(RouteGenerator.customersScreen);
        return;
      case 'customer_groups':
        navigator!.pushNamed(RouteGenerator.customerGroupScreen);
        return;
      // case 'barcode_product':
      //   navigator!.pushNamed(RouteGenerator.generateCodeScreen);
      //   return;
      case 'profit_and_loss':
        navigator!.pushNamed(RouteGenerator.profitAndLossScreen);
        return;
      case 'stock':
        navigator!.pushNamed(RouteGenerator.stockScreen);
        return;
      case 'cash_register':
        navigator!.pushNamed(RouteGenerator.cashRegisterScreen);
        return;
      default:
        return;
    }
  }

  /// Handle Pressed Web
  Future<void> handlePressedMenuWeb({required HomeMenu? homeMenu}) async {
    final _parentMenu = homeMenu?.parentMenu;
    if (homeMenu?.key == state.data?.homeMenuSelected?.key) {
      return;
    }

    /// Reset Menu
    await resetMenuWeb();

    /// Update Menu Selected
    if (_parentMenu == 'contacts') {
      List<HomeMenu> _homeMenus = [...(state.data?.contactMenus ?? [])];
      _homeMenus.forEach((element) {
        element.isSelected = homeMenu?.key == element.key;
      });
      List<HomeMenu> _homeMenusOriginal = [
        ...(state.data?.contactMenusOriginal ?? [])
      ];
      _homeMenusOriginal.forEach((element) {
        element.isSelected = homeMenu?.key == element.key;
      });
      emit(
        HomeState.getContactMenus(
          data: state.data?.copyWith(
            contactMenus: _homeMenus,
            contactMenusOriginal: _homeMenusOriginal,
            homeMenuSelected: _homeMenus
                .firstWhereOrNull((element) => element.isSelected ?? false),
          ),
        ),
      );
    } else if (_parentMenu == 'reports') {
      List<HomeMenu> _homeMenus = [...(state.data?.reportMenus ?? [])];
      _homeMenus.forEach((element) {
        element.isSelected = homeMenu?.key == element.key;
      });
      List<HomeMenu> _homeMenusOriginal = [
        ...(state.data?.reportMenusOriginal ?? [])
      ];
      _homeMenusOriginal.forEach((element) {
        element.isSelected = homeMenu?.key == element.key;
      });
      emit(
        HomeState.getReportMenus(
          data: state.data?.copyWith(
            reportMenus: _homeMenus,
            reportMenusOriginal: _homeMenusOriginal,
            homeMenuSelected: _homeMenus
                .firstWhereOrNull((element) => element.isSelected ?? false),
          ),
        ),
      );
    } else if (_parentMenu == 'sell') {
      List<HomeMenu> _homeMenus = [...(state.data?.sellMenus ?? [])];
      _homeMenus.forEach((element) {
        element.isSelected = homeMenu?.key == element.key;
      });
      List<HomeMenu> _homeMenusOriginal = [
        ...(state.data?.sellMenusOriginal ?? [])
      ];
      _homeMenusOriginal.forEach((element) {
        element.isSelected = homeMenu?.key == element.key;
      });
      emit(
        HomeState.getSellMenus(
          data: state.data?.copyWith(
            sellMenus: _homeMenus,
            sellMenusOriginal: _homeMenusOriginal,
            homeMenuSelected: _homeMenus
                .firstWhereOrNull((element) => element.isSelected ?? false),
          ),
        ),
      );
    } else if (_parentMenu == 'products') {
      List<HomeMenu> _homeMenus = [...(state.data?.productMenus ?? [])];
      _homeMenus.forEach((element) {
        element.isSelected = homeMenu?.key == element.key;
      });
      List<HomeMenu> _homeMenusOriginal = [
        ...(state.data?.productMenusOriginal ?? [])
      ];
      _homeMenusOriginal.forEach((element) {
        element.isSelected = homeMenu?.key == element.key;
      });
      emit(
        HomeState.getProductMenus(
          data: state.data?.copyWith(
            productMenus: _homeMenus,
            productMenusOriginal: _homeMenusOriginal,
            homeMenuSelected: _homeMenus
                .firstWhereOrNull((element) => element.isSelected ?? false),
          ),
        ),
      );
    } else if (_parentMenu == 'imports') {
      List<HomeMenu> _homeMenus = [...(state.data?.importMenus ?? [])];
      _homeMenus.forEach((element) {
        element.isSelected = homeMenu?.key == element.key;
      });
      List<HomeMenu> _homeMenusOriginal = [
        ...(state.data?.importMenusOriginal ?? [])
      ];
      _homeMenusOriginal.forEach((element) {
        element.isSelected = homeMenu?.key == element.key;
      });
      emit(
        HomeState.getImportMenus(
          data: state.data?.copyWith(
            importMenus: _homeMenus,
            importMenusOriginal: _homeMenusOriginal,
            homeMenuSelected: _homeMenus
                .firstWhereOrNull((element) => element.isSelected ?? false),
          ),
        ),
      );
    }
    this.navigationWebMenu(homeMenu: homeMenu);
  }

  /// Navigation Web Menu
  Future<void> navigationWebMenu({required HomeMenu? homeMenu}) async {}

  /// Reset Menu
  Future<void> resetMenuWeb() async {
    List<HomeMenu> _contactMenus = [...(state.data?.contactMenus ?? [])];
    List<HomeMenu> _contactMenusOriginal = [
      ...(state.data?.contactMenusOriginal ?? [])
    ];
    _contactMenus.forEach((element) {
      element.isSelected = false;
    });
    _contactMenusOriginal.forEach((element) {
      element.isSelected = false;
    });

    List<HomeMenu> _reportMenus = [...(state.data?.reportMenus ?? [])];
    List<HomeMenu> _reportMenusOriginal = [
      ...(state.data?.reportMenusOriginal ?? [])
    ];
    _reportMenus.forEach((element) {
      element.isSelected = false;
    });
    _reportMenusOriginal.forEach((element) {
      element.isSelected = false;
    });

    List<HomeMenu> _sellMenus = [...(state.data?.sellMenus ?? [])];
    List<HomeMenu> _sellMenusOriginal = [
      ...(state.data?.sellMenusOriginal ?? [])
    ];
    _sellMenus.forEach((element) {
      element.isSelected = false;
    });
    _sellMenusOriginal.forEach((element) {
      element.isSelected = false;
    });

    List<HomeMenu> _importMenus = [...(state.data?.importMenus ?? [])];
    List<HomeMenu> _importMenusOrigianl = [
      ...(state.data?.importMenusOriginal ?? [])
    ];
    _importMenus.forEach((element) {
      element.isSelected = false;
    });
    _importMenusOrigianl.forEach((element) {
      element.isSelected = false;
    });

    List<HomeMenu> _productMenus = [...(state.data?.productMenus ?? [])];
    List<HomeMenu> _productMenusOriginal = [
      ...(state.data?.productMenusOriginal ?? [])
    ];
    _productMenus.forEach((element) {
      element.isSelected = false;
    });
    _productMenusOriginal.forEach((element) {
      element.isSelected = false;
    });
    emit(
      HomeState.getContactMenus(
        data: state.data?.copyWith(
          contactMenus: _contactMenus,
          contactMenusOriginal: _contactMenusOriginal,
          productMenus: _productMenus,
          productMenusOriginal: _productMenusOriginal,
          reportMenus: _reportMenus,
          reportMenusOriginal: _reportMenusOriginal,
          sellMenus: _sellMenus,
          sellMenusOriginal: _sellMenusOriginal,
          importMenus: _importMenus,
          importMenusOriginal: _importMenusOrigianl,
          homeMenuSelected: null,
        ),
      ),
    );
  }
}
