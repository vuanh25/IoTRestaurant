// ignore_for_file: file_names, prefer_interpolation_to_compose_strings, non_constant_identifier_names, unrelated_type_equality_checks, use_build_context_synchronously, unused_import, depend_on_referenced_packages

import 'dart:async';
import 'package:after_layout/after_layout.dart' as after_layout;
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/shopinfo/request/shopSettingPUTRq.dart';
// import 'package:di4l_pos/models/shopinfo/request/ShopSettingPUTRq.dart';
import 'package:di4l_pos/models/shopinfo/response/Currency.dart';
import 'package:di4l_pos/models/shopinfo/response/DefaultUnit.dart';
import 'package:di4l_pos/models/shopinfo/response/ShopSettingRp.dart' as Rp;
// import 'package:di4l_pos/models/shopinfo/response/ShopSettingRp.dart';
import 'package:di4l_pos/models/shopinfo/response/TaxResponse.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/business_screen/sub_screen/add_status_order/add_status_order_screen.dart';
import 'package:di4l_pos/screens/business_screen/widget/CurencyPicker.dart';
import 'package:di4l_pos/screens/business_screen/widget/CustomDropMenu.dart';
import 'package:di4l_pos/screens/business_screen/widget/DefaultUnitPicker.dart';
import 'package:di4l_pos/screens/business_screen/widget/TImeZonePicker.dart';
import 'package:di4l_pos/screens/business_screen/widget/card_list_business_custom_widget.dart';
import 'package:di4l_pos/screens/business_screen/widget/datePicker.dart';
import 'package:di4l_pos/screens/business_screen/widget/status_order_widget.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/business_screen/widget/custom_textfield.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../widget/custom_text_form_field.dart';
import 'cubit/shopInfo_cubit.dart';

class ShopInfoScreen extends StatefulWidget {
  static BlocProvider<ShopInfoCubit> provider() {
    return BlocProvider(
      create: (context) => ShopInfoCubit(),
      child: const ShopInfoScreen(),
    );
  }

  const ShopInfoScreen({Key? key}) : super(key: key);

  @override
  State<ShopInfoScreen> createState() => _ShopInfoScreenState();
}

class _ShopInfoScreenState extends State<ShopInfoScreen>
    with after_layout.AfterLayoutMixin {
  String? logoUrl, FYSM = "Tháng 1";
  String? SCA, ARM, SIAM, PSL, QIPL, QFPL, SMSS;
  String? EnProductEx, onProductEx, DefaultUnit;
  int? idDefaultUnit, intFYSM;
  CommonSettings? commonSettings;
  TextEditingController profitPercent = TextEditingController();
  TextEditingController editTransactionDate = TextEditingController();
  TextEditingController defauCreditLimit = TextEditingController();
  TextEditingController countDay = TextEditingController();
  TextEditingController FrefixSKU = TextEditingController();
  TextEditingController tax1Name = TextEditingController();
  TextEditingController tax1No = TextEditingController();
  TextEditingController tax2Name = TextEditingController();
  TextEditingController tax2No = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController saleDiscount = TextEditingController();
  TextEditingController stockExpiry = TextEditingController();
  TextEditingController purchase = TextEditingController();
  TextEditingController purchaseReturn = TextEditingController();
  TextEditingController purchaseOrder = TextEditingController();
  TextEditingController stockTransfer = TextEditingController();
  TextEditingController stockAdjustment = TextEditingController();
  TextEditingController sellReturn = TextEditingController();
  TextEditingController expense = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController purchasePayment = TextEditingController();
  TextEditingController expensePayment = TextEditingController();
  TextEditingController sellPayment = TextEditingController();
  TextEditingController businessLocation = TextEditingController();
  TextEditingController usernamePre = TextEditingController();
  TextEditingController subscriptionNo = TextEditingController();
  TextEditingController draft = TextEditingController();
  TextEditingController saleOrder = TextEditingController();
  TextEditingController razorKey = TextEditingController();
  TextEditingController razorKeySecret = TextEditingController();
  TextEditingController stripeKey = TextEditingController();
  TextEditingController stripeKeySecret = TextEditingController();
  //POS
  TextEditingController cashDenomination = TextEditingController();
  TextEditingController barcodePrefix = TextEditingController();

  //email setting
  TextEditingController emailHost = TextEditingController();
  TextEditingController emailPort = TextEditingController();
  TextEditingController emailUsername = TextEditingController();
  TextEditingController emailPassword = TextEditingController();
  TextEditingController emailEncryption = TextEditingController();
  TextEditingController fromAddress = TextEditingController();
  TextEditingController fromName = TextEditingController();
  TextEditingController timeEmail = TextEditingController();
  //sms setting
  TextEditingController smsURL = TextEditingController();
  TextEditingController nexmoKey = TextEditingController();
  TextEditingController nexmoSecret = TextEditingController();
  TextEditingController nexmoFrom = TextEditingController();
  TextEditingController twilioSID = TextEditingController();
  TextEditingController twilioToken = TextEditingController();
  TextEditingController twilioFrom = TextEditingController();
  TextEditingController speedSMSToken = TextEditingController();
  TextEditingController speedFrom = TextEditingController();
  TextEditingController sendParameter = TextEditingController();
  TextEditingController msgParameter = TextEditingController();
  TextEditingController timeSms = TextEditingController();
  TextEditingController header1Key = TextEditingController();
  TextEditingController header2Key = TextEditingController();
  TextEditingController header3Key = TextEditingController();
  TextEditingController header1Val = TextEditingController();
  TextEditingController header2Val = TextEditingController();
  TextEditingController header3Val = TextEditingController();
  TextEditingController parameter1Key = TextEditingController();
  TextEditingController parameter1Val = TextEditingController();
  TextEditingController parameter2Key = TextEditingController();
  TextEditingController parameter2Val = TextEditingController();
  TextEditingController parameter3Key = TextEditingController();
  TextEditingController parameter3Val = TextEditingController();
  TextEditingController parameter4Key = TextEditingController();
  TextEditingController parameter4Val = TextEditingController();
  TextEditingController parameter5Key = TextEditingController();
  TextEditingController parameter5Val = TextEditingController();
  TextEditingController parameter6Key = TextEditingController();
  TextEditingController parameter6Val = TextEditingController();
  TextEditingController parameter7Key = TextEditingController();
  TextEditingController parameter7Val = TextEditingController();
  TextEditingController parameter8Key = TextEditingController();
  TextEditingController parameter8Val = TextEditingController();
  TextEditingController parameter9Key = TextEditingController();
  TextEditingController parameter9Val = TextEditingController();
  TextEditingController parameter10Key = TextEditingController();
  TextEditingController parameter10Val = TextEditingController();
  //reward settings
  TextEditingController rewardName = TextEditingController();
  TextEditingController amountPoint = TextEditingController();
  TextEditingController minOrderEarnReward = TextEditingController();
  TextEditingController maxPointPerOrder = TextEditingController();
  TextEditingController redeemAmountPerPoint = TextEditingController();
  TextEditingController minOrderTotalPerRedeemPoint = TextEditingController();
  TextEditingController minRedeemPoint = TextEditingController();
  TextEditingController maxRedeemPointPerOrder = TextEditingController();
  TextEditingController rewardPointExpiry = TextEditingController();
  //customLabels
  TextEditingController customPayment1 = TextEditingController();
  TextEditingController customPayment2 = TextEditingController();
  TextEditingController customPayment3 = TextEditingController();
  TextEditingController customPayment4 = TextEditingController();
  TextEditingController customPayment5 = TextEditingController();
  TextEditingController customPayment6 = TextEditingController();
  TextEditingController customPayment7 = TextEditingController();

  TextEditingController customContact1 = TextEditingController();
  TextEditingController customContact2 = TextEditingController();
  TextEditingController customContact3 = TextEditingController();
  TextEditingController customContact4 = TextEditingController();
  TextEditingController customContact5 = TextEditingController();
  TextEditingController customContact6 = TextEditingController();
  TextEditingController customContact7 = TextEditingController();
  TextEditingController customContact8 = TextEditingController();
  TextEditingController customContact9 = TextEditingController();
  TextEditingController customContact10 = TextEditingController();

  TextEditingController customProduct1 = TextEditingController();
  TextEditingController customProduct2 = TextEditingController();
  TextEditingController customProduct3 = TextEditingController();
  TextEditingController customProduct4 = TextEditingController();

  TextEditingController customLocation1 = TextEditingController();
  TextEditingController customLocation2 = TextEditingController();
  TextEditingController customLocation3 = TextEditingController();
  TextEditingController customLocation4 = TextEditingController();

  TextEditingController customUser1 = TextEditingController();
  TextEditingController customUser2 = TextEditingController();
  TextEditingController customUser3 = TextEditingController();
  TextEditingController customUser4 = TextEditingController();

  TextEditingController customPurchase1 = TextEditingController();
  TextEditingController customPurchase2 = TextEditingController();
  TextEditingController customPurchase3 = TextEditingController();
  TextEditingController customPurchase4 = TextEditingController();

  TextEditingController customPurchaseShipping1 = TextEditingController();
  TextEditingController customPurchaseShipping2 = TextEditingController();
  TextEditingController customPurchaseShipping3 = TextEditingController();
  TextEditingController customPurchaseShipping4 = TextEditingController();
  TextEditingController customPurchaseShipping5 = TextEditingController();

  TextEditingController customSell1 = TextEditingController();
  TextEditingController customSell2 = TextEditingController();
  TextEditingController customSell3 = TextEditingController();
  TextEditingController customSell4 = TextEditingController();

  TextEditingController customSaleShipping1 = TextEditingController();
  TextEditingController customSaleShipping2 = TextEditingController();
  TextEditingController customSaleShipping3 = TextEditingController();
  TextEditingController customSaleShipping4 = TextEditingController();
  TextEditingController customSaleShipping5 = TextEditingController();

  TextEditingController customService1 = TextEditingController();
  TextEditingController customService2 = TextEditingController();
  TextEditingController customService3 = TextEditingController();
  TextEditingController customService4 = TextEditingController();
  TextEditingController customService5 = TextEditingController();

  //ecommerce
  TextEditingController lazadaID = TextEditingController();
  TextEditingController lazadaKey = TextEditingController();
  TextEditingController shopeeID = TextEditingController();
  TextEditingController shopeeKey = TextEditingController();
  //domain
  TextEditingController customDomain = TextEditingController();

  String noImage =
      "https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg";

  var listEnProductEx = ["add_expiry", "add_manufacturing"],
      listOnProductEx = ["keep_selling", "stop_selling"],
      listTimeFormat = ["12", "24"],
      listDateFormat = ["d/m/Y", "m/d/Y", "d-m-Y", "m-d-Y"],
      listSAM = ["fifo", "lifo"],
      listSIAM = [
        "add_item_in_new_row",
        "increase_item_quantity_if_it_already_exists"
      ],
      listARM = [
        "none",
        "round_to_nearest_whole_number",
        "round_to_nearest_decimal_multiple_of_005",
        "round_to_nearest_decimal_multiple_of_01",
        "round_to_nearest_decimal_multiple_of_05",
      ],
      listSCA = [
        "disabled",
        "logged_in_user",
        "select_from_user_list",
        "select_from_commission_agent_list",
      ],
      listCCT = [
        "invoice_value",
        "payment_received",
      ],
      listPSL = [
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
      ],
      listQIPL = [
        "1",
        "2",
        "3",
        "4",
      ],
      listQFPL = [
        "1",
        "2",
        "3",
        "4",
      ],
      listDDPE = [
        "25",
        "2",
        "3",
        "4",
      ],
      lstFYSM = [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December"
      ],
      listTC = [
        "Blue",
        "Green",
      ],
      listMD = [
        "smtp",
      ],
      listSMSS = [
        "nexmo",
        "twilio",
        "speed",
        "other",
      ],
      listMethod = [
        "get",
        "post",
      ],
      listExpiryType = [
        "month",
        "year",
      ],
      listCurrencyPos = ["before", "after"];

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<ShopInfoCubit>().getInfoBussinessSetting();
    context.read<ShopInfoCubit>().getTax();
  }

  bool _isShowBusiness = false;
  bool _isShowTax = false;
  bool _isShowProduct = false;
  bool _isShowContact = false;
  bool _isShowSale = false;
  bool _isShowPOS = false;
  bool _isShowPurchases = false;
  bool _isShowDashboard = false;
  bool _isShowSystem = false;
  bool _isShowPrefixes = false;
  bool _isShowEmailSettings = false;
  bool _isShowSmsSettings = false;
  bool _isShowRewardPointSettings = false;
  bool _isShowCustomLabels = false;
  bool _isShowEcommerceApiKey = false;
  bool _isShowCustomDomain = false;
  bool _isShowStatusOrder = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ShopInfoCubit, ShopInfoState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          if (state.data!.error.contains('Required')) {
            UIHelpers.showSnackBar(
                message: state.data!.error, type: SnackBarType.ERROR);
          } else {
            UIHelpers.showDialogDefaultBloc(
              status: state.data!.status,
              text: state.data!.error,
            );
          }
        }
      },
      child: Scaffold(
        backgroundColor: GlobalColors.bgColor,
        appBar: buildAppBar(context),
        body: buildBody(),
        bottomNavigationBar: buildSaveButton(context),
      ),
    );
  }

  SingleChildScrollView buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          // business
          InfoBusinessWidget(
              iconLeading: Icons.business,
              title: 'business'.tr,
              visible: _isShowBusiness,
              onTap: () {
                setState(
                  () {
                    _isShowBusiness = !_isShowBusiness;
                  },
                );
              },
              widget: buildBusiness()),
          // tax
          InfoBusinessWidget(
              iconLeading: Icons.note,
              title: 'tax'.tr,
              visible: _isShowTax,
              onTap: () {
                setState(
                  () {
                    _isShowTax = !_isShowTax;
                  },
                );
              },
              widget: buildTax()),
          // products
          InfoBusinessWidget(
              iconLeading: Icons.factory_outlined,
              title: 'products'.tr,
              visible: _isShowProduct,
              onTap: () {
                setState(
                  () {
                    _isShowProduct = !_isShowProduct;
                  },
                );
              },
              widget: buildProduct()),
          // contacts
          InfoBusinessWidget(
              iconLeading: Icons.contact_page_outlined,
              title: 'contacts'.tr,
              visible: _isShowContact,
              onTap: () {
                setState(
                  () {
                    _isShowContact = !_isShowContact;
                  },
                );
              },
              widget: buildContact()),
          // sale
          InfoBusinessWidget(
              iconLeading: Icons.file_upload_outlined,
              title: 'sale'.tr,
              visible: _isShowSale,
              onTap: () {
                setState(
                  () {
                    _isShowSale = !_isShowSale;
                  },
                );
              },
              widget: buildSale()),
          // pos
          InfoBusinessWidget(
              iconLeading: Icons.file_upload_outlined,
              title: 'pos'.tr,
              visible: _isShowPOS,
              onTap: () {
                setState(
                  () {
                    _isShowPOS = !_isShowPOS;
                  },
                );
              },
              widget: buildPOS()),
          // purchases
          InfoBusinessWidget(
              iconLeading: Icons.save_alt_outlined,
              title: 'purchases'.tr,
              visible: _isShowPurchases,
              onTap: () {
                setState(
                  () {
                    _isShowPurchases = !_isShowPurchases;
                  },
                );
              },
              widget: buildPurchase()),
          // dashboard
          InfoBusinessWidget(
              iconLeading: Icons.dashboard_customize_outlined,
              title: 'dashboard'.tr,
              visible: _isShowDashboard,
              onTap: () {
                setState(
                  () {
                    _isShowDashboard = !_isShowDashboard;
                  },
                );
              },
              widget: buildDashboard()),
          // system
          InfoBusinessWidget(
              iconLeading: Icons.system_security_update_outlined,
              title: 'system'.tr,
              visible: _isShowSystem,
              onTap: () {
                setState(
                  () {
                    _isShowSystem = !_isShowSystem;
                  },
                );
              },
              widget: buildSystem()),
          // prefixes
          InfoBusinessWidget(
              iconLeading: Icons.abc_outlined,
              title: 'prefixes'.tr,
              visible: _isShowPrefixes,
              onTap: () {
                setState(
                  () {
                    _isShowPrefixes = !_isShowPrefixes;
                  },
                );
              },
              widget: buildPrefix()),
          // email_settings
          InfoBusinessWidget(
              iconLeading: Icons.admin_panel_settings,
              title: 'email_setting'.tr,
              visible: _isShowEmailSettings,
              onTap: () {
                setState(
                  () {
                    _isShowEmailSettings = !_isShowEmailSettings;
                  },
                );
              },
              widget: buildEmailSettings()),
          // sms_settings
          InfoBusinessWidget(
              iconLeading: Icons.sms_outlined,
              title: 'sms_setting'.tr,
              visible: _isShowSmsSettings,
              onTap: () {
                setState(
                  () {
                    _isShowSmsSettings = !_isShowSmsSettings;
                  },
                );
              },
              widget: buildSMSSettings()),
          // reward_point_settings
          InfoBusinessWidget(
              iconLeading: Icons.point_of_sale_outlined,
              title: 'reward_point_setting'.tr,
              visible: _isShowRewardPointSettings,
              onTap: () {
                setState(
                  () {
                    _isShowRewardPointSettings = !_isShowRewardPointSettings;
                  },
                );
              },
              widget: buildReward()),
          // custom_labels
          InfoBusinessWidget(
              iconLeading: Icons.label_important_outline,
              title: 'custom_label'.tr,
              visible: _isShowCustomLabels,
              onTap: () {
                setState(
                  () {
                    _isShowCustomLabels = !_isShowCustomLabels;
                  },
                );
              },
              widget: buildCustomLabels()),
          // ecommerce_api_key
          // InfoBusinessWidget(
          //     iconLeading: Icons.key_outlined,
          //     title: 'ecommerce_api_key'.tr,
          //     visible: _isShowEcommerceApiKey,
          //     onTap: () {
          //       setState(
          //         () {
          //           _isShowEcommerceApiKey = !_isShowEcommerceApiKey;
          //         },
          //       );
          //     },
          //     widget: buildEcommerce()),
          //custom_domain
          InfoBusinessWidget(
              iconLeading: Icons.public_outlined,
              title: 'custom_domain'.tr,
              visible: _isShowCustomDomain,
              onTap: () {
                setState(
                  () {
                    _isShowCustomDomain = !_isShowCustomDomain;
                  },
                );
              },
              widget: buildCustomDomain()),
          //Status Order
          InfoBusinessWidget(
              iconLeading: Icons.key_outlined,
              title: 'status_order'.tr,
              visible: _isShowStatusOrder,
              onTap: () {
                setState(
                  () {
                    _isShowStatusOrder = !_isShowStatusOrder;
                  },
                );
              },
              widget: buildStatusOrder()),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
          )
        ],
      ),
    );
  }

  // SizedBox(
  //               height: 75,
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                 children: [
  //                   ElevatedButton(
  //                       style: ElevatedButton.styleFrom(
  //                           side: const BorderSide(
  //                               color: GlobalColors.primaryColor),
  //                           shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(10)),
  //                           backgroundColor: GlobalColors.primaryColor,
  //                           fixedSize: Size(Get.width - 50, 45)),
  //                       onPressed: () {
  //                         if (widget.addContactType ==
  //                             AddContactType.CUSTOMER) {
  //                           _globalKey.currentContext!
  //                               .read<AddContactCubit>()
  //                               .addCustomer(
  //                                   customerGroupId: _customerGroupId!,
  //                                   firstName: _txtFirstName.text.trim(),
  //                                   lastName: _txtLastName.text.trim(),
  //                                   supplierBusinessName:
  //                                       _txtSupplierName.text.trim(),
  //                                   phoneNumber: _txtPhoneNumber.text.trim(),
  //                                   email: _txtEmail.text.trim(),
  //                                   dob: _txtDOB.text.trim(),
  //                                   // taxNumber: _txtTaxNumber.text.trim(),
  //                                   // openingBalance: _txtOpeningBalance.text.trim(),
  //                                   // payTermNumber: _txtOpeningBalance.text.trim(),
  //                                   // addressLine1: _txtAddressLine1.text.trim(),
  //                                   shippingAddress:
  //                                       _txtShippingAdress.text.trim());
  //                         } else if (widget.addContactType ==
  //                             AddContactType.SUPPLIER) {
  //                           _globalKey.currentContext!
  //                               .read<AddContactCubit>()
  //                               .addSupplier(
  //                                 firstName: _txtFirstName.text.trim(),
  //                                 lastName: _txtLastName.text.trim(),
  //                                 supplierBusinessName:
  //                                     _txtSupplierName.text.trim(),
  //                                 phoneNumber: _txtPhoneNumber.text.trim(),
  //                                 email: _txtEmail.text.trim(),
  //                                 addressLine1: _txtAddressLine1.text.trim(),
  //                               );
  //                         }
  //                       },
  //                       child: Text(
  //                         'create'.tr,
  //                         style:
  //                             TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
  //                       ))
  //                 ],
  //               ),
  //             ),

  SizedBox buildSaveButton(BuildContext context) {
    return SizedBox(
        height: 60,
        child: BlocBuilder<ShopInfoCubit, ShopInfoState>(
            builder: (context, state) {
          final info = state.data?.shopInfo;

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: GlobalColors.primaryColor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: GlobalColors.primaryColor,
                      fixedSize: Size(Get.width - 50, 45)),
                  onPressed: () {
                    context.read<ShopInfoCubit>().updateBusiness(
                        //business
                        name: info!.business?.businessName ?? "",
                        currencyId: info.business?.currencyId,
                        startDate: info.business?.startDate ?? "",
                        defaultProfitPercent:
                            info.business?.defaultProfitPercent,
                        currencySymbolPlacement:
                            info.business?.currencySymbolPlacement ?? "",
                        timeZone: info.business?.timezone ?? "",
                        fyStartMonth:
                            info.business?.financialYearStartMonth ?? 1,
                        accountingMethod: info.business?.accountingMethod ?? "",
                        transactionEditDays:
                            info.business?.transactionEditDays ?? 1,
                        dateFormat: info.business?.dateFormat ?? "",
                        timeFormat: info.business?.timeFormat,
                        //logo
                        // currencyId: info.business.currency
                        //tax
                        taxNumber1: info.tax?.taxNumber1 ?? "",
                        taxLabel1: info.tax?.taxLabel1 ?? "",
                        taxNumber2: info.tax?.taxNumber2 ?? "",
                        taxLabel2: info.tax?.taxLabel2 ?? "",
                        enableInlineTax: info.tax?.enableInlineTax,
                        // // //product
                        skuPrefix: info.product?.skuPrefix ?? "",
                        enableProductExpiry:
                            info.product?.enableProductExpiry ?? false,
                        expiryType: info.product?.expiryType ?? "",
                        onProductExpiry: info.product?.onProductExpiry ?? "",
                        stopSellingBefore: info.product?.stopSellingBefore,
                        enableBrand: info.product?.enableBrand ?? false,
                        enableCategory: info.product?.enableCategory ?? false,
                        enableSubCategory:
                            info.product?.enableSubCategory ?? false,
                        enablePriceTax: info.product?.enablePriceTax ?? false,
                        enableProductWarranty:
                            info.product?.enableProductWarranty ?? false,
                        defaultUnit: info.product?.defaultUnit,
                        enableSubUnits: info.product?.enableSubUnits ?? false,
                        enableRacks: info.product?.enableRacks ?? false,
                        enableRow: info.product?.enableRow ?? false,
                        defaultSalesDiscount: info.sale?.defaultSalesDiscount,
                        defaultSalesTax: info.sale?.defaultSalesTax,
                        itemAdditionMethod: info.sale?.salesItemAdditionMethod,
                        commonSettings: CommonSettings(
                            defaultCreditLimit:
                                info.contact!.defaultCreditLimit,
                            enableProductWarranty:
                                info.product?.enableProductWarranty == false
                                    ? 0
                                    : 1,
                            enablePurchaseOrder:
                                info.purchases?.enablePurchaseOrder == false
                                    ? 0
                                    : 1),
                        posSettings: PosSettings(
                            enableMsp: info.sale?.salePriceIsMinimumSalePrice == false
                                ? 0
                                : 1,
                            allowOverselling:
                                info.sale?.allowOverselling == false ? 0 : 1,
                            enableSalesOrder:
                                info.sale?.enableSalesOrder == false ? 0 : 1,
                            isPayTermRequired: info.sale?.isPayTermRequired == false ? 0 : 1,
                            isCommissionAgentRequired: info.sale?.commissionAgent!.isCommissionAgentRequired == false ? 0 : 1,
                            enablePaymentLink: info.sale?.paymentLink!.enablePaymentLink == false ? 0 : 1,
                            cmmsnCalculationType: info.sale?.commissionAgent?.commissionCalculationType,
                            amountRoundingMethod: info.sale?.amountRoundingMethod,
                            razorPayKeyId: info.sale?.paymentLink!.razorPayKeyId,
                            razorPayKeySecret: info.sale?.paymentLink!.razorPayKeyId,
                            stripePublicKey: info.sale?.paymentLink!.stripePublicKey,
                            stripeSecretKey: info.sale?.paymentLink!.stripeSecretKey,
                            disablePayCheckout: info.pos?.posSettings?.disablePayCheckout == false ? 0 : 1,
                            disableDraft: info.pos?.posSettings?.disableDraft == false ? 0 : 1,
                            disableExpressCheckout: info.pos?.posSettings?.disableExpressCheckout == false ? 0 : 1,
                            hideProductSuggestion: info.pos?.posSettings?.hideProductSuggestion == false ? 0 : 1,
                            hideRecentTrans: info.pos?.posSettings?.hideRecentTrans == false ? 0 : 1,
                            disableDiscount: info.pos?.posSettings?.disableDiscount == false ? 0 : 1,
                            disableOrderTax: info.pos?.posSettings?.disableOrderTax == false ? 0 : 1,
                            isPosSubtotalEditable: info.pos?.posSettings?.isPosSubtotalEditable == false ? 0 : 1,
                            disableSuspend: info.pos?.posSettings?.disableSuspend == false ? 0 : 1,
                            enableTransactionDate: info.pos?.posSettings?.enableTransactionDate == false ? 0 : 1,
                            inlineServiceStaff: info.pos?.posSettings?.inlineServiceStaff == false ? 0 : 1,
                            isServiceStaffRequired: info.pos?.posSettings?.isServiceStaffRequired == false ? 0 : 1,
                            disableCreditSaleButton: info.pos?.posSettings?.disableCreditSaleButton == false ? 0 : 1,
                            enableWeighingScale: info.pos?.posSettings?.enableWeighingScale == false ? 0 : 1,
                            showInvoiceScheme: info.pos?.posSettings?.showInvoiceScheme == false ? 0 : 1,
                            showInvoiceLayout: info.pos?.posSettings?.showInvoiceLayout == false ? 0 : 1,
                            printOnSuspend: info.pos?.posSettings?.printOnSuspend == false ? 0 : 1,
                            showPricingOnProductSugesstion: info.pos?.posSettings?.showPricingOnProductSugesstion == false ? 0 : 1,
                            cashDenominations: info.pos?.cashDenominations),
                        salesCmsnAgnt: info.sale?.commissionAgent?.salesCommissionAgent,
                        weighingScaleSetting: WeighingScaleSetting(
                          labelPrefix: info
                              .pos?.weighingScaleSetting!.weighingBarcodePrefix,
                          productSkuLength: info.pos?.weighingScaleSetting!
                              .weighingProductSkuLength,
                          qtyLength: info.pos?.weighingScaleSetting!
                              .weighingQtyIntegerPartLength,
                          qtyLengthDecimal: info.pos?.weighingScaleSetting!
                              .weighingQtyFractionalPartLength,
                        ),
                        enableEditingProductFromPurchase: info.purchases?.enableEditingProductFromPurchase == false ? 0 : 1,
                        enablePurchaseStatus: info.purchases?.enablePurchaseStatus == false ? 0 : 1,
                        enableLotNumber: info.purchases?.enableLotNumber == false ? 0 : 1,
                        stockExpiryAlertDays: info.dashboard?.stockExpiryAlertDays,
                        enableTooltip: info.system?.enableTooltip == false ? 0 : 1,
                        refNoPrefixes: RefNoPrefixes(purchase: info.prefixes?.purchasePrefix, purchaseReturn: info.prefixes?.purchaseReturnPrefix, purchaseOrder: info.prefixes?.purchaseOrderPrefix, stockTransfer: info.prefixes?.stockTransferPrefix, stockAdjustment: info.prefixes?.stockAdjustmentPrefix, sellReturn: info.prefixes?.sellReturnPrefix, expense: info.prefixes?.expensesPrefix, contacts: info.prefixes?.contactsPrefix, purchasePayment: info.prefixes?.purchasePayment, sellPayment: info.prefixes?.sellPayment, expensePayment: info.prefixes?.expensePayment, businessLocation: info.prefixes?.businessLocationPrefix, username: info.prefixes?.usernamePrefix, subscription: info.prefixes?.subscriptionPrefix, draft: info.prefixes?.draftPrefix, salesOrder: info.prefixes?.salesOrderPrefix),
                        emailSettings: EmailSettings(
                          mailHost: info.emailSetting?.mailHost,
                          mailPort: info.emailSetting?.mailPort,
                          mailUsername: info.emailSetting?.mailUsername,
                          mailPassword: info.emailSetting?.mailPassword,
                          mailEncryption: info.emailSetting?.mailEncryption,
                          mailFromAddress: info.emailSetting?.mailFromAddress,
                          mailFromName: info.emailSetting?.mailFromName,
                        ),
                        smsSettings: SmsSettings(smsService: state.data!.smsService, smsStartLesson: info.smsSetting?.smsStartLesson, nexmoSecret: info.smsSetting?.nexmoSecret, nexmoKey: info.smsSetting?.nexmoKey, nexmoFrom: info.smsSetting?.nexmoFrom, twilioSid: info.smsSetting?.twilioSid, twilioToken: info.smsSetting?.twilioToken, twilioFrom: info.smsSetting?.twilioFrom, speedToken: info.smsSetting?.speedToken, speedFrom: info.smsSetting?.speedFrom, url: info.smsSetting?.smsSettingsUrl, sendToParamName: info.smsSetting?.sendToParamName, msgParamName: info.smsSetting?.msgParamName, requestMethod: info.smsSetting!.requestMethod, header1: info.smsSetting?.smsSettingsHeaderKey1, headerVal1: info.smsSetting?.smsSettingsHeaderVal1, header2: info.smsSetting?.smsSettingsHeaderKey2, headerVal2: info.smsSetting?.smsSettingsHeaderVal2, header3: info.smsSetting?.smsSettingsHeaderKey3, headerVal3: info.smsSetting?.smsSettingsHeaderVal3, param1: info.smsSetting?.smsSettingsParamKey1, paramVal1: info.smsSetting?.smsSettingsParamVal1, param2: info.smsSetting?.smsSettingsParamKey2, paramVal2: info.smsSetting?.smsSettingsParamVal2, param3: info.smsSetting?.smsSettingsParamKey3, paramVal3: info.smsSetting?.smsSettingsParamVal3, param4: info.smsSetting?.smsSettingsParamKey4, paramVal4: info.smsSetting?.smsSettingsParamVal4, param5: info.smsSetting?.smsSettingsParamKey5, paramVal5: info.smsSetting?.smsSettingsParamVal5, param6: info.smsSetting?.smsSettingsParamKey6, paramVal6: info.smsSetting?.smsSettingsParamVal6, param7: info.smsSetting?.smsSettingsParamKey7, paramVal7: info.smsSetting?.smsSettingsParamVal7, param8: info.smsSetting?.smsSettingsParamKey8, paramVal8: info.smsSetting?.smsSettingsParamVal8, param9: info.smsSetting?.smsSettingsParamKey9, paramVal9: info.smsSetting?.smsSettingsParamVal9, param10: info.smsSetting?.smsSettingsParamKey10, paramVal10: info.smsSetting?.smsSettingsParamVal10),
                        enableRp: info.rewardPointSetting!.enableRewardPoint == false ? 0 : 1,
                        rpName: info.rewardPointSetting!.rewardPointName,
                        amountForUnitRp: info.rewardPointSetting!.earningPointsSetting!.amountForUnitRewardPoint,
                        minOrderTotalForRp: info.rewardPointSetting!.earningPointsSetting!.minOrderTotalForRewardPoint,
                        maxRpPerOrder: info.rewardPointSetting!.earningPointsSetting!.maxRewardPointPerOrder,
                        redeemAmountPerUnitRp: info.rewardPointSetting!.redeemPointsSetting!.redeemAmountPerUnitRewardPoint,
                        minOrderTotalForRedeem: info.rewardPointSetting!.redeemPointsSetting!.minOrderTotalForRedeem,
                        minRedeemPoint: info.rewardPointSetting!.redeemPointsSetting!.minRedeemPoint,
                        maxRedeemPoint: info.rewardPointSetting!.redeemPointsSetting!.maxRedeemPoint,
                        rpExpiryPeriod: info.rewardPointSetting!.redeemPointsSetting!.rpExpiryPeriod,
                        rpExpiryType: info.rewardPointSetting!.redeemPointsSetting!.rpExpiryType,
                        domain: customDomain.text.trim(),
                        customLabels: CustomLabels(
                            payments: Payments(customPay1: info.customLabel?.labelsForCustomPayments!.customPayment1Label, customPay2: info.customLabel?.labelsForCustomPayments!.customPayment2Label, customPay3: info.customLabel?.labelsForCustomPayments!.customPayment3Label, customPay4: info.customLabel?.labelsForCustomPayments!.customPayment4Label, customPay5: info.customLabel?.labelsForCustomPayments!.customPayment5Label, customPay6: info.customLabel?.labelsForCustomPayments!.customPayment6Label, customPay7: info.customLabel?.labelsForCustomPayments!.customPayment7Label),
                            contact: Contact(customField1: info.customLabel?.labelsForContactCustomFields!.contactCustomField1Label, customField2: info.customLabel?.labelsForContactCustomFields!.contactCustomField2Label, customField3: info.customLabel?.labelsForContactCustomFields!.contactCustomField3Label, customField4: info.customLabel?.labelsForContactCustomFields!.contactCustomField4Label, customField5: info.customLabel?.labelsForContactCustomFields!.contactCustomField5Label, customField6: info.customLabel?.labelsForContactCustomFields!.contactCustomField6Label, customField7: info.customLabel?.labelsForContactCustomFields!.contactCustomField7Label, customField8: info.customLabel?.labelsForContactCustomFields!.contactCustomField8Label, customField9: info.customLabel?.labelsForContactCustomFields!.contactCustomField9Label, customField10: info.customLabel?.labelsForContactCustomFields!.contactCustomField10Label),
                            product: ProductBusinessSetting(customField1: info.customLabel?.labelsForProductCustomFields!.productCustomField1Label, customField2: info.customLabel?.labelsForProductCustomFields!.productCustomField2Label, customField3: info.customLabel?.labelsForProductCustomFields!.productCustomField3Label, customField4: info.customLabel?.labelsForProductCustomFields!.productCustomField4Label),
                            location: Location(customField1: info.customLabel?.labelsForLocationCustomFields!.locationCustomField1Label, customField2: info.customLabel?.labelsForLocationCustomFields!.locationCustomField2Label, customField3: info.customLabel?.labelsForLocationCustomFields!.locationCustomField3Label, customField4: info.customLabel?.labelsForLocationCustomFields!.locationCustomField4Label),
                            user: UserBusinessSetting(customField1: info.customLabel?.labelsForUserCustomFields!.userCustomField1Label, customField2: info.customLabel?.labelsForUserCustomFields!.userCustomField2Label, customField3: info.customLabel?.labelsForUserCustomFields!.userCustomField3Label, customField4: info.customLabel?.labelsForUserCustomFields!.userCustomField4Label),
                            purchase: Purchase(
                              customField1: info
                                  .customLabel
                                  ?.labelsForPurchaseCustomFields!
                                  .purchaseCustomField1Label,
                              customField2: info
                                  .customLabel
                                  ?.labelsForPurchaseCustomFields!
                                  .purchaseCustomField2Label,
                              customField3: info
                                  .customLabel
                                  ?.labelsForPurchaseCustomFields!
                                  .purchaseCustomField3Label,
                              customField4: info
                                  .customLabel
                                  ?.labelsForPurchaseCustomFields!
                                  .purchaseCustomField4Label,
                              isCustomField1Required: info
                                          .customLabel
                                          ?.labelsForPurchaseCustomFields!
                                          .isCustomField1Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField2Required: info
                                          .customLabel
                                          ?.labelsForPurchaseCustomFields!
                                          .isCustomField2Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField3Required: info
                                          .customLabel
                                          ?.labelsForPurchaseCustomFields!
                                          .isCustomField3Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField4Required: info
                                          .customLabel
                                          ?.labelsForPurchaseCustomFields!
                                          .isCustomField4Required ==
                                      false
                                  ? 0
                                  : 1,
                            ),
                            purchaseShipping: PurchaseShipping(
                              customField1: info
                                  .customLabel
                                  ?.labelsForPurchaseShippingCustomFields!
                                  .purchaseShippingCustomField1Label,
                              customField2: info
                                  .customLabel
                                  ?.labelsForPurchaseShippingCustomFields!
                                  .purchaseShippingCustomField2Label,
                              customField3: info
                                  .customLabel
                                  ?.labelsForPurchaseShippingCustomFields!
                                  .purchaseShippingCustomField3Label,
                              customField4: info
                                  .customLabel
                                  ?.labelsForPurchaseShippingCustomFields!
                                  .purchaseShippingCustomField4Label,
                              customField5: info
                                  .customLabel
                                  ?.labelsForPurchaseShippingCustomFields!
                                  .purchaseShippingCustomField5Label,
                              isCustomField1Required: info
                                          .customLabel
                                          ?.labelsForPurchaseShippingCustomFields!
                                          .isCustomField1Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField2Required: info
                                          .customLabel
                                          ?.labelsForPurchaseShippingCustomFields!
                                          .isCustomField2Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField3Required: info
                                          .customLabel
                                          ?.labelsForPurchaseShippingCustomFields!
                                          .isCustomField3Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField4Required: info
                                          .customLabel
                                          ?.labelsForPurchaseShippingCustomFields!
                                          .isCustomField4Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField5Required: info
                                          .customLabel
                                          ?.labelsForPurchaseShippingCustomFields!
                                          .isCustomField5Required ==
                                      false
                                  ? 0
                                  : 1,
                            ),
                            sell: Sell(
                              customField1: info
                                  .customLabel
                                  ?.labelsForSellCustomFields!
                                  .sellCustomField1Label,
                              customField2: info
                                  .customLabel
                                  ?.labelsForSellCustomFields!
                                  .sellCustomField2Label,
                              customField3: info
                                  .customLabel
                                  ?.labelsForSellCustomFields!
                                  .sellCustomField3Label,
                              customField4: info
                                  .customLabel
                                  ?.labelsForSellCustomFields!
                                  .sellCustomField4Label,
                              isCustomField1Required: info
                                          .customLabel
                                          ?.labelsForSellCustomFields!
                                          .isCustomField1Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField2Required: info
                                          .customLabel
                                          ?.labelsForSellCustomFields!
                                          .isCustomField2Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField3Required: info
                                          .customLabel
                                          ?.labelsForSellCustomFields!
                                          .isCustomField3Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField4Required: info
                                          .customLabel
                                          ?.labelsForSellCustomFields!
                                          .isCustomField4Required ==
                                      false
                                  ? 0
                                  : 1,
                            ),
                            shipping: Shipping(
                              customField1: info
                                  .customLabel
                                  ?.labelsForSaleShippingCustomFields!
                                  .shippingCustomField1Label,
                              customField2: info
                                  .customLabel
                                  ?.labelsForSaleShippingCustomFields!
                                  .shippingCustomField2Label,
                              customField3: info
                                  .customLabel
                                  ?.labelsForSaleShippingCustomFields!
                                  .shippingCustomField3Label,
                              customField4: info
                                  .customLabel
                                  ?.labelsForSaleShippingCustomFields!
                                  .shippingCustomField4Label,
                              customField5: info
                                  .customLabel
                                  ?.labelsForSaleShippingCustomFields!
                                  .shippingCustomField5Label,
                              isCustomField1Required: info
                                          .customLabel
                                          ?.labelsForSaleShippingCustomFields!
                                          .isCustomField1Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField2Required: info
                                          .customLabel
                                          ?.labelsForSaleShippingCustomFields!
                                          .isCustomField2Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField3Required: info
                                          .customLabel
                                          ?.labelsForSaleShippingCustomFields!
                                          .isCustomField3Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField4Required: info
                                          .customLabel
                                          ?.labelsForSaleShippingCustomFields!
                                          .isCustomField4Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField5Required: info
                                          .customLabel
                                          ?.labelsForSaleShippingCustomFields!
                                          .isCustomField5Required ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField1ContactDefault: info
                                          .customLabel
                                          ?.labelsForSaleShippingCustomFields!
                                          .isCustomField1ContactDefault ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField2ContactDefault: info
                                          .customLabel
                                          ?.labelsForSaleShippingCustomFields!
                                          .isCustomField2ContactDefault ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField3ContactDefault: info
                                          .customLabel
                                          ?.labelsForSaleShippingCustomFields!
                                          .isCustomField3ContactDefault ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField4ContactDefault: info
                                          .customLabel
                                          ?.labelsForSaleShippingCustomFields!
                                          .isCustomField4ContactDefault ==
                                      false
                                  ? 0
                                  : 1,
                              isCustomField5ContactDefault: info
                                          .customLabel
                                          ?.labelsForSaleShippingCustomFields!
                                          .isCustomField5ContactDefault ==
                                      false
                                  ? 0
                                  : 1,
                            ),
                            typesOfService: TypesOfService(
                              customField1: info
                                  .customLabel
                                  ?.labelsForTypesOfServiceCustomFields!
                                  .typesOfServiceCustomField1Label,
                              customField2: info
                                  .customLabel
                                  ?.labelsForTypesOfServiceCustomFields!
                                  .typesOfServiceCustomField2Label,
                              customField3: info
                                  .customLabel
                                  ?.labelsForTypesOfServiceCustomFields!
                                  .typesOfServiceCustomField3Label,
                              customField4: info
                                  .customLabel
                                  ?.labelsForTypesOfServiceCustomFields!
                                  .typesOfServiceCustomField4Label,
                              customField5: info
                                  .customLabel
                                  ?.labelsForTypesOfServiceCustomFields!
                                  .typesOfServiceCustomField5Label,
                            )),
                        settings: Settings(lazadaClientId: info.ecommerceApiKey?.lazadaApiKey?.lazadaClientId, lazadaSecretKey: info.ecommerceApiKey?.lazadaApiKey?.lazadaSecretKey, shopeeClientId: info.ecommerceApiKey?.shopeeApiKey?.shopeeClientId, shopeeSecretKey: info.ecommerceApiKey?.shopeeApiKey?.shopeeSecretKey)
                        //CONTACT
                        );
                  },
                  child: Text(
                    "update".tr,
                    style: GlobalStyles.robotoBold(context),
                  )),
            ],
          );
        }));
  }

  BlocBuilder<ShopInfoCubit, ShopInfoState> buildStatusOrder() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(
      builder: (context, state) {
        final listStatusOrder = state.data!.shopInfo!.statusOrder ?? [];
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('STT'),
                  Text('status_order'.tr),
                  IconButton(
                    onPressed: () => showModalBottomSheet(
                      context: context,
                      builder: (context) => AddStatusOrder.provider(
                        addStatusOrderType: AddType.NEW,
                      ),
                    ).whenComplete(() => context
                        .read<ShopInfoCubit>()
                        .getInfoBussinessSetting()),
                    icon: Icon(Icons.add),
                    color: GlobalColors.primaryColor,
                  )
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return StatusOrderWidget(
                      index: index + 1,
                      statusOrder: listStatusOrder.elementAt(index),
                      onPressed: (Rp.StatusOrder? statusOrder) =>
                          showModalBottomSheet(
                                  context: context,
                                  builder: ((context) =>
                                      AddStatusOrder.provider(
                                          addStatusOrderType: AddType.UPDATE,
                                          statusOrderModel: statusOrder))
                                  // AddStatusOrder.provider(addStatusOrderType: AddType.UPDATE,statusOrderModel: statusOrder)
                                  // navigator!
                                  //     .pushNamed(
                                  //   RouteGenerator.addStatusOrderScreen,
                                  //   arguments: {
                                  //     'ADD_STATUS_ORDER':
                                  //         AddType.UPDATE,
                                  //     'STATUS_ORDER_MODEL': statusOrder,
                                  //   },
                                  // )
                                  )
                              .whenComplete(() => context
                                  .read<ShopInfoCubit>()
                                  .getInfoBussinessSetting()),
                      onDelete: () => context
                          .read<ShopInfoCubit>()
                          .delete(listStatusOrder.elementAt(index).id!));
                },
                separatorBuilder: (context, index) => const SizedBox.shrink(),
                itemCount: listStatusOrder.length,
              ),
            ],
          ),
        );
      },
    );
  }

  //build CustomDomain
  BlocBuilder<ShopInfoCubit, ShopInfoState> buildCustomDomain() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(
      builder: (context, state) {
        final domainInfo = state.data!.shopInfo!.customDomain;
        final statusDomain = state.data!.shopInfo!.statusCustomDomain;
        customDomain.text = domainInfo!;
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${'add_existing_domain'.tr}:'),
              CustomTextFormField(
                title: 'custom_domain'.tr,
                controller: customDomain,
                hintText: 'example.com',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                      statusDomain == 'Waiting'
                          ? Icons.warning_amber_outlined
                          : Icons.check,
                      color: (statusDomain == 'Waiting')
                          ? Colors.amber
                          : GlobalColors.primaryColor),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    statusDomain == 'Waiting' ? 'waiting'.tr : 'approved'.tr,
                    style: TextStyle(
                        color: (statusDomain == 'Waiting')
                            ? Colors.amber
                            : GlobalColors.primaryColor),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  //build Ecommerce
  BlocBuilder<ShopInfoCubit, ShopInfoState> buildEcommerce() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(
      builder: (context, state) {
        final ecommerceInfo = state.data!.shopInfo!.ecommerceApiKey;
        lazadaID.text = ecommerceInfo?.lazadaApiKey?.lazadaClientId ?? "";
        lazadaKey.text = ecommerceInfo?.lazadaApiKey?.lazadaSecretKey ?? '';

        shopeeID.text = ecommerceInfo?.shopeeApiKey?.shopeeClientId ?? '';
        shopeeKey.text = ecommerceInfo?.shopeeApiKey?.shopeeSecretKey ?? '';

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('lazada_api_key'.tr),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: CustomTextFormField(
                    controller: lazadaID,
                    onChanged: (value) =>
                        ecommerceInfo?.lazadaApiKey?.lazadaClientId = value,
                    title: 'lazada_client_id'.tr,
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomTextFormField(
                      controller: lazadaKey,
                      onChanged: (value) =>
                          ecommerceInfo?.lazadaApiKey?.lazadaSecretKey = value,
                      title: 'lazada_secret_key'.tr,

                      // icon: Icons.percent
                    ),
                  ),
                ],
              ),
              const Divider(),
              Text('shopee_api_key'.tr),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: shopeeID,
                      title: 'shopee_client_id'.tr,
                      onChanged: (value) =>
                          ecommerceInfo?.shopeeApiKey?.shopeeClientId = value,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomTextFormField(
                      controller: shopeeKey,
                      title: 'shopee_secret_key'.tr,
                      onChanged: (value) =>
                          ecommerceInfo?.shopeeApiKey?.shopeeSecretKey = value,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

// buildCustomLabels
  BlocBuilder<ShopInfoCubit, ShopInfoState> buildCustomLabels() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(
      builder: (context, state) {
        final customInfo = state.data!.shopInfo!.customLabel;
        customPayment1.text =
            customInfo?.labelsForCustomPayments?.customPayment1Label == null
                ? ''
                : '${customInfo?.labelsForCustomPayments!.customPayment1Label}';

        customPayment2.text =
            customInfo?.labelsForCustomPayments?.customPayment2Label == null
                ? ''
                : '${customInfo?.labelsForCustomPayments!.customPayment2Label}';
        customPayment3.text =
            customInfo?.labelsForCustomPayments?.customPayment3Label == null
                ? ''
                : '${customInfo?.labelsForCustomPayments!.customPayment3Label}';
        customPayment4.text =
            customInfo?.labelsForCustomPayments?.customPayment4Label == null
                ? ''
                : '${customInfo?.labelsForCustomPayments!.customPayment4Label}';
        customPayment5.text =
            customInfo?.labelsForCustomPayments?.customPayment5Label == null
                ? ''
                : '${customInfo?.labelsForCustomPayments!.customPayment5Label}';
        customPayment6.text =
            customInfo?.labelsForCustomPayments?.customPayment6Label == null
                ? ''
                : '${customInfo?.labelsForCustomPayments!.customPayment6Label}';
        customPayment7.text =
            customInfo?.labelsForCustomPayments?.customPayment7Label == null
                ? ''
                : '${customInfo?.labelsForCustomPayments!.customPayment7Label}';

        customContact1.text = customInfo
                    ?.labelsForContactCustomFields?.contactCustomField1Label ==
                null
            ? ''
            : '${customInfo?.labelsForContactCustomFields?.contactCustomField1Label}';
        customContact2.text = customInfo
                    ?.labelsForContactCustomFields?.contactCustomField2Label ==
                null
            ? ''
            : '${customInfo?.labelsForContactCustomFields?.contactCustomField2Label}';
        customContact3.text = customInfo
                    ?.labelsForContactCustomFields?.contactCustomField3Label ==
                null
            ? ''
            : '${customInfo?.labelsForContactCustomFields?.contactCustomField3Label}';
        customContact4.text = customInfo
                    ?.labelsForContactCustomFields?.contactCustomField4Label ==
                null
            ? ''
            : '${customInfo?.labelsForContactCustomFields?.contactCustomField4Label}';
        customContact5.text = customInfo
                    ?.labelsForContactCustomFields?.contactCustomField5Label ==
                null
            ? ''
            : '${customInfo?.labelsForContactCustomFields?.contactCustomField5Label}';
        customContact6.text = customInfo
                    ?.labelsForContactCustomFields?.contactCustomField6Label ==
                null
            ? ''
            : '${customInfo?.labelsForContactCustomFields?.contactCustomField6Label}';
        customContact7.text = customInfo
                    ?.labelsForContactCustomFields?.contactCustomField7Label ==
                null
            ? ''
            : '${customInfo?.labelsForContactCustomFields?.contactCustomField7Label}';
        customContact8.text = customInfo
                    ?.labelsForContactCustomFields?.contactCustomField8Label ==
                null
            ? ''
            : '${customInfo?.labelsForContactCustomFields?.contactCustomField8Label}';
        customContact9.text = customInfo
                    ?.labelsForContactCustomFields?.contactCustomField9Label ==
                null
            ? ''
            : '${customInfo?.labelsForContactCustomFields?.contactCustomField9Label}';
        customContact10.text = customInfo
                    ?.labelsForContactCustomFields?.contactCustomField10Label ==
                null
            ? ''
            : '${customInfo?.labelsForContactCustomFields?.contactCustomField10Label}';

        customProduct1.text = customInfo
                    ?.labelsForProductCustomFields!.productCustomField1Label ==
                null
            ? ''
            : '${customInfo?.labelsForProductCustomFields!.productCustomField1Label}';
        customProduct2.text = customInfo
                    ?.labelsForProductCustomFields!.productCustomField2Label ==
                null
            ? ''
            : '${customInfo?.labelsForProductCustomFields!.productCustomField2Label}';
        customProduct3.text = customInfo
                    ?.labelsForProductCustomFields!.productCustomField3Label ==
                null
            ? ''
            : '${customInfo?.labelsForProductCustomFields!.productCustomField3Label}';
        customProduct4.text = customInfo
                    ?.labelsForProductCustomFields!.productCustomField4Label ==
                null
            ? ''
            : '${customInfo?.labelsForProductCustomFields!.productCustomField4Label}';

        customLocation1.text = customInfo?.labelsForLocationCustomFields!
                    .locationCustomField1Label ==
                null
            ? ''
            : '${customInfo?.labelsForLocationCustomFields!.locationCustomField1Label}';
        customLocation2.text = customInfo?.labelsForLocationCustomFields!
                    .locationCustomField2Label ==
                null
            ? ''
            : '${customInfo?.labelsForLocationCustomFields!.locationCustomField2Label}';
        customLocation3.text = customInfo?.labelsForLocationCustomFields!
                    .locationCustomField3Label ==
                null
            ? ''
            : '${customInfo?.labelsForLocationCustomFields!.locationCustomField3Label}';
        customLocation4.text = customInfo?.labelsForLocationCustomFields!
                    .locationCustomField4Label ==
                null
            ? ''
            : '${customInfo?.labelsForLocationCustomFields!.locationCustomField4Label}';

        customUser1.text = customInfo
                    ?.labelsForUserCustomFields!.userCustomField1Label ==
                null
            ? ''
            : '${customInfo?.labelsForUserCustomFields!.userCustomField1Label}';
        customUser2.text = customInfo
                    ?.labelsForUserCustomFields!.userCustomField2Label ==
                null
            ? ''
            : '${customInfo?.labelsForUserCustomFields!.userCustomField2Label}';
        customUser3.text = customInfo
                    ?.labelsForUserCustomFields!.userCustomField3Label ==
                null
            ? ''
            : '${customInfo?.labelsForUserCustomFields!.userCustomField3Label}';
        customUser4.text = customInfo
                    ?.labelsForUserCustomFields!.userCustomField4Label ==
                null
            ? ''
            : '${customInfo?.labelsForUserCustomFields!.userCustomField4Label}';

        customPurchase1.text = customInfo?.labelsForPurchaseCustomFields!
                    .purchaseCustomField1Label ==
                null
            ? ''
            : '${customInfo?.labelsForPurchaseCustomFields!.purchaseCustomField1Label}';
        customPurchase2.text = customInfo?.labelsForPurchaseCustomFields!
                    .purchaseCustomField2Label ==
                null
            ? ''
            : '${customInfo?.labelsForPurchaseCustomFields!.purchaseCustomField2Label}';
        customPurchase3.text = customInfo?.labelsForPurchaseCustomFields!
                    .purchaseCustomField3Label ==
                null
            ? ''
            : '${customInfo?.labelsForPurchaseCustomFields!.purchaseCustomField3Label}';
        customPurchase4.text = customInfo?.labelsForPurchaseCustomFields!
                    .purchaseCustomField4Label ==
                null
            ? ''
            : '${customInfo?.labelsForPurchaseCustomFields!.purchaseCustomField4Label}';
        customPurchaseShipping1.text = customInfo
                    ?.labelsForPurchaseShippingCustomFields!
                    .purchaseShippingCustomField1Label ==
                null
            ? ''
            : '${customInfo?.labelsForPurchaseShippingCustomFields!.purchaseShippingCustomField1Label}';
        customPurchaseShipping2.text = customInfo
                    ?.labelsForPurchaseShippingCustomFields!
                    .purchaseShippingCustomField2Label ==
                null
            ? ''
            : '${customInfo?.labelsForPurchaseShippingCustomFields!.purchaseShippingCustomField2Label}';
        customPurchaseShipping3.text = customInfo
                    ?.labelsForPurchaseShippingCustomFields!
                    .purchaseShippingCustomField3Label ==
                null
            ? ''
            : '${customInfo?.labelsForPurchaseShippingCustomFields!.purchaseShippingCustomField3Label}';
        customPurchaseShipping4.text = customInfo
                    ?.labelsForPurchaseShippingCustomFields!
                    .purchaseShippingCustomField4Label ==
                null
            ? ''
            : '${customInfo?.labelsForPurchaseShippingCustomFields!.purchaseShippingCustomField4Label}';
        customPurchaseShipping5.text = customInfo
                    ?.labelsForPurchaseShippingCustomFields!
                    .purchaseShippingCustomField5Label ==
                null
            ? ''
            : '${customInfo?.labelsForPurchaseShippingCustomFields!.purchaseShippingCustomField5Label}';
        customSell1.text = customInfo
                    ?.labelsForSellCustomFields!.sellCustomField1Label ==
                null
            ? ''
            : '${customInfo?.labelsForSellCustomFields!.sellCustomField1Label}';
        customSell2.text = customInfo
                    ?.labelsForSellCustomFields!.sellCustomField2Label ==
                null
            ? ''
            : '${customInfo?.labelsForSellCustomFields!.sellCustomField2Label}';
        customSell3.text = customInfo
                    ?.labelsForSellCustomFields!.sellCustomField3Label ==
                null
            ? ''
            : '${customInfo?.labelsForSellCustomFields!.sellCustomField3Label}';
        customSell4.text = customInfo
                    ?.labelsForSellCustomFields!.sellCustomField4Label ==
                null
            ? ''
            : '${customInfo?.labelsForSellCustomFields!.sellCustomField4Label}';
        customSaleShipping1.text = customInfo
                    ?.labelsForSaleShippingCustomFields!
                    .shippingCustomField1Label ==
                null
            ? ''
            : '${customInfo?.labelsForSaleShippingCustomFields!.shippingCustomField1Label}';
        customSaleShipping2.text = customInfo
                    ?.labelsForSaleShippingCustomFields!
                    .shippingCustomField2Label ==
                null
            ? ''
            : '${customInfo?.labelsForSaleShippingCustomFields!.shippingCustomField2Label}';
        customSaleShipping3.text = customInfo
                    ?.labelsForSaleShippingCustomFields!
                    .shippingCustomField3Label ==
                null
            ? ''
            : '${customInfo?.labelsForSaleShippingCustomFields!.shippingCustomField3Label}';
        customSaleShipping4.text = customInfo
                    ?.labelsForSaleShippingCustomFields!
                    .shippingCustomField4Label ==
                null
            ? ''
            : '${customInfo?.labelsForSaleShippingCustomFields!.shippingCustomField4Label}';
        customSaleShipping5.text = customInfo
                    ?.labelsForSaleShippingCustomFields!
                    .shippingCustomField5Label ==
                null
            ? ''
            : '${customInfo?.labelsForSaleShippingCustomFields!.shippingCustomField5Label}';
        customService1.text = customInfo?.labelsForTypesOfServiceCustomFields!
                    .typesOfServiceCustomField1Label ==
                null
            ? ''
            : '${customInfo?.labelsForTypesOfServiceCustomFields!.typesOfServiceCustomField1Label}';
        customService2.text = customInfo?.labelsForTypesOfServiceCustomFields!
                    .typesOfServiceCustomField2Label ==
                null
            ? ''
            : '${customInfo?.labelsForTypesOfServiceCustomFields!.typesOfServiceCustomField2Label}';
        customService3.text = customInfo?.labelsForTypesOfServiceCustomFields!
                    .typesOfServiceCustomField3Label ==
                null
            ? ''
            : '${customInfo?.labelsForTypesOfServiceCustomFields!.typesOfServiceCustomField3Label}';
        customService4.text = customInfo?.labelsForTypesOfServiceCustomFields!
                    .typesOfServiceCustomField4Label ==
                null
            ? ''
            : '${customInfo?.labelsForTypesOfServiceCustomFields!.typesOfServiceCustomField4Label}';
        customService5.text = customInfo?.labelsForTypesOfServiceCustomFields!
                    .typesOfServiceCustomField5Label ==
                null
            ? ''
            : '${customInfo?.labelsForTypesOfServiceCustomFields!.typesOfServiceCustomField5Label}';

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //labels_for_custom_payments
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('labels_for_custom_payments'.tr),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customPayment1,
                    onChanged: (value) => customInfo
                        ?.labelsForCustomPayments!.customPayment1Label = value,
                    hintText: 'custom_payment_1_label'.tr,
                    title: 'custom_payment_1_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customPayment2,
                    onChanged: (value) => customInfo
                        ?.labelsForCustomPayments!.customPayment2Label = value,
                    hintText: 'custom_payment_2_label'.tr,
                    title: 'custom_payment_2_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customPayment3,
                    onChanged: (value) => customInfo
                        ?.labelsForCustomPayments!.customPayment3Label = value,
                    hintText: 'custom_payment_3_label'.tr,
                    title: 'custom_payment_3_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customPayment4,
                    onChanged: (value) => customInfo
                        ?.labelsForCustomPayments!.customPayment4Label = value,
                    hintText: 'custom_payment_4_label'.tr,
                    title: 'custom_payment_4_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customPayment5,
                    onChanged: (value) => customInfo
                        ?.labelsForCustomPayments!.customPayment5Label = value,
                    hintText: 'custom_payment_5_label'.tr,
                    title: 'custom_payment_5_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customPayment6,
                    onChanged: (value) => customInfo
                        ?.labelsForCustomPayments!.customPayment6Label = value,
                    hintText: 'custom_payment_6_label'.tr,
                    title: 'custom_payment_6_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customPayment7,
                    onChanged: (value) => customInfo
                        ?.labelsForCustomPayments!.customPayment7Label = value,
                    hintText: 'custom_payment_7_label'.tr,
                    title: 'custom_payment_7_label'.tr,
                    // hintText: '0.00',
                  ),
                ],
              ),
              const Divider(),
              // labels_for_contact_custom_fields
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('labels_for_contact_custom_fields'.tr),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customContact1,
                    onChanged: (value) => customInfo
                        ?.labelsForContactCustomFields!
                        .contactCustomField1Label = value,
                    hintText: 'contact_custom_field_1_label'.tr,
                    title: 'contact_custom_field_1_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customContact2,
                    onChanged: (value) => customInfo
                        ?.labelsForContactCustomFields!
                        .contactCustomField2Label = value,
                    hintText: 'contact_custom_field_2_label'.tr,
                    title: 'contact_custom_field_2_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customContact3,
                    onChanged: (value) => customInfo
                        ?.labelsForContactCustomFields!
                        .contactCustomField3Label = value,
                    hintText: 'contact_custom_field_3_label'.tr,
                    title: 'contact_custom_field_3_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customContact4,
                    onChanged: (value) => customInfo
                        ?.labelsForContactCustomFields!
                        .contactCustomField4Label = value,
                    hintText: 'contact_custom_field_4_label'.tr,
                    title: 'contact_custom_field_4_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customContact5,
                    onChanged: (value) => customInfo
                        ?.labelsForContactCustomFields!
                        .contactCustomField5Label = value,
                    hintText: 'contact_custom_field_5_label'.tr,
                    title: 'contact_custom_field_5_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customContact6,
                    onChanged: (value) => customInfo
                        ?.labelsForContactCustomFields!
                        .contactCustomField6Label = value,
                    hintText: 'contact_custom_field_6_label'.tr,
                    title: 'contact_custom_field_6_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customContact7,
                    onChanged: (value) => customInfo
                        ?.labelsForContactCustomFields!
                        .contactCustomField7Label = value,
                    hintText: 'contact_custom_field_7_label'.tr,
                    title: 'contact_custom_field_7_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customContact8,
                    onChanged: (value) => customInfo
                        ?.labelsForContactCustomFields!
                        .contactCustomField8Label = value,
                    hintText: 'contact_custom_field_8_label'.tr,
                    title: 'contact_custom_field_8_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customContact9,
                    onChanged: (value) => customInfo
                        ?.labelsForContactCustomFields!
                        .contactCustomField9Label = value,
                    hintText: 'contact_custom_field_9_label'.tr,
                    title: 'contact_custom_field_9_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customContact10,
                    onChanged: (value) => customInfo
                        ?.labelsForContactCustomFields!
                        .contactCustomField10Label = value,
                    hintText: 'contact_custom_field_10_label'.tr,
                    title: 'contact_custom_field_10_label'.tr,
                    // hintText: '0.00',
                  ),
                ],
              ),
              const Divider(),
              // labels_for_product_custom_fields
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('labels_for_product_custom_fields'.tr),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customProduct1,
                    onChanged: (value) => customInfo
                        ?.labelsForProductCustomFields!
                        .productCustomField1Label = value,
                    hintText: 'product_custom_field_1_label'.tr,
                    title: 'product_custom_field_1_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customProduct2,
                    onChanged: (value) => customInfo
                        ?.labelsForProductCustomFields!
                        .productCustomField2Label = value,
                    hintText: 'product_custom_field_2_label'.tr,
                    title: 'product_custom_field_2_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customProduct3,
                    onChanged: (value) => customInfo
                        ?.labelsForProductCustomFields!
                        .productCustomField3Label = value,
                    hintText: 'product_custom_field_3_label'.tr,
                    title: 'product_custom_field_3_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customProduct4,
                    onChanged: (value) => customInfo
                        ?.labelsForProductCustomFields!
                        .productCustomField4Label = value,
                    hintText: 'product_custom_field_4_label'.tr,
                    title: 'product_custom_field_4_label'.tr,
                    // hintText: '0.00',
                  ),
                ],
              ),
              const Divider(),
              // labels_for_location_custom_fields
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('labels_for_location_custom_fields'.tr),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customLocation1,
                    onChanged: (value) => customInfo
                        ?.labelsForLocationCustomFields!
                        .locationCustomField1Label = value,
                    hintText: 'location_custom_field_1_label'.tr,
                    title: 'location_custom_field_1_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customLocation2,
                    onChanged: (value) => customInfo
                        ?.labelsForLocationCustomFields!
                        .locationCustomField2Label = value,
                    hintText: 'location_custom_field_2_label'.tr,
                    title: 'location_custom_field_2_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customLocation3,
                    onChanged: (value) => customInfo
                        ?.labelsForLocationCustomFields!
                        .locationCustomField3Label = value,
                    hintText: 'location_custom_field_3_label'.tr,
                    title: 'location_custom_field_3_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customLocation4,
                    onChanged: (value) => customInfo
                        ?.labelsForLocationCustomFields!
                        .locationCustomField4Label = value,
                    hintText: 'location_custom_field_4_label'.tr,
                    title: 'location_custom_field_4_label'.tr,
                    // hintText: '0.00',
                  ),
                ],
              ),
              const Divider(),
              // labels_for_user_custom_fields
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('labels_for_user_custom_fields'.tr),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customUser1,
                    onChanged: (value) => customInfo?.labelsForUserCustomFields!
                        .userCustomField1Label = value,
                    hintText: 'user_custom_field_1_label'.tr,
                    title: 'user_custom_field_1_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customUser2,
                    onChanged: (value) => customInfo?.labelsForUserCustomFields!
                        .userCustomField2Label = value,
                    hintText: 'user_custom_field_2_label'.tr,
                    title: 'user_custom_field_2_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customUser3,
                    onChanged: (value) => customInfo?.labelsForUserCustomFields!
                        .userCustomField3Label = value,
                    hintText: 'user_custom_field_3_label'.tr,
                    title: 'user_custom_field_3_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customUser4,
                    onChanged: (value) => customInfo?.labelsForUserCustomFields!
                        .userCustomField4Label = value,
                    hintText: 'user_custom_field_4_label'.tr,
                    title: 'user_custom_field_4_label'.tr,
                    // hintText: '0.00',
                  ),
                ],
              ),
              const Divider(),
              // labels_for_purchase_custom_fields
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('labels_for_purchase_custom_fields'.tr),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          icon: Icons.abc_outlined,
                          controller: customPurchase1,
                          onChanged: (value) => customInfo
                              ?.labelsForPurchaseCustomFields!
                              .purchaseCustomField1Label = value,
                          hintText: 'purchase_custom_field_1_label'.tr,
                          title: 'purchase_custom_field_1_label'.tr,
                          // hintText: '0.00',
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo?.labelsForPurchaseCustomFields!
                                .isCustomField1Required,
                            title: Text(
                              "is_custom_field_1_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForPurchaseCustomFields!
                                    .isCustomField1Required = value!;
                              });
                            }),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          icon: Icons.abc_outlined,
                          controller: customPurchase2,
                          onChanged: (value) => customInfo
                              ?.labelsForPurchaseCustomFields!
                              .purchaseCustomField2Label = value,
                          hintText: 'purchase_custom_field_2_label'.tr,
                          title: 'purchase_custom_field_2_label'.tr,
                          // hintText: '0.00',
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo?.labelsForPurchaseCustomFields!
                                .isCustomField2Required,
                            title: Text(
                              "is_custom_field_2_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForPurchaseCustomFields!
                                    .isCustomField2Required = value!;
                              });
                            }),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          icon: Icons.abc_outlined,
                          controller: customPurchase3,
                          onChanged: (value) => customInfo
                              ?.labelsForPurchaseCustomFields!
                              .purchaseCustomField3Label = value,
                          hintText: 'purchase_custom_field_3_label'.tr,
                          title: 'purchase_custom_field_3_label'.tr,
                          // hintText: '0.00',
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo?.labelsForPurchaseCustomFields!
                                .isCustomField3Required,
                            title: Text(
                              "is_custom_field_3_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForPurchaseCustomFields!
                                    .isCustomField3Required = value!;
                              });
                            }),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          icon: Icons.abc_outlined,
                          controller: customPurchase4,
                          onChanged: (value) => customInfo
                              ?.labelsForPurchaseCustomFields!
                              .purchaseCustomField4Label = value,
                          hintText: 'purchase_custom_field_4_label'.tr,
                          title: 'purchase_custom_field_4_label'.tr,
                          // hintText: '0.00',
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo?.labelsForPurchaseCustomFields!
                                .isCustomField4Required,
                            title: Text(
                              "is_custom_field_4_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForPurchaseCustomFields!
                                    .isCustomField4Required = value!;
                              });
                            }),
                      )
                    ],
                  ),
                ],
              ),
              const Divider(),
              // labels_for_purchase_shipping_custom_fields
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('labels_for_purchase_shipping_custom_fields'.tr),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          icon: Icons.abc_outlined,
                          controller: customPurchaseShipping1,
                          onChanged: (value) => customInfo
                              ?.labelsForPurchaseShippingCustomFields!
                              .purchaseShippingCustomField1Label = value,
                          hintText: 'purchase_custom_field_1_label'.tr,
                          title: 'purchase_custom_field_1_label'.tr,
                          // hintText: '0.00',
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForPurchaseShippingCustomFields!
                                .isCustomField1Required,
                            title: Text(
                              "is_custom_field_1_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo
                                    ?.labelsForPurchaseShippingCustomFields!
                                    .isCustomField1Required = value!;
                              });
                            }),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          icon: Icons.abc_outlined,
                          controller: customPurchaseShipping2,
                          onChanged: (value) => customInfo
                              ?.labelsForPurchaseShippingCustomFields!
                              .purchaseShippingCustomField2Label = value,
                          hintText: 'purchase_custom_field_2_label'.tr,
                          title: 'purchase_custom_field_2_label'.tr,
                          // hintText: '0.00',
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForPurchaseShippingCustomFields!
                                .isCustomField2Required,
                            title: Text(
                              "is_custom_field_2_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo
                                    ?.labelsForPurchaseShippingCustomFields!
                                    .isCustomField2Required = value!;
                              });
                            }),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          icon: Icons.abc_outlined,
                          controller: customPurchaseShipping3,
                          onChanged: (value) => customInfo
                              ?.labelsForPurchaseShippingCustomFields!
                              .purchaseShippingCustomField3Label = value,
                          hintText: 'purchase_custom_field_3_label'.tr,
                          title: 'purchase_custom_field_3_label'.tr,
                          // hintText: '0.00',
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForPurchaseShippingCustomFields!
                                .isCustomField3Required,
                            title: Text(
                              "is_custom_field_3_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo
                                    ?.labelsForPurchaseShippingCustomFields!
                                    .isCustomField3Required = value!;
                              });
                            }),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          icon: Icons.abc_outlined,
                          controller: customPurchaseShipping4,
                          onChanged: (value) => customInfo
                              ?.labelsForPurchaseShippingCustomFields!
                              .purchaseShippingCustomField4Label = value,
                          hintText: 'purchase_custom_field_4_label'.tr,
                          title: 'purchase_custom_field_4_label'.tr,
                          // hintText: '0.00',
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForPurchaseShippingCustomFields!
                                .isCustomField4Required,
                            title: Text(
                              "is_custom_field_4_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo
                                    ?.labelsForPurchaseShippingCustomFields!
                                    .isCustomField4Required = value!;
                              });
                            }),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          icon: Icons.abc_outlined,
                          controller: customPurchaseShipping5,
                          onChanged: (value) => customInfo
                              ?.labelsForPurchaseShippingCustomFields!
                              .purchaseShippingCustomField5Label = value,
                          hintText: 'types_of_service_custom_field_5_label'.tr,
                          title: 'types_of_service_custom_field_5_label'.tr,
                          // hintText: '0.00',
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForPurchaseShippingCustomFields!
                                .isCustomField5Required,
                            title: Text(
                              "is_custom_field_5_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo
                                    ?.labelsForPurchaseShippingCustomFields!
                                    .isCustomField5Required = value!;
                              });
                            }),
                      )
                    ],
                  ),
                ],
              ),
              const Divider(),
              // labels_for_sell_custom_fields
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('labels_for_sell_custom_fields'.tr),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          icon: Icons.abc_outlined,
                          controller: customSell1,
                          onChanged: (value) => customInfo
                              ?.labelsForSellCustomFields!
                              .sellCustomField1Label = value,
                          hintText: 'sell_custom_field_1_label'.tr,
                          title: 'sell_custom_field_1_label'.tr,
                          // hintText: '0.00',
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo?.labelsForSellCustomFields!
                                .isCustomField1Required,
                            title: Text(
                              "is_custom_field_1_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForSellCustomFields!
                                    .isCustomField1Required = value!;
                              });
                            }),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          icon: Icons.abc_outlined,
                          controller: customSell2,
                          onChanged: (value) => customInfo
                              ?.labelsForSellCustomFields!
                              .sellCustomField2Label = value,
                          hintText: 'sell_custom_field_2_label'.tr,
                          title: 'sell_custom_field_2_label'.tr,
                          // hintText: '0.00',
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo?.labelsForSellCustomFields!
                                .isCustomField2Required,
                            title: Text(
                              "is_custom_field_2_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForSellCustomFields!
                                    .isCustomField2Required = value!;
                              });
                            }),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          icon: Icons.abc_outlined,
                          controller: customSell3,
                          onChanged: (value) => customInfo
                              ?.labelsForSellCustomFields!
                              .sellCustomField3Label = value,
                          hintText: 'sell_custom_field_3_label'.tr,
                          title: 'sell_custom_field_3_label'.tr,
                          // hintText: '0.00',
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo?.labelsForSellCustomFields!
                                .isCustomField3Required,
                            title: Text(
                              "is_custom_field_3_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForSellCustomFields!
                                    .isCustomField3Required = value!;
                              });
                            }),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          icon: Icons.abc_outlined,
                          controller: customSell4,
                          onChanged: (value) => customInfo
                              ?.labelsForSellCustomFields!
                              .sellCustomField4Label = value,
                          hintText: 'sell_custom_field_4_label'.tr,
                          title: 'sell_custom_field_4_label'.tr,
                          // hintText: '0.00',
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo?.labelsForSellCustomFields!
                                .isCustomField4Required,
                            title: Text(
                              "is_custom_field_4_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForSellCustomFields!
                                    .isCustomField4Required = value!;
                              });
                            }),
                      )
                    ],
                  ),
                ],
              ),
              const Divider(),
              // labels_for_sale_shipping_custom_fields
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('labels_for_sale_shipping_custom_fields'.tr),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customSaleShipping1,
                    onChanged: (value) => customInfo
                        ?.labelsForSaleShippingCustomFields!
                        .shippingCustomField1Label = value,
                    hintText: 'shipping_custom_field_1_label'.tr,
                    title: 'shipping_custom_field_1_label'.tr,
                    // hintText: '0.00',
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForSaleShippingCustomFields!
                                .isCustomField1Required,
                            title: Text(
                              "is_custom_field_1_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForSaleShippingCustomFields!
                                    .isCustomField1Required = value!;
                              });
                            }),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForSaleShippingCustomFields!
                                .isCustomField1ContactDefault,
                            title: Text(
                              "is_custom_field_1_contact_default".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForSaleShippingCustomFields!
                                    .isCustomField1ContactDefault = value!;
                              });
                            }),
                      )
                    ],
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customSaleShipping2,
                    onChanged: (value) => customInfo
                        ?.labelsForSaleShippingCustomFields!
                        .shippingCustomField2Label = value,
                    hintText: 'shipping_custom_field_2_label'.tr,
                    title: 'shipping_custom_field_2_label'.tr,
                    // hintText: '0.00',
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForSaleShippingCustomFields!
                                .isCustomField2Required,
                            title: Text(
                              "is_custom_field_1_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForSaleShippingCustomFields!
                                    .isCustomField2Required = value!;
                              });
                            }),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForSaleShippingCustomFields!
                                .isCustomField2ContactDefault,
                            title: Text(
                              "is_custom_field_1_contact_default".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForSaleShippingCustomFields!
                                    .isCustomField2ContactDefault = value!;
                              });
                            }),
                      )
                    ],
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customSaleShipping3,
                    onChanged: (value) => customInfo
                        ?.labelsForSaleShippingCustomFields!
                        .shippingCustomField3Label = value,
                    hintText: 'shipping_custom_field_3_label'.tr,
                    title: 'shipping_custom_field_3_label'.tr,
                    // hintText: '0.00',
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForSaleShippingCustomFields!
                                .isCustomField3Required,
                            title: Text(
                              "is_custom_field_1_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForSaleShippingCustomFields!
                                    .isCustomField3Required = value!;
                              });
                            }),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForSaleShippingCustomFields!
                                .isCustomField3ContactDefault,
                            title: Text(
                              "is_custom_field_1_contact_default".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForSaleShippingCustomFields!
                                    .isCustomField3ContactDefault = value!;
                              });
                            }),
                      )
                    ],
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customSaleShipping4,
                    onChanged: (value) => customInfo
                        ?.labelsForSaleShippingCustomFields!
                        .shippingCustomField4Label = value,
                    hintText: 'shipping_custom_field_4_label'.tr,
                    title: 'shipping_custom_field_4_label'.tr,
                    // hintText: '0.00',
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForSaleShippingCustomFields!
                                .isCustomField4Required,
                            title: Text(
                              "is_custom_field_1_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForSaleShippingCustomFields!
                                    .isCustomField4Required = value!;
                              });
                            }),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForSaleShippingCustomFields!
                                .isCustomField4ContactDefault,
                            title: Text(
                              "is_custom_field_1_contact_default".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForSaleShippingCustomFields!
                                    .isCustomField4ContactDefault = value!;
                              });
                            }),
                      )
                    ],
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customSaleShipping5,
                    onChanged: (value) => customInfo
                        ?.labelsForSaleShippingCustomFields!
                        .shippingCustomField5Label = value,
                    hintText: 'shipping_custom_field_5_label'.tr,
                    title: 'shipping_custom_field_5_label'.tr,
                    // hintText: '0.00',
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForSaleShippingCustomFields!
                                .isCustomField5Required,
                            title: Text(
                              "is_custom_field_1_required".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForSaleShippingCustomFields!
                                    .isCustomField5Required = value!;
                              });
                            }),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: customInfo
                                ?.labelsForSaleShippingCustomFields!
                                .isCustomField5ContactDefault,
                            title: Text(
                              "is_custom_field_1_contact_default".tr,
                              style: GlobalStyles.titilliumSemiBold(context)
                                  .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL),
                            ),
                            onChanged: (bool? value) {
                              setState(() {
                                customInfo?.labelsForSaleShippingCustomFields!
                                    .isCustomField5ContactDefault = value!;
                              });
                            }),
                      )
                    ],
                  ),
                ],
              ),
              const Divider(),
              // labels_for_types_of_service_custom_fields
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('labels_for_types_of_service_custom_fields'.tr),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customService1,
                    onChanged: (value) => customInfo
                        ?.labelsForTypesOfServiceCustomFields!
                        .typesOfServiceCustomField1Label = value,
                    hintText: 'types_of_service_custom_field_1_label'.tr,
                    title: 'types_of_service_custom_field_1_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customService2,
                    onChanged: (value) => customInfo
                        ?.labelsForTypesOfServiceCustomFields!
                        .typesOfServiceCustomField2Label = value,
                    hintText: 'types_of_service_custom_field_2_label'.tr,
                    title: 'types_of_service_custom_field_2_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customService3,
                    onChanged: (value) => customInfo
                        ?.labelsForTypesOfServiceCustomFields!
                        .typesOfServiceCustomField3Label = value,
                    hintText: 'types_of_service_custom_field_3_label'.tr,
                    title: 'types_of_service_custom_field_3_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customService4,
                    onChanged: (value) => customInfo
                        ?.labelsForTypesOfServiceCustomFields!
                        .typesOfServiceCustomField4Label = value,
                    hintText: 'types_of_service_custom_field_4_label'.tr,
                    title: 'types_of_service_custom_field_4_label'.tr,
                    // hintText: '0.00',
                  ),
                  CustomTextFormField(
                    icon: Icons.abc_outlined,
                    controller: customService5,
                    onChanged: (value) => customInfo
                        ?.labelsForTypesOfServiceCustomFields!
                        .typesOfServiceCustomField5Label = value,
                    hintText: 'types_of_service_custom_field_5_label'.tr,
                    title: 'types_of_service_custom_field_5_label'.tr,
                    // hintText: '0.00',
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  //build Reward
  BlocBuilder<ShopInfoCubit, ShopInfoState> buildReward() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(
      builder: (context, state) {
        final rewardInfo = state.data!.shopInfo!.rewardPointSetting;
        rewardName.text = rewardInfo?.rewardPointName ?? '';
        amountPoint.text = rewardInfo
                    ?.earningPointsSetting?.amountForUnitRewardPoint ==
                null
            ? ''
            : GlobalFormatter.formatNumber(
                source:
                    '${rewardInfo?.earningPointsSetting?.amountForUnitRewardPoint}');
        minOrderEarnReward.text = rewardInfo
                    ?.earningPointsSetting?.minOrderTotalForRewardPoint ==
                null
            ? ''
            : GlobalFormatter.formatNumber(
                source:
                    '${rewardInfo?.earningPointsSetting?.minOrderTotalForRewardPoint}');
        maxPointPerOrder.text = rewardInfo
                    ?.earningPointsSetting?.maxRewardPointPerOrder ==
                null
            ? ''
            : GlobalFormatter.formatNumber(
                source:
                    '${rewardInfo?.earningPointsSetting?.maxRewardPointPerOrder}');
        redeemAmountPerPoint.text = rewardInfo
                    ?.redeemPointsSetting?.redeemAmountPerUnitRewardPoint ==
                null
            ? ''
            : GlobalFormatter.formatNumber(
                source:
                    '${rewardInfo?.redeemPointsSetting?.redeemAmountPerUnitRewardPoint}');
        minOrderTotalPerRedeemPoint.text = rewardInfo
                    ?.redeemPointsSetting?.minOrderTotalForRedeem ==
                null
            ? ''
            : GlobalFormatter.formatNumber(
                source:
                    '${rewardInfo?.redeemPointsSetting?.minOrderTotalForRedeem}');
        minRedeemPoint.text = rewardInfo?.redeemPointsSetting?.minRedeemPoint ==
                null
            ? ''
            : GlobalFormatter.formatNumber(
                source: '${rewardInfo?.redeemPointsSetting?.minRedeemPoint}');
        maxRedeemPointPerOrder.text =
            rewardInfo?.redeemPointsSetting?.maxRedeemPoint == null
                ? ''
                : GlobalFormatter.formatNumber(
                    source:
                        '${rewardInfo?.redeemPointsSetting?.maxRedeemPoint}');
        rewardPointExpiry.text =
            rewardInfo?.redeemPointsSetting?.rpExpiryPeriod == null
                ? ''
                : GlobalFormatter.formatNumber(
                    source:
                        '${rewardInfo?.redeemPointsSetting?.rpExpiryPeriod}');
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckboxListTile(
                  value: rewardInfo?.enableRewardPoint,
                  title: Text(
                    "enable_reward_point".tr,
                    style: GlobalStyles.titilliumSemiBold(context)
                        .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                  ),
                  onChanged: (bool? value) {
                    setState(() {
                      rewardInfo?.enableRewardPoint = value!;
                    });
                  }),
              CustomTextFormField(
                controller: rewardName,
                onChanged: (value) => rewardInfo?.rewardPointName = value,
                icon: Icons.abc_outlined,
                hintText: 'reward_point_name'.tr,
                title: 'reward_point_name'.tr,
                // hintText: '0.00',
              ),
              const Divider(),
              Text('earning_points_setting'.tr),
              CustomTextFormField(
                controller: amountPoint,
                onChanged: (value) => rewardInfo
                    ?.earningPointsSetting!.amountForUnitRewardPoint = value,
                icon: Icons.abc_outlined,
                hintText: 'amount_for_unit_reward_point'.tr,
                title: 'amount_for_unit_reward_point'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: minOrderEarnReward,
                onChanged: (value) => rewardInfo
                    ?.earningPointsSetting!.minOrderTotalForRewardPoint = value,
                icon: Icons.abc_outlined,
                hintText: 'min_order_total_for_reward_point'.tr,
                title: 'min_order_total_for_reward_point'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: maxPointPerOrder,
                onChanged: (value) => rewardInfo
                    ?.earningPointsSetting!.maxRewardPointPerOrder = value,
                icon: Icons.abc_outlined,
                hintText: 'max_reward_point_per_order'.tr,
                title: 'max_reward_point_per_order'.tr,
                // hintText: '0.00',
              ),
              const Divider(),
              Text('redeem_points_setting'.tr),
              CustomTextFormField(
                controller: redeemAmountPerPoint,
                onChanged: (value) => rewardInfo?.redeemPointsSetting!
                    .redeemAmountPerUnitRewardPoint = value,
                icon: Icons.abc_outlined,
                hintText: 'redeem_amount_per_unit_reward_point'.tr,
                title: 'redeem_amount_per_unit_reward_point'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: minOrderTotalPerRedeemPoint,
                onChanged: (value) => rewardInfo
                    ?.redeemPointsSetting!.minOrderTotalForRedeem = value,
                icon: Icons.abc_outlined,
                hintText: 'min_order_total_for_redeem'.tr,
                title: 'min_order_total_for_redeem'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: minRedeemPoint,
                onChanged: (value) =>
                    rewardInfo?.redeemPointsSetting!.minRedeemPoint = value,
                icon: Icons.abc_outlined,
                hintText: 'min_redeem_point'.tr,
                title: 'min_redeem_point'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: maxRedeemPointPerOrder,
                onChanged: (value) =>
                    rewardInfo?.redeemPointsSetting!.maxRedeemPoint = value,
                icon: Icons.abc_outlined,
                hintText: 'max_redeem_point'.tr,
                title: 'max_redeem_point'.tr,
                // hintText: '0.00',
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: rewardPointExpiry,
                      onChanged: (value) => rewardInfo
                          ?.redeemPointsSetting!.rpExpiryPeriod = value,
                      icon: Icons.abc_outlined,
                      hintText: 'rp_expiry_period'.tr,
                      title: 'rp_expiry_period'.tr,
                      // hintText: '0.00',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomDropdown(
                      hint: 'please_select'.tr,
                      info: rewardInfo!.redeemPointsSetting!.rpExpiryType ==
                              'month'
                          ? listExpiryType[0]
                          : listExpiryType[1],
                      footIcon: const Icon(Icons.arrow_drop_down,
                          color: Color(0xff434345)),
                      listItem: listExpiryType,
                      onChanged: (String? T) {
                        rewardInfo.redeemPointsSetting!.rpExpiryType = T!;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

// buildSMSSettings
  BlocBuilder<ShopInfoCubit, ShopInfoState> buildSMSSettings() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(
      builder: (context, state) {
        final smsInfo = state.data!.shopInfo?.smsSetting;
        timeSms.text = smsInfo?.smsStartLesson ?? '';
        smsURL.text = smsInfo?.smsSettingsUrl ?? '';
        nexmoSecret.text = smsInfo?.nexmoSecret ?? '';
        nexmoKey.text = smsInfo?.nexmoKey ?? '';
        nexmoFrom.text = smsInfo?.nexmoFrom ?? '';
        twilioSID.text = smsInfo?.twilioSid ?? '';
        twilioToken.text = smsInfo?.twilioToken ?? '';
        twilioFrom.text = smsInfo?.twilioFrom ?? '';
        speedSMSToken.text = smsInfo?.speedToken ?? '';
        speedFrom.text = smsInfo?.speedFrom ?? '';
        sendParameter.text = smsInfo?.sendToParamName == null
            ? ''
            : '${smsInfo?.sendToParamName}';
        msgParameter.text =
            smsInfo?.msgParamName == null ? '' : '${smsInfo?.msgParamName}';
        header1Key.text = smsInfo?.smsSettingsHeaderKey1 == null
            ? ''
            : '${smsInfo?.smsSettingsHeaderKey1}';
        header1Val.text = smsInfo?.smsSettingsHeaderVal1 == null
            ? ''
            : '${smsInfo?.smsSettingsHeaderVal1}';
        header2Key.text = smsInfo?.smsSettingsHeaderKey2 == null
            ? ''
            : '${smsInfo?.smsSettingsHeaderKey2}';
        header2Val.text = smsInfo?.smsSettingsHeaderVal2 == null
            ? ''
            : '${smsInfo?.smsSettingsHeaderVal2}';
        header3Key.text = smsInfo?.smsSettingsHeaderKey3 == null
            ? ''
            : '${smsInfo?.smsSettingsHeaderKey3}';
        header3Val.text = smsInfo?.smsSettingsHeaderVal3 == null
            ? ''
            : '${smsInfo?.smsSettingsHeaderVal3}';
        parameter1Key.text = smsInfo?.smsSettingsParamKey1 == null
            ? ''
            : '${smsInfo?.smsSettingsParamKey1}';
        parameter1Val.text = smsInfo?.smsSettingsParamVal1 == null
            ? ''
            : '${smsInfo?.smsSettingsParamVal1}';
        parameter2Key.text = smsInfo?.smsSettingsParamKey2 == null
            ? ''
            : '${smsInfo?.smsSettingsParamKey2}';
        parameter2Val.text = smsInfo?.smsSettingsParamVal2 == null
            ? ''
            : '${smsInfo?.smsSettingsParamVal2}';
        parameter3Key.text = smsInfo?.smsSettingsParamKey3 == null
            ? ''
            : '${smsInfo?.smsSettingsParamKey3}';
        parameter3Val.text = smsInfo?.smsSettingsParamVal3 == null
            ? ''
            : '${smsInfo?.smsSettingsParamVal3}';
        parameter4Key.text = smsInfo?.smsSettingsParamKey4 == null
            ? ''
            : '${smsInfo?.smsSettingsParamKey4}';
        parameter4Val.text = smsInfo?.smsSettingsParamVal4 == null
            ? ''
            : '${smsInfo?.smsSettingsParamVal4}';
        parameter5Key.text = smsInfo?.smsSettingsParamKey5 == null
            ? ''
            : '${smsInfo?.smsSettingsParamKey5}';
        parameter5Val.text = smsInfo?.smsSettingsParamVal5 == null
            ? ''
            : '${smsInfo?.smsSettingsParamVal5}';
        parameter6Key.text = smsInfo?.smsSettingsParamKey6 == null
            ? ''
            : '${smsInfo?.smsSettingsParamKey6}';
        parameter6Val.text = smsInfo?.smsSettingsParamVal6 == null
            ? ''
            : '${smsInfo?.smsSettingsParamVal6}';
        parameter7Key.text = smsInfo?.smsSettingsParamKey7 == null
            ? ''
            : '${smsInfo?.smsSettingsParamKey7}';
        parameter7Val.text = smsInfo?.smsSettingsParamVal7 == null
            ? ''
            : '${smsInfo?.smsSettingsParamVal7}';
        parameter8Key.text = smsInfo?.smsSettingsParamKey8 == null
            ? ''
            : '${smsInfo?.smsSettingsParamKey8}';
        parameter8Val.text = smsInfo?.smsSettingsParamVal8 == null
            ? ''
            : '${smsInfo?.smsSettingsParamVal8}';
        parameter9Key.text = smsInfo?.smsSettingsParamKey9 == null
            ? ''
            : '${smsInfo?.smsSettingsParamKey9}';
        parameter9Val.text = smsInfo?.smsSettingsParamVal9 == null
            ? ''
            : '${smsInfo?.smsSettingsParamVal9}';
        parameter10Key.text = smsInfo?.smsSettingsParamKey10 == null
            ? ''
            : '${smsInfo?.smsSettingsParamKey10}';
        parameter10Val.text = smsInfo?.smsSettingsParamVal10 == null
            ? ''
            : '${smsInfo?.smsSettingsParamVal10}';

        // switch (smsInfo?.smsService) {
        //   case 'nexmo':
        //     SMSS = "nexmo";
        //     break;
        //   case "twilio":
        //     SMSS = "twilio";
        //     break;
        //   case "speed":
        //     SMSS = "speedSMS";
        //     break;
        //   case "other":
        //     SMSS = "other";
        //     break;
        // }
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              CustomDropDown(
                labelText: "sms_service".tr,
                value: state.data!.smsService,
                items: listSMSS,
                onChanged: (dynamic value) =>
                    context.read<ShopInfoCubit>().getSmsService(value),
              ),
              // CustomDropdown(
              //   title: "sms_service".tr,
              //   hint: 'Please Selected',
              //   info: SMSS!,
              //   headIcon: const Icon(
              //     Icons.mail_outline,
              //     color: Color(0xff434345),
              //   ),
              //   footIcon:
              //       const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
              //   listItem: listSMSS,
              //   onChanged: (String? T) {
              //     SMSS = T!;
              //     switch (SMSS) {
              //       case 'nexmo':
              //         smsInfo?.smsService = "nexmo";
              //         break;
              //       case "twilio":
              //         smsInfo?.smsService = "twilio";
              //         break;
              //       case "speedSMS":
              //         smsInfo?.smsService = "speed";
              //         break;
              //       case "other":
              //         smsInfo?.smsService = "other";
              //         break;
              //     }
              //   },
              // ),
              CustomTextFormField(
                controller: timeSms,
                icon: Icons.abc_outlined,
                onChanged: (value) => smsInfo?.smsStartLesson = value,
                hintText: 'enter_minute'.tr,
                title: 'sms_start_lesson'.tr,
                // hintText: '0.00',
              ),
              if (state.data!.smsService == 'nexmo')
                Column(
                  children: [
                    CustomTextFormField(
                      controller: nexmoKey,
                      onChanged: (value) => smsInfo?.nexmoKey = value,
                      icon: Icons.abc_outlined,
                      hintText: 'nexmo_key'.tr,
                      title: 'nexmo_key'.tr,
                      // hintText: '0.00',
                    ),
                    CustomTextFormField(
                      controller: nexmoSecret,
                      onChanged: (value) => smsInfo?.nexmoSecret = value,
                      icon: Icons.abc_outlined,
                      hintText: 'nexmo_secret'.tr,
                      title: 'nexmo_secret'.tr,
                      // hintText: '0.00',
                    ),
                    CustomTextFormField(
                      controller: nexmoFrom,
                      onChanged: (value) => smsInfo?.nexmoFrom = value,
                      icon: Icons.abc_outlined,
                      hintText: 'nexmo_from'.tr,
                      title: 'nexmo_from'.tr,
                      // hintText: '0.00',
                    ),
                  ],
                ),
              if (state.data!.smsService == 'twilio')
                Column(
                  children: [
                    CustomTextFormField(
                      controller: twilioSID,
                      onChanged: (value) => smsInfo?.twilioSid = value,
                      icon: Icons.abc_outlined,
                      hintText: 'twilio_sid'.tr,
                      title: 'twilio_sid'.tr,
                      // hintText: '0.00',
                    ),
                    CustomTextFormField(
                      controller: twilioToken,
                      onChanged: (value) => smsInfo?.twilioToken = value,
                      icon: Icons.abc_outlined,
                      hintText: 'twilio_token'.tr,
                      title: 'twilio_token'.tr,
                      // hintText: '0.00',
                    ),
                    CustomTextFormField(
                      controller: twilioFrom,
                      onChanged: (value) => smsInfo?.twilioFrom = value,
                      icon: Icons.abc_outlined,
                      hintText: 'twilio_from'.tr,
                      title: 'twilio_from'.tr,
                      // hintText: '0.00',
                    ),
                  ],
                ),
              if (state.data!.smsService == 'speed')
                Column(
                  children: [
                    CustomTextFormField(
                      controller: speedSMSToken,
                      onChanged: (value) => smsInfo?.speedToken = value,
                      icon: Icons.abc_outlined,
                      hintText: 'speed_token'.tr,
                      title: 'speed_token'.tr,
                      // hintText: '0.00',
                    ),
                    CustomTextFormField(
                      controller: speedFrom,
                      onChanged: (value) => smsInfo?.speedFrom = value,
                      icon: Icons.abc_outlined,
                      hintText: 'speed_from'.tr,
                      title: 'speed_from'.tr,
                      // hintText: '0.00',
                    ),
                  ],
                ),
              if (state.data!.smsService == 'other')
                Column(
                  children: [
                    CustomTextFormField(
                      controller: smsURL,
                      onChanged: (value) => smsInfo?.smsSettingsUrl = value,
                      icon: Icons.abc_outlined,
                      hintText: 'sms_settings_url'.tr,
                      title: 'sms_settings_url'.tr,
                      // hintText: '0.00',
                    ),
                    CustomTextFormField(
                      controller: sendParameter,
                      onChanged: (value) => smsInfo?.sendToParamName = value,
                      icon: Icons.abc_outlined,
                      hintText: 'send_to_param_name'.tr,
                      title: 'send_to_param_name'.tr,
                      // hintText: '0.00',
                    ),
                    CustomTextFormField(
                      controller: msgParameter,
                      onChanged: (value) => smsInfo?.msgParamName = value,
                      icon: Icons.abc_outlined,
                      hintText: 'msg_param_name'.tr,
                      title: 'msg_param_name'.tr,
                      // hintText: '0.00',
                    ),
                    CustomDropdown(
                      title: "request_method".tr,
                      hint: 'please_select'.tr,
                      info: smsInfo?.requestMethod == 'get'
                          ? listMethod[0]
                          : listMethod[1],
                      headIcon: const Icon(
                        Icons.mail_outline,
                        color: Color(0xff434345),
                      ),
                      footIcon: const Icon(Icons.arrow_drop_down,
                          color: Color(0xff434345)),
                      listItem: listMethod,
                      onChanged: (String? T) {
                        smsInfo?.requestMethod = T!;
                      },
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            onChanged: (value) =>
                                smsInfo?.smsSettingsHeaderKey1 = value,
                            controller: header1Key,
                            hintText: 'sms_settings_header_key1'.tr,
                            title: 'sms_settings_header_key1'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            onChanged: (value) =>
                                smsInfo?.smsSettingsHeaderVal1 = value,
                            controller: header1Val,
                            hintText: 'sms_settings_header_val1'.tr,
                            title: 'sms_settings_header_val1'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: header2Key,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsHeaderKey2 = value,
                            hintText: 'sms_settings_header_key2'.tr,
                            title: 'sms_settings_header_key2'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: header2Val,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsHeaderVal2 = value,
                            hintText: 'sms_settings_header_val2'.tr,
                            title: 'sms_settings_header_val2'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: header3Key,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsHeaderKey3 = value,
                            hintText: 'sms_settings_header_key3'.tr,
                            title: 'sms_settings_header_key3'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: header3Val,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsHeaderVal3 = value,
                            hintText: 'sms_settings_header_val3'.tr,
                            title: 'sms_settings_header_val3'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter1Key,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamKey1 = value,
                            hintText: 'sms_settings_param_key1'.tr,
                            title: 'sms_settings_param_key1'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter1Val,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamVal1 = value,
                            hintText: 'sms_settings_param_val1'.tr,
                            title: 'sms_settings_param_val1'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter2Key,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamKey2 = value,
                            hintText: 'sms_settings_param_key2'.tr,
                            title: 'sms_settings_param_key2'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter2Val,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamVal2 = value,
                            hintText: 'sms_settings_param_val2'.tr,
                            title: 'sms_settings_param_val2'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter3Key,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamKey3 = value,
                            hintText: 'sms_settings_param_key3'.tr,
                            title: 'sms_settings_param_key3'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter3Val,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamVal3 = value,
                            hintText: 'sms_settings_param_val3'.tr,
                            title: 'sms_settings_param_val3'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter4Key,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamKey4 = value,
                            hintText: 'sms_settings_param_key4'.tr,
                            title: 'sms_settings_param_key4'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter4Val,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamVal4 = value,
                            hintText: 'sms_settings_param_val4'.tr,
                            title: 'sms_settings_param_val4'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter5Key,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamKey5 = value,
                            hintText: 'sms_settings_param_key5'.tr,
                            title: 'sms_settings_param_key5'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter5Val,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamVal5 = value,
                            hintText: 'sms_settings_param_val5'.tr,
                            title: 'sms_settings_param_val5'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter6Key,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamKey6 = value,
                            hintText: 'sms_settings_param_key6'.tr,
                            title: 'sms_settings_param_key6'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter6Val,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamVal6 = value,
                            hintText: 'sms_settings_param_val6'.tr,
                            title: 'sms_settings_param_val6'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter7Key,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamKey7 = value,
                            hintText: 'sms_settings_param_key7'.tr,
                            title: 'sms_settings_param_key7'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter7Val,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamVal7 = value,
                            hintText: 'sms_settings_param_val7'.tr,
                            title: 'sms_settings_param_val7'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter8Key,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamKey8 = value,
                            hintText: 'sms_settings_param_key8'.tr,
                            title: 'sms_settings_param_key8'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter8Val,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamVal8 = value,
                            hintText: 'sms_settings_param_val8'.tr,
                            title: 'sms_settings_param_val8'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter9Key,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamKey9 = value,
                            hintText: 'sms_settings_param_key9'.tr,
                            title: 'sms_settings_param_key9'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter9Val,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamVal9 = value,
                            hintText: 'sms_settings_param_val9'.tr,
                            title: 'sms_settings_param_val9'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter10Key,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamKey10 = value,
                            hintText: 'sms_settings_param_key10'.tr,
                            title: 'sms_settings_param_key10'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: parameter10Val,
                            onChanged: (value) =>
                                smsInfo?.smsSettingsParamVal10 = value,
                            hintText: 'sms_settings_param_val10'.tr,
                            title: 'sms_settings_param_val10'.tr,
                            // hintText: '0.00',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }

// buildEmailSettings
  BlocBuilder<ShopInfoCubit, ShopInfoState> buildEmailSettings() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(
      builder: (context, state) {
        final emailInfo = state.data!.shopInfo!.emailSetting;
        emailHost.text =
            emailInfo!.mailHost == null ? '' : emailInfo.mailHost.toString();
        emailPort.text =
            emailInfo.mailPort == null ? '' : emailInfo.mailPort.toString();
        emailUsername.text = emailInfo.mailUsername == null
            ? ''
            : emailInfo.mailUsername.toString();
        emailPassword.text = emailInfo.mailPassword == null
            ? ''
            : emailInfo.mailPassword.toString();
        emailEncryption.text = emailInfo.mailEncryption == null
            ? ''
            : emailInfo.mailEncryption.toString();
        fromAddress.text = emailInfo.mailFromAddress == null
            ? ''
            : emailInfo.mailFromAddress.toString();
        fromName.text = emailInfo.mailFromName == null
            ? ''
            : emailInfo.mailFromName.toString();
        timeEmail.text = emailInfo.mailFromStartLesson == null
            ? ''
            : emailInfo.mailFromStartLesson.toString();

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              CustomDropdown(
                title: "mail_driver".tr,
                hint: 'please_select'.tr,
                info: emailInfo.mailDriver.toString(),
                headIcon: const Icon(
                  Icons.mail_outline,
                  color: Color(0xff434345),
                ),
                footIcon:
                    const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
                listItem: listMD,
                onChanged: (String? T) {
                  // listInfoBussiness?.accountingMethod = T!;
                },
              ),
              CustomTextFormField(
                controller: emailHost,
                icon: Icons.abc_outlined,
                onChanged: (value) => emailInfo.mailHost = value,
                hintText: 'Host',
                title: 'mail_host'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: emailPort,
                onChanged: (value) => emailInfo.mailPort = value,
                icon: Icons.abc_outlined,
                hintText: 'Port',
                title: 'mail_port'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: emailUsername,
                onChanged: (value) => emailInfo.mailUsername = value,
                icon: Icons.abc_outlined,
                hintText: 'Username',
                title: 'mail_username'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: emailPassword,
                onChanged: (value) => emailInfo.mailPassword = value,
                icon: Icons.abc_outlined,
                hintText: 'Password',
                title: 'mail_password'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: emailEncryption,
                onChanged: (value) => emailInfo.mailEncryption = value,
                icon: Icons.abc_outlined,
                hintText: 'tls / ssl',
                title: 'mail_encryption'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: fromAddress,
                onChanged: (value) => emailInfo.mailFromAddress = value,
                icon: Icons.abc_outlined,
                hintText: 'From Address',
                title: 'mail_from_address'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: fromName,
                onChanged: (value) => emailInfo.mailFromName = value,
                icon: Icons.abc_outlined,
                hintText: 'From Name',
                title: 'mail_from_name'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: timeEmail,
                onChanged: (value) => emailInfo.mailFromStartLesson = value,
                icon: Icons.abc_outlined,
                hintText: 'enter_minute'.tr,
                title: 'mail_from_start_lesson'.tr,
                // hintText: '0.00',
              ),
            ],
          ),
        );
      },
    );
  }

  //buildPrefix
  BlocBuilder<ShopInfoCubit, ShopInfoState> buildPrefix() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(
      builder: (context, state) {
        final prefixesInfo = state.data!.shopInfo!.prefixes;
        purchase.text = prefixesInfo!.purchasePrefix.toString();
        purchaseReturn.text = prefixesInfo.purchaseReturnPrefix.toString();
        purchaseOrder.text = prefixesInfo.purchaseOrderPrefix.toString();
        stockTransfer.text = prefixesInfo.stockTransferPrefix.toString();
        stockAdjustment.text = prefixesInfo.stockAdjustmentPrefix.toString();
        sellReturn.text = prefixesInfo.sellReturnPrefix.toString();
        expense.text = prefixesInfo.expensesPrefix.toString();
        contact.text = prefixesInfo.contactsPrefix.toString();
        purchasePayment.text = prefixesInfo.purchasePayment.toString();
        sellPayment.text = prefixesInfo.sellPayment.toString();
        expensePayment.text = prefixesInfo.expensePayment.toString();
        businessLocation.text = prefixesInfo.businessLocationPrefix.toString();
        usernamePre.text = prefixesInfo.usernamePrefix.toString();
        subscriptionNo.text = prefixesInfo.subscriptionPrefix.toString();
        draft.text = prefixesInfo.draftPrefix.toString();
        saleOrder.text = prefixesInfo.salesOrderPrefix.toString();

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              CustomTextFormField(
                icon: Icons.abc_outlined,
                controller: purchase,
                onChanged: (value) => prefixesInfo.purchasePrefix = value,
                title: 'purchase_prefix'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                icon: Icons.abc_outlined,
                onChanged: (value) => prefixesInfo.purchaseReturnPrefix = value,
                controller: purchaseReturn,
                title: 'purchase_return_prefix'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                icon: Icons.abc_outlined,
                controller: purchaseOrder,
                onChanged: (value) => prefixesInfo.purchaseOrderPrefix = value,

                title: 'purchase_order_prefix'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: stockTransfer,
                onChanged: (value) => prefixesInfo.stockTransferPrefix = value,
                icon: Icons.abc_outlined,
                title: 'stock_transfer_prefix'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: stockAdjustment,
                onChanged: (value) =>
                    prefixesInfo.stockAdjustmentPrefix = value,
                icon: Icons.abc_outlined,
                title: 'stock_adjustment_prefix'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: sellReturn,
                onChanged: (value) => prefixesInfo.sellReturnPrefix = value,
                icon: Icons.abc_outlined,
                title: 'sell_return_prefix'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: expense,
                onChanged: (value) => prefixesInfo.expensesPrefix = value,
                icon: Icons.abc_outlined,
                title: 'expenses_prefix'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: contact,
                onChanged: (value) => prefixesInfo.contactsPrefix = value,
                icon: Icons.abc_outlined,
                title: 'contacts_prefix'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: purchasePayment,
                onChanged: (value) => prefixesInfo.purchasePayment = value,
                icon: Icons.abc_outlined,
                title: 'purchase_payment'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: sellPayment,
                onChanged: (value) => prefixesInfo.sellPayment = value,

                icon: Icons.abc_outlined,
                title: 'sell_payment'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: expensePayment,
                onChanged: (value) => prefixesInfo.expensePayment = value,
                icon: Icons.abc_outlined,
                title: 'expense_payment'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: businessLocation,
                onChanged: (value) =>
                    prefixesInfo.businessLocationPrefix = value,
                icon: Icons.abc_outlined,
                title: 'business_location_prefix'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: usernamePre,
                onChanged: (value) => prefixesInfo.usernamePrefix = value,
                icon: Icons.abc_outlined,
                title: 'username_prefix'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: subscriptionNo,
                onChanged: (value) => prefixesInfo.subscriptionPrefix = value,
                icon: Icons.abc_outlined,
                title: 'subscription_prefix'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: draft,
                onChanged: (value) => prefixesInfo.draftPrefix = value,
                icon: Icons.abc_outlined,
                title: 'draft_prefix'.tr,
                // hintText: '0.00',
              ),
              CustomTextFormField(
                controller: saleOrder,
                onChanged: (value) => prefixesInfo.salesOrderPrefix = value,
                icon: Icons.abc_outlined,
                title: 'sales_order_prefix'.tr,
                // hintText: '0.00',
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<ShopInfoCubit, ShopInfoState> buildSystem() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(
      builder: (context, state) {
        final systemInfo = state.data!.shopInfo!.system;
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              CustomDropdown(
                title: "theme_color".tr,
                hint: 'please_select'.tr,
                info: systemInfo?.themeColor == null
                    ? listTC[0]
                    : '${systemInfo?.themeColor}',
                headIcon: const Icon(
                  Icons.color_lens_outlined,
                  color: Color(0xff434345),
                ),
                footIcon:
                    const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
                listItem: listTC,
                onChanged: (String? T) {
                  // listInfoBussiness?.accountingMethod = T!;
                },
              ),
              // CustomDropdown(
              //   title: "default_datatable_page_entries".tr,
              //   hint: 'Please Selected',
              //   info: '${systemInfo?.defaultDatatablePageEntries}',
              //   headIcon: const Icon(
              //     Icons.pageview_outlined,
              //     color: Color(0xff434345),
              //   ),
              //   footIcon:
              //       const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
              //   listItem: listDDPE,
              //   onChanged: (String? T) {
              //     // listInfoBussiness?.accountingMethod = T!;
              //   },
              // ),
              CheckboxListTile(
                  value: systemInfo?.enableTooltip,
                  title: Text(
                    "enable_tooltip".tr,
                    style: GlobalStyles.titilliumSemiBold(context)
                        .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                  ),
                  onChanged: (bool? value) {
                    setState(() {
                      systemInfo?.enableTooltip = value!;
                    });
                  }),
            ],
          ),
        );
      },
    );
  }

  // buildDashboard
  BlocBuilder<ShopInfoCubit, ShopInfoState> buildDashboard() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(
      builder: (context, state) {
        final dashboardInfo = state.data!.shopInfo!.dashboard;
        stockExpiry.text = '${dashboardInfo!.stockExpiryAlertDays}';
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomTextFormField(
            suffix: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text('day'.tr),
            ),
            controller: stockExpiry,
            onChanged: (value) =>
                dashboardInfo.stockExpiryAlertDays = int.parse(value),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            icon: Icons.calendar_month,
            title: 'view_stock_expiry_alert_for'.tr,
            // hintText: '0.00',
          ),
        );
      },
    );
  }

  // buildPurchase
  BlocBuilder<ShopInfoCubit, ShopInfoState> buildPurchase() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(
      builder: (context, state) {
        final purchaseInfo = state.data!.shopInfo!.purchases;
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CheckboxListTile(
                value: purchaseInfo?.enableEditingProductFromPurchase,
                title: Text(
                  "enable_editing_product_from_purchase".tr,
                  style: GlobalStyles.titilliumSemiBold(context)
                      .copyWith(fontSize: Dimensions.FONT_SIZE_DEFAULT),
                ),
                onChanged: (bool? value) {
                  setState(() {
                    purchaseInfo?.enableEditingProductFromPurchase = value!;
                  });
                }),
            CheckboxListTile(
                value: purchaseInfo?.enablePurchaseStatus,
                title: Text(
                  "enable_purchase_status".tr,
                  style: GlobalStyles.titilliumSemiBold(context)
                      .copyWith(fontSize: Dimensions.FONT_SIZE_DEFAULT),
                ),
                onChanged: (bool? value) {
                  setState(() {
                    purchaseInfo?.enablePurchaseStatus = value!;
                  });
                }),
            CheckboxListTile(
                value: purchaseInfo?.enableLotNumber,
                title: Text(
                  "enable_lot_number".tr,
                  style: GlobalStyles.titilliumSemiBold(context)
                      .copyWith(fontSize: Dimensions.FONT_SIZE_DEFAULT),
                ),
                onChanged: (bool? value) {
                  setState(() {
                    purchaseInfo?.enableLotNumber = value!;
                  });
                }),
            CheckboxListTile(
                value: purchaseInfo?.enablePurchaseOrder,
                title: Text(
                  "enable_purchase_order".tr,
                  style: GlobalStyles.titilliumSemiBold(context)
                      .copyWith(fontSize: Dimensions.FONT_SIZE_DEFAULT),
                ),
                onChanged: (bool? value) {
                  setState(() {
                    purchaseInfo?.enablePurchaseOrder = value!;
                  });
                }),
          ]),
        );
      },
    );
  }

  // buildPOS
  BlocBuilder<ShopInfoCubit, ShopInfoState> buildPOS() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(
      builder: (context, state) {
        final posInfo = state.data!.shopInfo!.pos;
        cashDenomination.text = posInfo?.cashDenominations == null
            ? ''
            : '${posInfo?.cashDenominations}';
        barcodePrefix.text =
            posInfo?.weighingScaleSetting!.weighingBarcodePrefix == null
                ? ''
                : '${posInfo?.weighingScaleSetting!.weighingBarcodePrefix}';

        switch (posInfo?.weighingScaleSetting!.weighingProductSkuLength) {
          case "0":
            PSL = "1";
            break;
          case "1":
            PSL = "2";
            break;
          case "2":
            PSL = "3";
            break;
          case "3":
            PSL = "4";
            break;
          case "4":
            PSL = "5";
            break;
          case "5":
            PSL = "6";
            break;
          case "6":
            PSL = "7";
            break;
          case "7":
            PSL = "8";
            break;
          case "8":
            PSL = "9";
            break;
        }
        switch (posInfo?.weighingScaleSetting!.weighingQtyIntegerPartLength) {
          case "0":
            QIPL = "1";
            break;
          case "1":
            QIPL = "2";
            break;
          case "2":
            QIPL = "3";
            break;
          case "3":
            QIPL = "4";
            break;
          case "4":
            QIPL = "5";
            break;
        }
        switch (
            posInfo?.weighingScaleSetting!.weighingQtyFractionalPartLength) {
          case "0":
            QFPL = "1";
            break;
          case "1":
            QFPL = "2";
            break;
          case "2":
            QFPL = "3";
            break;
          case "3":
            QFPL = "4";
            break;
        }
        // switch (saleInfo?.commissionAgent?.salesCommissionAgent) {
        //   case null:
        //     SCA = "disabled";
        //     break;
        //   case "logged_in_user":
        //     SCA = "logged_in_user";
        //     break;
        //   case "user":
        //     SCA = "select_from_user's_list";
        //     break;
        //   case "cmsn_agnt":
        //     SCA = "select_from_commission_agent's_list";
        //     break;
        // }
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'pos_settings'.tr,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.FONT_SIZE_LARGE),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.disablePayCheckout,
                      title: Text(
                        "disable_pay_checkout".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.disablePayCheckout = value!;
                        });
                      }),
                ),
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.disableDraft,
                      title: Text(
                        "disable_draft".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.disableDraft = value!;
                        });
                      }),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.disableExpressCheckout,
                      title: Text(
                        "disable_express_checkout".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.disableExpressCheckout = value!;
                        });
                      }),
                ),
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.hideProductSuggestion,
                      title: Text(
                        "hide_product_suggestion".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.hideProductSuggestion = value!;
                        });
                      }),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.hideRecentTrans,
                      title: Text(
                        "hide_recent_trans".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.hideRecentTrans = value!;
                        });
                      }),
                ),
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.disableDiscount,
                      title: Text(
                        "disable_discount".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.disableDiscount = value!;
                        });
                      }),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.disableOrderTax,
                      title: Text(
                        "disable_order_tax".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.disableOrderTax = value!;
                        });
                      }),
                ),
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.isPosSubtotalEditable,
                      title: Text(
                        "is_pos_subtotal_editable".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.isPosSubtotalEditable = value!;
                        });
                      }),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.disableSuspend,
                      title: Text(
                        "disable_suspend".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.disableSuspend = value!;
                        });
                      }),
                ),
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.enableTransactionDate,
                      title: Text(
                        "enable_transaction_date".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.enableTransactionDate = value!;
                        });
                      }),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.inlineServiceStaff,
                      title: Text(
                        "inline_service_staff".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.inlineServiceStaff = value!;
                        });
                      }),
                ),
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.isServiceStaffRequired,
                      title: Text(
                        "is_service_staff_required".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.isServiceStaffRequired = value!;
                        });
                      }),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.disableCreditSaleButton,
                      title: Text(
                        "disable_credit_sale_button".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.disableCreditSaleButton =
                              value!;
                        });
                      }),
                ),
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.enableWeighingScale,
                      title: Text(
                        "enable_weighing_scale".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.enableWeighingScale = value!;
                        });
                      }),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.showInvoiceScheme,
                      title: Text(
                        "show_invoice_scheme".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.showInvoiceScheme = value!;
                        });
                      }),
                ),
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.showInvoiceLayout,
                      title: Text(
                        "show_invoice_layout".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.showInvoiceLayout = value!;
                        });
                      }),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                      value: posInfo?.posSettings?.printOnSuspend,
                      title: Text(
                        "print_on_suspend".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.printOnSuspend = value!;
                        });
                      }),
                ),
                Expanded(
                  child: CheckboxListTile(
                      value:
                          posInfo?.posSettings?.showPricingOnProductSugesstion,
                      title: Text(
                        "show_pricing_on_product_sugesstion".tr,
                        style: GlobalStyles.titilliumSemiBold(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          posInfo?.posSettings?.showPricingOnProductSugesstion =
                              value!;
                        });
                      }),
                ),
              ],
            ),
            const Divider(),
            CustomTextFormField(
                title: 'cash_denominations'.tr,
                onChanged: (value) => posInfo?.cashDenominations = value,
                controller: cashDenomination,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],

                // hintText: '0.00',
                icon: Icons.money),
            const Divider(),
            Text(
              'weighing_scale_setting'.tr + ':',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.FONT_SIZE_LARGE),
            ),
            CustomTextFormField(
              title: 'weighing_barcode_prefix'.tr,
              onChanged: (value) =>
                  posInfo?.weighingScaleSetting!.weighingBarcodePrefix = value,
              controller: barcodePrefix,
              // hintText: '0.00',
            ),
            CustomDropdown(
              title: "weighing_product_sku_length".tr,
              hint: 'please_select'.tr,
              info: PSL!,
              // headIcon: const Icon(
              //   Icons.add_shopping_cart_rounded,
              //   color: Color(0xff434345),
              // ),
              footIcon:
                  const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
              listItem: listPSL,
              onChanged: (String? T) {
                PSL = T!;
                switch (PSL) {
                  case "1":
                    posInfo?.weighingScaleSetting!.weighingProductSkuLength =
                        "0";
                    break;
                  case "2":
                    posInfo?.weighingScaleSetting!.weighingProductSkuLength =
                        "1";
                    break;
                  case "3":
                    posInfo?.weighingScaleSetting!.weighingProductSkuLength =
                        "2";
                    break;
                  case "4":
                    posInfo?.weighingScaleSetting!.weighingProductSkuLength =
                        "3";
                    break;
                  case "5":
                    posInfo?.weighingScaleSetting!.weighingProductSkuLength =
                        "4";
                    break;
                  case "6":
                    posInfo?.weighingScaleSetting!.weighingProductSkuLength =
                        "5";
                    break;
                  case "7":
                    posInfo?.weighingScaleSetting!.weighingProductSkuLength =
                        "6";
                    break;
                  case "8":
                    posInfo?.weighingScaleSetting!.weighingProductSkuLength =
                        "7";
                    break;
                  case "9":
                    posInfo?.weighingScaleSetting!.weighingProductSkuLength =
                        "8";
                    break;
                }
              },
            ),
            CustomDropdown(
              title: "weighing_qty_integer_part_length".tr,
              hint: 'please_select'.tr,
              info: QIPL!,

              // headIcon: const Icon(
              //   Icons.add_shopping_cart_rounded,
              //   color: Color(0xff434345),
              // ),
              footIcon:
                  const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
              listItem: listQIPL,
              onChanged: (String? T) {
                QIPL = T!;
                switch (QIPL) {
                  case "1":
                    posInfo?.weighingScaleSetting!
                        .weighingQtyIntegerPartLength = "0";
                    break;
                  case "2":
                    posInfo?.weighingScaleSetting!
                        .weighingQtyIntegerPartLength = "1";
                    break;
                  case "3":
                    posInfo?.weighingScaleSetting!
                        .weighingQtyIntegerPartLength = "2";
                    break;
                  case "4":
                    posInfo?.weighingScaleSetting!
                        .weighingQtyIntegerPartLength = "3";
                    break;
                  case "5":
                    posInfo?.weighingScaleSetting!
                        .weighingQtyIntegerPartLength = "4";
                    break;
                }
              },
            ),
            CustomDropdown(
              title: "weighing_qty_fractional_part_length".tr,
              hint: 'please_select'.tr,
              info: QFPL!,
              // headIcon: const Icon(
              //   Icons.add_shopping_cart_rounded,
              //   color: Color(0xff434345),
              // ),
              footIcon:
                  const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
              listItem: listQFPL,
              onChanged: (String? T) {
                QFPL = T!;
                switch (QFPL) {
                  case "1":
                    posInfo?.weighingScaleSetting!
                        .weighingQtyFractionalPartLength = "0";
                    break;
                  case "2":
                    posInfo?.weighingScaleSetting!
                        .weighingQtyFractionalPartLength = "1";
                    break;
                  case "3":
                    posInfo?.weighingScaleSetting!
                        .weighingQtyFractionalPartLength = "2";
                    break;
                  case "4":
                    posInfo?.weighingScaleSetting!
                        .weighingQtyFractionalPartLength = "3";
                    break;
                }
              },
            ),
          ]),
        );
      },
    );
  }

  // buildSale
  BlocBuilder<ShopInfoCubit, ShopInfoState> buildSale() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(
      builder: (context, state) {
        final saleInfo = state.data!.shopInfo?.sale;
        // final listTax = state.data!.listTax.map((e) => e.name).toList();
        // listTax.insert(0, "None");
        // print(listTax);
        saleDiscount.text = '${saleInfo?.defaultSalesDiscount}';

        razorKey.text = '${saleInfo?.paymentLink!.razorPayKeyId}' == "null"
            ? ''
            : '${saleInfo?.paymentLink!.razorPayKeyId}';
        razorKeySecret.text =
            '${saleInfo?.paymentLink!.razorPayKeySecret}' == "null"
                ? ''
                : saleInfo?.paymentLink!.razorPayKeySecret;
        stripeKey.text = '${saleInfo?.paymentLink!.stripePublicKey}' == "null"
            ? ''
            : saleInfo?.paymentLink!.stripePublicKey;
        stripeKeySecret.text =
            '${saleInfo?.paymentLink!.stripeSecretKey}' == "null"
                ? ''
                : saleInfo?.paymentLink!.stripeSecretKey;
        // SCA = '${saleInfo?.commissionAgent?.salesCommissionAgent}';

        switch (saleInfo?.salesItemAdditionMethod) {
          case 0:
            SIAM = "add_item_in_new_row";
            break;
          case 1:
            SIAM = "increase_item_quantity_if_it_already_exists";
            break;
        }
        switch (saleInfo?.commissionAgent?.salesCommissionAgent) {
          case null:
            SCA = "disabled";
            break;
          case "logged_in_user":
            SCA = "logged_in_user";
            break;
          case "user":
            SCA = "select_from_user_list";
            break;
          case "cmsn_agnt":
            SCA = "select_from_commission_agent_list";
            break;
        }

        // ARM = '${saleInfo?.amountRoundingMethod}';listARM = [

        switch (saleInfo?.amountRoundingMethod) {
          case null:
            ARM = "none";
            break;
          case "1":
            ARM = "round_to_nearest_whole_number";
            break;
          case "0.05":
            ARM = "round_to_nearest_decimal_multiple_of_005";
            break;
          case "0.1":
            ARM = "round_to_nearest_decimal_multiple_of_01";
            break;
          case "0.5":
            ARM = "round_to_nearest_decimal_multiple_of_05";
            break;
        }
        final valueTax = state.data!.listTax
            .firstWhereOrNull((item) => item.id == saleInfo?.defaultSalesTax);
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormField(
                  controller: saleDiscount,
                  onChanged: (value) => saleInfo?.defaultSalesDiscount = value,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  title: 'default_sales_discount'.tr,
                  hintText: '0.00',
                  icon: Icons.percent),

              CustomDropDownWithT<TaxData>(
                  labelText: 'default_sales_tax'.tr,
                  items: state.data!.listTax
                      .map<DropdownMenuItem<TaxData>>(
                        (TaxData value) => DropdownMenuItem<TaxData>(
                          value: value,
                          child: Text(value.name!),
                        ),
                      )
                      .toList(),
                  value: valueTax,
                  onChanged: (dynamic value) => {
                        context.read<ShopInfoCubit>().getTaxData(value),
                        setState(() {
                          saleInfo?.defaultSalesTax = value.id;
                        })
                      }),
              // CustomDropdown(
              //   title: "default_sales_tax".tr,
              //   hint: 'Please Selected',
              //   info: saleInfo?.defaultSalesTax == null
              //       ? listTax[0]
              //       // ignore: dead_code
              //       : '${saleInfo?.defaultSalesTax}',
              //   headIcon: const Icon(
              //     Icons.info_outline,
              //     color: Color(0xff434345),
              //   ),
              //   footIcon:
              //       const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
              //   listItem: listTax,
              //   onChanged: (String? T) {
              //     saleInfo?.defaultSalesTax = T!;
              //   },
              // ),
              CustomDropdown(
                title: "sales_item_addition_method".tr,
                hint: 'please_select'.tr,
                info: SIAM,
                headIcon: const Icon(
                  Icons.add_shopping_cart_rounded,
                  color: Color(0xff434345),
                ),
                footIcon:
                    const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
                listItem: listSIAM,
                onChanged: (String? T) {
                  SIAM = T!;
                  switch (SIAM) {
                    case "add_item_in_new_row":
                      saleInfo?.salesItemAdditionMethod = 0;
                      break;
                    case "increase_item_quantity_if_it_already_exists":
                      saleInfo?.salesItemAdditionMethod = 1;
                      break;
                  }
                },
              ),
              CustomDropdown(
                title: "amount_rounding_method".tr,
                hint: 'please_select'.tr,
                info: ARM!,
                headIcon: const Icon(
                  Icons.exposure_zero,
                  color: Color(0xff434345),
                ),
                footIcon:
                    const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
                listItem: listARM,
                onChanged: (String? T) {
                  ARM = T!;

                  switch (ARM) {
                    case "none":
                      saleInfo?.amountRoundingMethod = null;
                      break;
                    case "round_to_nearest_whole_number":
                      saleInfo?.amountRoundingMethod = "1";
                      break;
                    case "Round to nearest decimal(multiple of 0.05)":
                      saleInfo?.amountRoundingMethod = "0.05";
                      break;
                    case "round_to_nearest_decimal_multiple_of_01":
                      saleInfo?.amountRoundingMethod = "0.1";
                      break;
                    case "round_to_nearest_decimal_multiple_of_05":
                      saleInfo?.amountRoundingMethod = "0.5";
                      break;
                  }
                },
              ),
              CheckboxListTile(
                  value: saleInfo?.salePriceIsMinimumSalePrice,
                  title: Text(
                    "sale_price_is_minimum_sale_price".tr,
                    style: GlobalStyles.titilliumSemiBold(context),
                  ),
                  onChanged: (bool? value) {
                    setState(() {
                      saleInfo?.salePriceIsMinimumSalePrice = value!;
                    });
                  }),
              CheckboxListTile(
                  value: saleInfo?.allowOverselling,
                  title: Text(
                    "allow_overselling".tr,
                    style: GlobalStyles.titilliumSemiBold(context),
                  ),
                  onChanged: (bool? value) {
                    setState(() {
                      saleInfo?.allowOverselling = value!;
                    });
                  }),
              CheckboxListTile(
                  value: saleInfo?.enableSalesOrder,
                  title: Text(
                    "enable_sales_order".tr,
                    style: GlobalStyles.titilliumSemiBold(context),
                  ),
                  onChanged: (bool? value) {
                    setState(() {
                      saleInfo?.enableSalesOrder = value!;
                    });
                  }),
              CheckboxListTile(
                  value: saleInfo?.isPayTermRequired,
                  title: Text(
                    "is_pay_term_required".tr,
                    style: GlobalStyles.titilliumSemiBold(context),
                  ),
                  onChanged: (bool? value) {
                    setState(() {
                      saleInfo?.isPayTermRequired = value!;
                    });
                  }),
              const Divider(),
              Text(
                'commission_agent'.tr,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.FONT_SIZE_LARGE),
              ),
              CustomDropdown(
                title: "sales_commission_agent".tr,
                hint: 'please_select'.tr,
                info: SCA!,
                headIcon: const Icon(
                  Icons.info_outline,
                  color: Color(0xff434345),
                ),
                footIcon:
                    const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
                listItem: listSCA,
                onChanged: (String? T) {
                  SCA = T!;
                  switch (SCA) {
                    case "disabled":
                      saleInfo?.commissionAgent?.salesCommissionAgent = null;
                      break;
                    case "logged_in_user":
                      saleInfo?.commissionAgent?.salesCommissionAgent =
                          "logged_in_user";
                      break;
                    case "select_from_user's_list":
                      saleInfo?.commissionAgent?.salesCommissionAgent = "user";
                      break;
                    case "select_from_commission_agent's_list":
                      saleInfo?.commissionAgent?.salesCommissionAgent =
                          "cmsn_agnt";
                      break;
                  }
                },
              ),
              CustomDropdown(
                title: "commission_calculation_type".tr,
                hint: 'please_select'.tr,
                info:
                    '${saleInfo?.commissionAgent?.commissionCalculationType}' ==
                            'invoice_value'
                        ? listCCT[0]
                        : listCCT[1],
                headIcon: const Icon(
                  Icons.info_outline,
                  color: Color(0xff434345),
                ),
                footIcon:
                    const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
                listItem: listCCT,
                onChanged: (String? T) {
                  saleInfo?.commissionAgent?.commissionCalculationType = T!;
                },
              ),
              CheckboxListTile(
                  value: saleInfo?.commissionAgent?.isCommissionAgentRequired,
                  title: Text(
                    "is_commission_agent_required".tr,
                    style: GlobalStyles.titilliumSemiBold(context),
                  ),
                  onChanged: (bool? value) {
                    setState(() {
                      saleInfo?.commissionAgent?.isCommissionAgentRequired =
                          value!;
                    });
                  }),
              const Divider(),
              Text(
                'payment_link'.tr + ':',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.FONT_SIZE_LARGE),
              ),
              CheckboxListTile(
                  value: saleInfo?.paymentLink?.enablePaymentLink,
                  title: Text(
                    "enable_payment_link".tr,
                    style: GlobalStyles.titilliumSemiBold(context),
                  ),
                  onChanged: (bool? value) {
                    setState(() {
                      saleInfo?.paymentLink?.enablePaymentLink = value!;
                    });
                  }),
              const Text('Razorpay: (For INR India)'),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: CustomTextFormField(
                          controller: razorKey,
                          onChanged: (value) =>
                              saleInfo?.paymentLink!.razorPayKeyId = value,
                          title: 'razor_pay_key_id'.tr,
                          widget: SvgPicture.asset(GlobalImages.razorpay,
                              height: 7))),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomTextFormField(
                      controller: razorKeySecret,
                      onChanged: (value) =>
                          saleInfo?.paymentLink!.razorPayKeySecret = value,
                      title: 'razor_pay_key_secret'.tr,

                      // icon: Icons.percent
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: CustomTextFormField(
                        controller: stripeKey,
                        onChanged: (value) =>
                            saleInfo?.paymentLink!.stripePublicKey = value,
                        title: 'stripe_public_key'.tr,
                        widget: SvgPicture.asset(
                          GlobalImages.stripe,
                          height: 25,
                          width: 25,
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomTextFormField(
                      controller: stripeKeySecret,
                      onChanged: (value) =>
                          saleInfo?.paymentLink!.stripeSecretKey = value,
                      title: 'stripe_secret_key'.tr,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  // SafeArea buildBody(BuildContext context) {
  //   return SafeArea(
  //       child: SingleChildScrollView(
  //     child: Container(
  //       decoration: const BoxDecoration(color: GlobalColors.bgColor),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.only(
  //                 top: 15, bottom: 5, right: 10, left: 10),
  //             child: Text(
  //               "business".tr,
  //               style: GlobalStyles.titleHeader(context),
  //             ),
  //           ),
  //           Container(
  //               margin: const EdgeInsets.only(top: 5),
  //               padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
  //               decoration: const BoxDecoration(color: Colors.white),
  //               child: buildbusiness()),
  //           Padding(
  //             padding: const EdgeInsets.only(
  //                 top: 15, bottom: 5, right: 10, left: 10),
  //             child: Text(
  //               "tax".tr,
  //               style: GlobalStyles.titleHeader(context),
  //             ),
  //           ),
  //           Container(
  //               margin: const EdgeInsets.only(top: 5),
  //               padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
  //               decoration: const BoxDecoration(color: Colors.white),
  //               child: buildTax()),
  //           Padding(
  //             padding: const EdgeInsets.only(
  //                 top: 15, bottom: 5, right: 10, left: 10),
  //             child: Text(
  //               "products".tr,
  //               style: GlobalStyles.titleHeader(context),
  //             ),
  //           ),
  //           Container(
  //               margin: const EdgeInsets.only(top: 5),
  //               padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
  //               decoration: const BoxDecoration(color: Colors.white),
  //               child: buildProduct()),
  //           Padding(
  //             padding: const EdgeInsets.only(
  //                 top: 15, bottom: 5, right: 10, left: 10),
  //             child: Text(
  //               "contacts".tr,
  //               style: GlobalStyles.titleHeader(context),
  //             ),
  //           ),
  //           Container(
  //               margin: const EdgeInsets.only(top: 5),
  //               padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
  //               decoration: const BoxDecoration(color: Colors.white),
  //               child: buildContact()),
  //         ],
  //       ),
  //     ),
  //   ));
  // }

  //buildContact
  BlocBuilder<ShopInfoCubit, ShopInfoState> buildContact() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(builder: (context, state) {
      final contractInfo = state.data!.shopInfo?.contact;
      defauCreditLimit.text = contractInfo?.defaultCreditLimit ?? "";
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextFormField(
              controller: defauCreditLimit,
              onChanged: (value) => contractInfo?.defaultCreditLimit = value,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                  labelText: 'defaultCreditLimit'.tr,
                  // ignore: prefer_const_constructors
                  floatingLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff49545C),
                      fontSize: 18),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff49545C),
                      fontSize: 18),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffDFDFDF),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 3, 162, 85),
                    ),
                  ),
                  icon: const Icon(Icons.add_circle_outline,
                      color: Color(0xff434345)),
                  hintText: "0",
                  hintStyle:
                      const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
                  floatingLabelBehavior: FloatingLabelBehavior.always),
              cursorColor: const Color.fromARGB(255, 6, 154, 77),
            ),
          ],
        ),
      );
    });
  }

  BlocBuilder<ShopInfoCubit, ShopInfoState> buildProduct() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(builder: (context, state) {
      final infoProduct = state.data!.shopInfo?.product;
      FrefixSKU.text = infoProduct?.skuPrefix ?? "";
      // FrefixSKU.selection =
      //     TextSelection.collapsed(offset: countDay.text.length);
      countDay.text = '${infoProduct?.stopSellingBefore}';
      // countDay.selection =
      //     TextSelection.collapsed(offset: countDay.text.length);
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          TextFormField(
            controller: FrefixSKU,
            onChanged: (value) => infoProduct?.skuPrefix = value,
            decoration: InputDecoration(
                labelText: "frefixOfSKU".tr + ":",
                // ignore: prefer_const_constructors
                floatingLabelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff49545C),
                    fontSize: 18),
                labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 18),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xffDFDFDF),
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color.fromARGB(255, 3, 162, 85),
                  ),
                ),
                icon: const Icon(Icons.edit, color: Color(0xff434345)),
                hintText: "inputFrefix".tr,
                hintStyle:
                    const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
                floatingLabelBehavior: FloatingLabelBehavior.always),
            cursorColor: const Color.fromARGB(255, 6, 154, 77),
          ),
          CheckboxListTile(
              value: infoProduct?.enableProductExpiry,
              title: Text(
                "enable_product_expiry".tr,
                style: GlobalStyles.titilliumSemiBold(context),
              ),
              onChanged: (bool? value) {
                setState(() {
                  infoProduct?.enableProductExpiry = value!;
                });
              }),
          AnimatedContainer(
            duration: const Duration(milliseconds: 50),
            height: infoProduct?.enableProductExpiry == true ? 200 : 0,
            alignment: Alignment.center,
            curve: Curves.fastOutSlowIn,
            child: Column(
              children: [
                CustomDropdown(
                  title: "enable_product_expiry".tr,
                  hint: 'please_select'.tr,
                  info: infoProduct?.expiryType,
                  footIcon: const Icon(Icons.arrow_drop_down,
                      color: Color(0xff434345)),
                  listItem: listEnProductEx,
                  onChanged: (String? T) {
                    setState(() {
                      infoProduct?.expiryType = T!;
                    });
                  },
                ),
                CustomDropdown(
                  title: "on_product_expiry".tr,
                  hint: 'please_select'.tr,
                  info: infoProduct?.onProductExpiry ?? "keep_selling",
                  footIcon: const Icon(Icons.arrow_drop_down,
                      color: Color(0xff434345)),
                  listItem: listOnProductEx,
                  onChanged: (String? T) {
                    setState(() {
                      infoProduct?.onProductExpiry = T!;
                    });
                  },
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 50),
                  // height: infoProduct?.onProductExpiry == "stop_selling" ? 40 : 0,
                  // color: Colors.white,
                  alignment: Alignment.center,
                  curve: Curves.fastOutSlowIn,
                  child: TextFormField(
                    controller: countDay,
                    onChanged: (value) =>
                        infoProduct?.stopSellingBefore = int.parse(value),
                    enabled: infoProduct?.onProductExpiry == "stop_selling"
                        ? true
                        : false,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: const InputDecoration(
                        labelText: "",
                        // ignore: prefer_const_constructors
                        floatingLabelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff49545C),
                            fontSize: 18),
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff49545C),
                            fontSize: 18),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xffDFDFDF),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 3, 162, 85),
                          ),
                        ),
                        // hintText: "0",
                        hintStyle:
                            TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                    cursorColor: const Color.fromARGB(255, 6, 154, 77),
                  ),
                )
              ],
            ),
          ),
          CheckboxListTile(
              value: infoProduct?.enableBrand ?? false,
              title: Text(
                "enableBranch".tr,
                style: GlobalStyles.titilliumSemiBold(context),
              ),
              onChanged: (bool? value) {
                setState(() {
                  infoProduct?.enableBrand = value!;
                });
              }),
          CheckboxListTile(
              value: infoProduct?.enableCategory ?? false,
              title: Text(
                "enableCategory".tr,
                style: GlobalStyles.titilliumSemiBold(context),
              ),
              onChanged: (bool? value) {
                setState(() {
                  infoProduct?.enableCategory = value!;
                });
              }),
          AnimatedContainer(
            duration: const Duration(milliseconds: 50),
            height: infoProduct?.enableCategory == true ? 50 : 0,
            child: CheckboxListTile(
                value: infoProduct?.enableSubCategory,
                title: Text(
                  "enable_sub_category".tr,
                  style: GlobalStyles.titilliumSemiBold(context),
                ),
                onChanged: (bool? value) {
                  setState(() {
                    infoProduct?.enableSubCategory = value!;
                  });
                }),
          ),
          CheckboxListTile(
              value: infoProduct?.enablePriceTax ?? false,
              title: Text(
                "applyTaxOnPrice".tr,
                style: GlobalStyles.titilliumSemiBold(context),
              ),
              onChanged: (bool? value) {
                setState(() {
                  infoProduct?.enablePriceTax = value!;
                });
              }),
          CheckboxListTile(
              value: infoProduct?.enableRacks ?? false,
              title: Text(
                "enableRacks".tr,
                style: GlobalStyles.titilliumSemiBold(context),
              ),
              onChanged: (bool? value) {
                setState(() {
                  infoProduct?.enableRacks = value!;
                });
              }),
          CustomTextField(
            title: 'defaultUnit'.tr,
            hint: 'choose'.tr + " " + 'defaultUnit'.tr,
            info: infoProduct?.nameUnit,
            isReadOnly: true,
            headIcon: const Icon(Icons.attach_money, color: Color(0xff434345)),
            footIcon:
                const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
            onTap: () async {
              Data D = (await showModalBottomSheet<Data>(
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0)),
                  ),
                  context: context,
                  builder: (BuildContext context) =>
                      DefaultUnitPicker.provider()))!;
              setState(() {
                infoProduct?.nameUnit =
                    (D.actualName ?? "") + " (" + (D.shortName ?? "") + ")";
                infoProduct?.defaultUnit = D.id;
              });
            },
          ),
          CheckboxListTile(
              value: infoProduct?.enableRow ?? false,
              title: Text(
                "enableRow".tr,
                style: GlobalStyles.titilliumSemiBold(context),
              ),
              onChanged: (bool? value) {
                setState(() {
                  infoProduct?.enableRow = value!;
                });
              }),
          CheckboxListTile(
              value: infoProduct?.enableSubUnits ?? false,
              title: Text(
                "enableSubUnit".tr,
                style: GlobalStyles.titilliumSemiBold(context),
              ),
              onChanged: (bool? value) {
                setState(() {
                  infoProduct?.enableSubUnits = value!;
                });
              }),
          CheckboxListTile(
              value: infoProduct?.enablePosition ?? false,
              title: Text(
                "enablePosition".tr,
                style: GlobalStyles.titilliumSemiBold(context),
              ),
              onChanged: (bool? value) {
                setState(() {
                  infoProduct?.enablePosition = value!;
                });
              }),
          CheckboxListTile(
              value: infoProduct?.enableProductWarranty ?? false,
              title: Text(
                "enableWarranty".tr,
                style: GlobalStyles.titilliumSemiBold(context),
              ),
              onChanged: (bool? value) {
                setState(() {
                  infoProduct?.enableProductWarranty = value!;
                });
              }),
        ]),
      );
    });
  }

  //buildTax
  BlocBuilder<ShopInfoCubit, ShopInfoState> buildTax() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(builder: (context, state) {
      final taxInfo = state.data!.shopInfo?.tax;
      tax1Name.text = taxInfo?.taxLabel1 ?? "";
      tax1Name.selection =
          TextSelection.collapsed(offset: tax1Name.text.length);
      tax2Name.text = taxInfo?.taxLabel2 ?? "";
      tax2Name.selection =
          TextSelection.collapsed(offset: tax2Name.text.length);
      tax1No.text = taxInfo?.taxNumber1 ?? "";
      tax1No.selection = TextSelection.collapsed(offset: tax1No.text.length);
      tax2No.text = taxInfo?.taxNumber2 ?? "";
      tax2No.selection = TextSelection.collapsed(offset: tax2No.text.length);
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextFormField(
              controller: tax1Name,
              onChanged: (value) => taxInfo?.taxLabel1 = value,
              decoration: InputDecoration(
                  labelText: 'taxName'.tr + " 1",
                  // ignore: prefer_const_constructors
                  floatingLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff49545C),
                      fontSize: 18),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff49545C),
                      fontSize: 18),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffDFDFDF),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 3, 162, 85),
                    ),
                  ),
                  icon:
                      const Icon(Icons.sort_by_alpha, color: Color(0xff434345)),
                  hintText: "GST/ VAT/ Other",
                  hintStyle:
                      const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
                  floatingLabelBehavior: FloatingLabelBehavior.always),
              cursorColor: const Color.fromARGB(255, 6, 154, 77),
            ),
            TextFormField(
              controller: tax1No,
              onChanged: (value) => taxInfo?.taxNumber1 = value,
              decoration: InputDecoration(
                  labelText: 'tax_number'.tr + " 1",
                  // ignore: prefer_const_constructors
                  floatingLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff49545C),
                      fontSize: 18),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff49545C),
                      fontSize: 18),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffDFDFDF),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 3, 162, 85),
                    ),
                  ),
                  icon: const Icon(Icons.pin, color: Color(0xff434345)),
                  hintText: "",
                  hintStyle:
                      const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
                  floatingLabelBehavior: FloatingLabelBehavior.always),
              cursorColor: const Color.fromARGB(255, 6, 154, 77),
            ),
            TextFormField(
              controller: tax2Name,
              onChanged: (value) => taxInfo?.taxLabel2 = value,
              decoration: InputDecoration(
                  labelText: 'taxName'.tr + " 2",
                  // ignore: prefer_const_constructors
                  floatingLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff49545C),
                      fontSize: 18),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff49545C),
                      fontSize: 18),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffDFDFDF),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 3, 162, 85),
                    ),
                  ),
                  icon:
                      const Icon(Icons.sort_by_alpha, color: Color(0xff434345)),
                  hintText: "GST/ VAT/ Other",
                  hintStyle:
                      const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
                  floatingLabelBehavior: FloatingLabelBehavior.always),
              cursorColor: const Color.fromARGB(255, 6, 154, 77),
            ),
            TextFormField(
              controller: tax2No,
              onChanged: (value) => taxInfo?.taxNumber2 = value,
              decoration: InputDecoration(
                  labelText: 'tax_number'.tr + " 2",
                  // ignore: prefer_const_constructors
                  floatingLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff49545C),
                      fontSize: 18),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff49545C),
                      fontSize: 18),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffDFDFDF),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 3, 162, 85),
                    ),
                  ),
                  icon: const Icon(Icons.pin, color: Color(0xff434345)),
                  hintText: "",
                  hintStyle:
                      const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
                  floatingLabelBehavior: FloatingLabelBehavior.always),
              cursorColor: const Color.fromARGB(255, 6, 154, 77),
            ),
            CheckboxListTile(
                value: taxInfo?.enableInlineTax ?? false,
                title: Text(
                  "EnableInlineTax".tr,
                  style: GlobalStyles.titilliumSemiBold(context),
                ),
                onChanged: (bool? value) {
                  setState(() {
                    taxInfo?.enableInlineTax = value!;
                  });
                }),
          ],
        ),
      );
    });
  }

  //buildBusiness
  BlocBuilder<ShopInfoCubit, ShopInfoState> buildBusiness() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(builder: (context, state) {
      final listInfoBussiness = state.data!.shopInfo?.business;
      name.text = listInfoBussiness?.businessName ?? "";
      name.selection = TextSelection.collapsed(offset: name.text.length);
      profitPercent.text =
          listInfoBussiness?.defaultProfitPercent.toString() ?? "";
      profitPercent.selection =
          TextSelection.collapsed(offset: profitPercent.text.length);
      intFYSM = listInfoBussiness?.financialYearStartMonth ?? 1;
      switch (intFYSM) {
        case 1:
          FYSM = "January";
          break;
        case 2:
          FYSM = "February";
          break;
        case 3:
          FYSM = "March";
          break;
        case 4:
          FYSM = "April";
          break;
        case 5:
          FYSM = "May";
          break;
        case 6:
          FYSM = "June";
          break;
        case 7:
          FYSM = "July";
          break;
        case 8:
          FYSM = "August";
          break;
        case 9:
          FYSM = "September";
          break;
        case 10:
          FYSM = "October";
          break;
        case 11:
          FYSM = "November";
          break;
        case 12:
          FYSM = "December";
          break;
      }
      editTransactionDate.text =
          listInfoBussiness?.transactionEditDays.toString() ?? "";
      editTransactionDate.selection =
          TextSelection.collapsed(offset: editTransactionDate.text.length);
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextFormField(
              controller: name,
              onChanged: (value) => listInfoBussiness?.businessName = value,
              decoration: InputDecoration(
                  labelText: 'business_name'.tr,
                  // ignore: prefer_const_constructors
                  floatingLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff49545C),
                      fontSize: 18),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff49545C),
                      fontSize: 18),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffDFDFDF),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 3, 162, 85),
                    ),
                  ),
                  icon: const Icon(Icons.home_work, color: Color(0xff434345)),
                  hintText: 'Ví dụ: Công ty TNHH ABC',
                  hintStyle:
                      const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
                  floatingLabelBehavior: FloatingLabelBehavior.always),
              cursorColor: const Color.fromARGB(255, 6, 154, 77),
            ),
            CustomTextField(
              title: 'startDate'.tr,
              hint: '01/01/1970',
              info: listInfoBussiness?.startDate,
              isReadOnly: true,
              headIcon:
                  const Icon(Icons.calendar_month, color: Color(0xff434345)),
              footIcon:
                  const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
              onTap: () async {
                String T = (await showModalBottomSheet<String>(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0)),
                    ),
                    context: context,
                    builder: (BuildContext context) => datePicker()))!;
                setState(() {
                  listInfoBussiness?.startDate = T.substring(1, 11);
                });
              },
            ),
            TextFormField(
              controller: profitPercent,
              onChanged: (value) =>
                  listInfoBussiness?.defaultProfitPercent = int.parse(value),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                  labelText: 'profit_percent'.tr + " " + 'default'.tr,
                  // ignore: prefer_const_constructors
                  floatingLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff49545C),
                      fontSize: 18),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff49545C),
                      fontSize: 18),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffDFDFDF),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 3, 162, 85),
                    ),
                  ),
                  icon: const Icon(Icons.add_circle_outline,
                      color: Color(0xff434345)),
                  hintText: "20",
                  hintStyle:
                      const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
                  floatingLabelBehavior: FloatingLabelBehavior.always),
              cursorColor: const Color.fromARGB(255, 6, 154, 77),
            ),
            CustomTextField(
              title: 'currency'.tr,
              hint: 'Chọn đơn vị tiền tệ',
              info: listInfoBussiness?.currency,
              isReadOnly: true,
              headIcon:
                  const Icon(Icons.monetization_on, color: Color(0xff434345)),
              footIcon:
                  const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
              onTap: () async {
                Currency O = (await showModalBottomSheet<Currency>(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0)),
                    ),
                    context: context,
                    builder: (BuildContext context) =>
                        CurencyPicker.provider()))!;
                setState(() {
                  listInfoBussiness?.currency = O.info!;
                  listInfoBussiness?.currencyId = O.id!;
                });
              },
            ),
            CustomDropdown(
              title: "currencySymbol".tr,
              hint: 'please_select'.tr,
              info: listInfoBussiness?.currencySymbolPlacement ?? "before",
              headIcon: const Icon(
                Icons.attach_money,
                color: Color(0xff434345),
              ),
              footIcon:
                  const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
              listItem: listCurrencyPos,
              onChanged: (String? T) {
                listInfoBussiness?.currencySymbolPlacement = T!;
              },
            ),
            CustomTextField(
              title: 'timeZone'.tr,
              hint: 'Chọn múi giờ',
              info: listInfoBussiness?.timezone,
              isReadOnly: true,
              headIcon: const Icon(Icons.access_time, color: Color(0xff434345)),
              footIcon:
                  const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
              onTap: () async {
                String T = (await showModalBottomSheet<String>(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0)),
                    ),
                    context: context,
                    builder: (BuildContext context) =>
                        TimeZonePicker.provider()))!;
                setState(() => listInfoBussiness?.timezone = T);
              },
            ),
            CustomTextField(
              title: 'uploadLogo'.tr,
              hint: "",
              info: listInfoBussiness?.logo,
              isReadOnly: true,
              headIcon: const Icon(Icons.image, color: Color(0xff434345)),
              footIcon: const Icon(Icons.folder, color: Color(0xff434345)),
              onTap: () async {
                await BlocProvider.of<ShopInfoCubit>(context)
                    .selectImage(ImageSource.gallery);
                await BlocProvider.of<ShopInfoCubit>(context).updateLogo();
              },
            ),
            SizedBox(
                width: 100,
                height: 100,
                child: Image.network(listInfoBussiness?.logo ?? noImage)),
            CustomDropdown(
              title: "FYSM".tr,
              hint: 'please_select'.tr,
              info: FYSM!,
              headIcon: const Icon(
                Icons.calendar_view_month,
                color: Color(0xff434345),
              ),
              footIcon:
                  const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
              listItem: lstFYSM,
              onChanged: (String? T) {
                FYSM = T!;
                switch (FYSM) {
                  case "January":
                    listInfoBussiness?.financialYearStartMonth = 1;
                    break;
                  case "February":
                    listInfoBussiness?.financialYearStartMonth = 2;
                    break;
                  case "March":
                    listInfoBussiness?.financialYearStartMonth = 3;
                    break;
                  case "April":
                    listInfoBussiness?.financialYearStartMonth = 4;
                    break;
                  case "May":
                    listInfoBussiness?.financialYearStartMonth = 5;
                    break;
                  case "June":
                    listInfoBussiness?.financialYearStartMonth = 6;
                    break;
                  case "July":
                    listInfoBussiness?.financialYearStartMonth = 7;
                    break;
                  case "August":
                    listInfoBussiness?.financialYearStartMonth = 8;
                    break;
                  case "September":
                    listInfoBussiness?.financialYearStartMonth = 9;
                    break;
                  case "October":
                    listInfoBussiness?.financialYearStartMonth = 10;
                    break;
                  case "November":
                    listInfoBussiness?.financialYearStartMonth = 11;
                    break;
                  case "December":
                    listInfoBussiness?.financialYearStartMonth = 12;
                    break;
                }
              },
            ),
            CustomDropdown(
              title: "SAM".tr,
              hint: 'please_select'.tr,
              info: listInfoBussiness?.accountingMethod ?? "fifo",
              headIcon: const Icon(
                Icons.sort,
                color: Color(0xff434345),
              ),
              footIcon:
                  const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
              listItem: listSAM,
              onChanged: (String? T) {
                listInfoBussiness?.accountingMethod = T!;
              },
            ),
            TextFormField(
              controller: editTransactionDate,
              onChanged: (value) =>
                  listInfoBussiness?.transactionEditDays = int.parse(value),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                  labelText: "editTransactionDate".tr,
                  // ignore: prefer_const_constructors
                  floatingLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff49545C),
                      fontSize: 18),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff49545C),
                      fontSize: 18),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffDFDFDF),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 3, 162, 85),
                    ),
                  ),
                  icon: const Icon(Icons.edit_note, color: Color(0xff434345)),
                  hintText: "Nhập ngày",
                  hintStyle:
                      const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
                  floatingLabelBehavior: FloatingLabelBehavior.always),
              cursorColor: const Color.fromARGB(255, 6, 154, 77),
            ),
            CustomDropdown(
              title: "date_format".tr,
              hint: 'please_select'.tr,
              info: listInfoBussiness?.dateFormat ?? "d/m/Y",
              headIcon: const Icon(
                Icons.calendar_view_day,
                color: Color(0xff434345),
              ),
              footIcon:
                  const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
              listItem: listDateFormat,
              onChanged: (String? T) {
                listInfoBussiness?.dateFormat = T!;
              },
            ),
            CustomDropdown(
              title: "time_format".tr,
              hint: 'please_select'.tr,
              info: listInfoBussiness?.timeFormat,
              headIcon: const Icon(
                Icons.access_time,
                color: Color(0xff434345),
              ),
              footIcon:
                  const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
              listItem: listTimeFormat,
              onChanged: (String? T) {
                listInfoBussiness?.timeFormat = T!;
              },
            ),
          ],
        ),
      );
    });
  }

  MyAppBar buildAppBar(BuildContext context) {
    return MyAppBar(
      isShowBackButton: true,
      backgroundColor: GlobalColors.bgWebColor,
      title: Text(
        'settings'.tr + " " + "business".tr.toLowerCase(),
        style: GlobalStyles.titleHeader(context).copyWith(
            fontSize: 18,
            color: GlobalColors.primaryWebColor,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
