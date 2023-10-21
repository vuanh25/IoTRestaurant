// // ignore_for_file: file_names, prefer_interpolation_to_compose_strings, non_constant_identifier_names, unrelated_type_equality_checks, use_build_context_synchronously

// import 'dart:async';
// import 'package:after_layout/after_layout.dart' as after_layout;
// import 'package:di4l_pos/models/shopinfo/request/ShopSettingPUTRq.dart';
// import 'package:di4l_pos/models/shopinfo/response/Currency.dart';
// import 'package:di4l_pos/models/shopinfo/response/DefaultUnit.dart';
// import 'package:di4l_pos/screens/business_screen/widget/CurencyPicker.dart';
// import 'package:di4l_pos/screens/business_screen/widget/CustomDropMenu.dart';
// import 'package:di4l_pos/screens/business_screen/widget/DefaultUnitPicker.dart';
// import 'package:di4l_pos/screens/business_screen/widget/TImeZonePicker.dart';
// import 'package:di4l_pos/screens/business_screen/widget/datePicker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get/get.dart';

// import 'package:di4l_pos/common/global_colors.dart';
// import 'package:di4l_pos/common/global_styles.dart';
// import 'package:di4l_pos/screens/business_screen/widget/custom_textfield.dart';
// import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:nb_utils/nb_utils.dart';

// import 'cubit/shopInfo_cubit.dart';

// class ShopInfoScreen extends StatefulWidget {
//   static BlocProvider<ShopInfoCubit> provider() {
//     return BlocProvider(
//       create: (context) => ShopInfoCubit(),
//       child: const ShopInfoScreen(),
//     );
//   }

//   const ShopInfoScreen({Key? key}) : super(key: key);

//   @override
//   State<ShopInfoScreen> createState() => _ShopInfoScreenState();
// }

// class _ShopInfoScreenState extends State<ShopInfoScreen>
//     with after_layout.AfterLayoutMixin {
//   String? logoUrl, FYSM = "Tháng 1";
//   String? EnProductEx, onProductEx, DefaultUnit;
//   int? idDefaultUnit, intFYSM;
//   CommonSettings? commonSettings;
//   TextEditingController profitPercent = TextEditingController();
//   TextEditingController editTransactionDate = TextEditingController();
//   TextEditingController DefauCreditLimit = TextEditingController();
//   TextEditingController countDay = TextEditingController();
//   TextEditingController FrefixSKU = TextEditingController();
//   TextEditingController tax1Name = TextEditingController();
//   TextEditingController tax1No = TextEditingController();
//   TextEditingController tax2Name = TextEditingController();
//   TextEditingController tax2No = TextEditingController();
//   TextEditingController name = TextEditingController();
//   var listEnProductEx = ["add_expiry", "add_manufacturing"],
//       listOnProductEx = ["keep_selling", "stop_selling"],
//       listTimeFomart = ["12", "24"],
//       listDateFomart = ["d/m/Y", "m/d/Y"],
//       listSAM = ["fifo", "lifo"],
//       lstFYSM = [
//         "January",
//         "February",
//         "March",
//         "April",
//         "May",
//         "June",
//         "July",
//         "August",
//         "September",
//         "October",
//         "November",
//         "December"
//       ],
//       listCurrencyPos = ["before", "after"];
//   @override
//   FutureOr<void> afterFirstLayout(BuildContext context) {
//     context.read<ShopInfoCubit>().getInfoBussinessSetting();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: buildAppBar(context),
//         body: buildBody(context),
//         bottomNavigationBar: buildSaveButton(context),
//       ),
//     );
//   }

//   SizedBox buildSaveButton(BuildContext context) {
//     return SizedBox(
//         width: MediaQuery.of(context).size.width * 0.65,
//         height: MediaQuery.of(context).size.height * 0.05,
//         child: BlocBuilder<ShopInfoCubit, ShopInfoState>(
//             builder: (context, state) {
//           final info = state.data?.shopInfo;
//           return ElevatedButton(
//               onPressed: () {
//                 context.read<ShopInfoCubit>().updateBusiness(
//                       //business
//                       name: info!.business?.businessName ?? "",
//                       currencyId: info.business?.currencyId,
//                       startDate: '${info.business?.startDate}',
//                       defaultProfitPercent:
//                           info.business?.defaultProfitPercent ?? 1,
//                       currencySymbolPlacement:
//                           info.business?.currencySymbolPlacement ?? "",
//                       timeZone: info.business?.timezone ?? "",
//                       fyStartMonth: info.business?.financialYearStartMonth ?? 1,
//                       accountingMethod: info.business?.accountingMethod ?? "",
//                       transactionEditDays:
//                           info.business?.transactionEditDays ?? 1,
//                       dateFormat: info.business?.dateFormat ?? "",
//                       timeFormat: '${info.business?.timeFormat}',
//                       //logo
//                       // currencyId: info.business.currency
//                       //tax
//                       // taxNumber1: info.tax?.taxNumber1 ?? "",
//                       // taxLabel1: info.tax?.taxLabel1 ?? "",
//                       // taxNumber2: info.tax?.taxNumber2 ?? "",
//                       // taxLabel2: info.tax?.taxLabel2 ?? "",
//                       // enableInlineTax: info.tax?.enableInlineTax ?? false,
//                       // // //product
//                       // skuPrefix: info.product?.skuPrefix ?? "",
//                       // enableProductExpiry:
//                       //     info.product?.enableProductExpiry ?? false,
//                       // expiryType: info.product?.expiryType ?? "",
//                       // onProductExpiry: info.product?.onProductExpiry ?? "",
//                       // stopSellingBefore:
//                       //     info.product?.stopSellingBefore.toString() ?? "",
//                       // enableBrand: info.product?.enableBrand ?? false,
//                       // enableCategory: info.product?.enableCategory ?? false,
//                       // enableSubCategory:
//                       //     info.product?.enableSubCategory ?? false,
//                       // enablePriceTax: info.product?.enablePriceTax ?? false,
//                       // enableProductWarranty:
//                       //     info.product?.enableProductWarranty ?? false,
//                       // defaultUnit: info.product?.unitId ?? 1,
//                       // enableSubUnits: info.product?.enableSubUnits ?? false,
//                       // enableRacks: info.product?.enableRacks ?? false,
//                       // enableRow: info.product?.enableRow ?? false,
//                       // //CONTACT
//                       // defaultCreditLimit:
//                       //     info.contact?.defaultCreditLimit ?? "",
//                     );
//               },
//               child: Text(
//                 "Lưu",
//                 style: GlobalStyles.robotoBold(context),
//               ));
//         }));
//   }

//   SafeArea buildBody(BuildContext context) {
//     return SafeArea(
//         child: SingleChildScrollView(
//       child: Container(
//         decoration: const BoxDecoration(color: GlobalColors.bgColor),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                   top: 15, bottom: 5, right: 10, left: 10),
//               child: Text(
//                 "business".tr,
//                 style: GlobalStyles.titleHeader(context),
//               ),
//             ),
//             Container(
//                 margin: const EdgeInsets.only(top: 5),
//                 padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
//                 decoration: const BoxDecoration(color: Colors.white),
//                 child: buildbusiness()),
//             Padding(
//               padding: const EdgeInsets.only(
//                   top: 15, bottom: 5, right: 10, left: 10),
//               child: Text(
//                 "tax".tr,
//                 style: GlobalStyles.titleHeader(context),
//               ),
//             ),
//             Container(
//                 margin: const EdgeInsets.only(top: 5),
//                 padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
//                 decoration: const BoxDecoration(color: Colors.white),
//                 child: buildTax()),
//             Padding(
//               padding: const EdgeInsets.only(
//                   top: 15, bottom: 5, right: 10, left: 10),
//               child: Text(
//                 "products".tr,
//                 style: GlobalStyles.titleHeader(context),
//               ),
//             ),
//             Container(
//                 margin: const EdgeInsets.only(top: 5),
//                 padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
//                 decoration: const BoxDecoration(color: Colors.white),
//                 child: buildProduct()),
//             Padding(
//               padding: const EdgeInsets.only(
//                   top: 15, bottom: 5, right: 10, left: 10),
//               child: Text(
//                 "contacts".tr,
//                 style: GlobalStyles.titleHeader(context),
//               ),
//             ),
//             Container(
//                 margin: const EdgeInsets.only(top: 5),
//                 padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
//                 decoration: const BoxDecoration(color: Colors.white),
//                 child: buildContract()),
//           ],
//         ),
//       ),
//     ));
//   }

//   BlocBuilder<ShopInfoCubit, ShopInfoState> buildContract() {
//     return BlocBuilder<ShopInfoCubit, ShopInfoState>(builder: (context, state) {
//       final contractInfo = state.data!.shopInfo?.contact;
//       DefauCreditLimit.text = contractInfo?.defaultCreditLimit ?? "";
//       DefauCreditLimit.selection =
//           TextSelection.collapsed(offset: DefauCreditLimit.text.length);
//       return Column(
//         children: [
//           TextFormField(
//             controller: DefauCreditLimit,
//             onChanged: (value) => contractInfo?.defaultCreditLimit = value,
//             keyboardType: TextInputType.number,
//             inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//             decoration: InputDecoration(
//                 labelText: 'defaultCreditLimit'.tr,
//                 // ignore: prefer_const_constructors
//                 floatingLabelStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: const Color(0xff49545C),
//                     fontSize: 18),
//                 labelStyle: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xff49545C),
//                     fontSize: 18),
//                 enabledBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color(0xffDFDFDF),
//                   ),
//                 ),
//                 focusedBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color.fromARGB(255, 3, 162, 85),
//                   ),
//                 ),
//                 icon: const Icon(Icons.add_circle_outline,
//                     color: Color(0xff434345)),
//                 hintText: "20",
//                 hintStyle:
//                     const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
//                 floatingLabelBehavior: FloatingLabelBehavior.always),
//             cursorColor: const Color.fromARGB(255, 6, 154, 77),
//           ),
//         ],
//       );
//     });
//   }

//   BlocBuilder<ShopInfoCubit, ShopInfoState> buildProduct() {
//     return BlocBuilder<ShopInfoCubit, ShopInfoState>(builder: (context, state) {
//       final infoProduct = state.data!.shopInfo?.product;
//       FrefixSKU.text = infoProduct?.skuPrefix ?? "";
//       FrefixSKU.selection =
//           TextSelection.collapsed(offset: countDay.text.length);
//       countDay.text = infoProduct?.stopSellingBefore.toString() ?? "";
//       countDay.selection =
//           TextSelection.collapsed(offset: countDay.text.length);
//       return Column(children: [
//         TextFormField(
//           controller: FrefixSKU,
//           onChanged: (value) => infoProduct?.skuPrefix = value,
//           decoration: InputDecoration(
//               labelText: "frefixOfSKU".tr + ":",
//               // ignore: prefer_const_constructors
//               floatingLabelStyle: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: const Color(0xff49545C),
//                   fontSize: 18),
//               labelStyle: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xff49545C),
//                   fontSize: 18),
//               enabledBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(
//                   width: 1,
//                   color: Color(0xffDFDFDF),
//                 ),
//               ),
//               focusedBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(
//                   width: 1,
//                   color: Color.fromARGB(255, 3, 162, 85),
//                 ),
//               ),
//               icon: const Icon(Icons.edit, color: Color(0xff434345)),
//               hintText: "inputFrefix".tr,
//               hintStyle:
//                   const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
//               floatingLabelBehavior: FloatingLabelBehavior.always),
//           cursorColor: const Color.fromARGB(255, 6, 154, 77),
//         ),
//         CheckboxListTile(
//             value: infoProduct?.enableProductExpiry ?? false,
//             title: Text(
//               "enable_product_expiry".tr,
//               style: GlobalStyles.titilliumSemiBold(context),
//             ),
//             onChanged: (bool? value) {
//               setState(() {
//                 infoProduct?.enableProductExpiry = value;
//               });
//             }),
//         AnimatedContainer(
//           duration: const Duration(milliseconds: 50),
//           height: (infoProduct?.enableProductExpiry ?? false) ? 200 : 0,
//           color: Colors.white,
//           alignment: Alignment.center,
//           curve: Curves.fastOutSlowIn,
//           child: Column(
//             children: [
//               CustomDropdown(
//                 title: "".tr,
//                 hint: 'Please Selected',
//                 info: infoProduct?.expiryType ?? "add_expiry",
//                 footIcon:
//                     const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
//                 listItem: listEnProductEx,
//                 onChanged: (String? T) {
//                   setState(() {
//                     infoProduct?.expiryType = T!;
//                   });
//                 },
//               ),
//               CustomDropdown(
//                 title: "on_product_expiry".tr,
//                 hint: 'Please Selected',
//                 info: infoProduct?.onProductExpiry ?? "keep_selling",
//                 footIcon:
//                     const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
//                 listItem: listOnProductEx,
//                 onChanged: (String? T) {
//                   setState(() {
//                     infoProduct?.onProductExpiry = T!;
//                   });
//                 },
//               ),
//               AnimatedContainer(
//                 margin: const EdgeInsets.only(
//                   left: 16,
//                 ),
//                 duration: const Duration(milliseconds: 50),
//                 height: infoProduct?.onProductExpiry == "stop_selling" ? 50 : 0,
//                 color: Colors.white,
//                 alignment: Alignment.center,
//                 curve: Curves.fastOutSlowIn,
//                 child: TextFormField(
//                   controller: countDay,
//                   keyboardType: TextInputType.number,
//                   inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                   decoration: const InputDecoration(
//                       labelText: "",
//                       // ignore: prefer_const_constructors
//                       floatingLabelStyle: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xff49545C),
//                           fontSize: 18),
//                       labelStyle: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xff49545C),
//                           fontSize: 18),
//                       enabledBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           width: 1,
//                           color: Color(0xffDFDFDF),
//                         ),
//                       ),
//                       focusedBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           width: 1,
//                           color: Color.fromARGB(255, 3, 162, 85),
//                         ),
//                       ),
//                       hintText: "0",
//                       hintStyle:
//                           TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
//                       floatingLabelBehavior: FloatingLabelBehavior.always),
//                   cursorColor: const Color.fromARGB(255, 6, 154, 77),
//                 ),
//               )
//             ],
//           ),
//         ),
//         CheckboxListTile(
//             value: infoProduct?.enableBrand ?? false,
//             title: Text(
//               "enableBranch".tr,
//               style: GlobalStyles.titilliumSemiBold(context),
//             ),
//             onChanged: (bool? value) {
//               setState(() {
//                 infoProduct?.enableBrand = value!;
//               });
//             }),
//         CheckboxListTile(
//             value: infoProduct?.enablePriceTax ?? false,
//             title: Text(
//               "applyTaxOnPrice".tr,
//               style: GlobalStyles.titilliumSemiBold(context),
//             ),
//             onChanged: (bool? value) {
//               setState(() {
//                 infoProduct?.enablePriceTax = value!;
//               });
//             }),
//         CheckboxListTile(
//             value: infoProduct?.enableRacks ?? false,
//             title: Text(
//               "enableRacks".tr,
//               style: GlobalStyles.titilliumSemiBold(context),
//             ),
//             onChanged: (bool? value) {
//               setState(() {
//                 infoProduct?.enableRacks = value!;
//               });
//             }),
//         CheckboxListTile(
//             value: infoProduct?.enableProductWarranty ?? false,
//             title: Text(
//               "enableWarranty".tr,
//               style: GlobalStyles.titilliumSemiBold(context),
//             ),
//             onChanged: (bool? value) {
//               setState(() {
//                 infoProduct?.enableProductWarranty = value!;
//               });
//             }),
//         CheckboxListTile(
//             value: infoProduct?.enableSubCategory ?? false,
//             title: Text(
//               "enableCategory".tr,
//               style: GlobalStyles.titilliumSemiBold(context),
//             ),
//             onChanged: (bool? value) {
//               setState(() {
//                 infoProduct?.enableSubCategory = value!;
//               });
//             }),
//         CustomTextField(
//           title: 'defaultUnit'.tr,
//           hint: 'choose'.tr + " " + 'defaultUnit'.tr,
//           info: infoProduct?.defaultUnit,
//           isReadOnly: true,
//           headIcon: const Icon(Icons.attach_money, color: Color(0xff434345)),
//           footIcon: const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
//           onTap: () async {
//             Data D = (await showModalBottomSheet<Data>(
//                 isScrollControlled: true,
//                 shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(10.0),
//                       topLeft: Radius.circular(10.0)),
//                 ),
//                 context: context,
//                 builder: (BuildContext context) =>
//                     DefaultUnitPicker.provider()))!;
//             setState(() {
//               infoProduct?.defaultUnit =
//                   (D.actualName ?? "") + " (" + (D.shortName ?? "") + ")";
//               // infoProduct?.unitId = D.id;
//             });
//           },
//         ),
//         CheckboxListTile(
//             value: infoProduct?.enableRow ?? false,
//             title: Text(
//               "enableRow".tr,
//               style: GlobalStyles.titilliumSemiBold(context),
//             ),
//             onChanged: (bool? value) {
//               setState(() {
//                 infoProduct?.enableRow = value!;
//               });
//             }),
//         CheckboxListTile(
//             value: infoProduct?.enableSubUnits ?? false,
//             title: Text(
//               "enableSubUnit".tr,
//               style: GlobalStyles.titilliumSemiBold(context),
//             ),
//             onChanged: (bool? value) {
//               setState(() {
//                 infoProduct?.enableSubUnits = value!;
//               });
//             }),
//         CheckboxListTile(
//             value: infoProduct?.enablePosition ?? false,
//             title: Text(
//               "enablePosition".tr,
//               style: GlobalStyles.titilliumSemiBold(context),
//             ),
//             onChanged: (bool? value) {
//               setState(() {
//                 infoProduct?.enablePosition = value!;
//               });
//             }),
//       ]);
//     });
//   }

//   BlocBuilder<ShopInfoCubit, ShopInfoState> buildTax() {
//     return BlocBuilder<ShopInfoCubit, ShopInfoState>(builder: (context, state) {
//       final taxInfo = state.data!.shopInfo?.tax;
//       tax1Name.text = taxInfo?.taxLabel1 ?? "";
//       tax1Name.selection =
//           TextSelection.collapsed(offset: tax1Name.text.length);
//       tax2Name.text = taxInfo?.taxLabel2 ?? "";
//       tax2Name.selection =
//           TextSelection.collapsed(offset: tax2Name.text.length);
//       tax1No.text = taxInfo?.taxNumber1 ?? "";
//       tax1No.selection = TextSelection.collapsed(offset: tax1No.text.length);
//       tax2No.text = taxInfo?.taxNumber2 ?? "";
//       tax2No.selection = TextSelection.collapsed(offset: tax2No.text.length);
//       return Column(
//         children: [
//           TextFormField(
//             controller: tax1Name,
//             onChanged: (value) => taxInfo?.taxLabel1 = value,
//             decoration: InputDecoration(
//                 labelText: 'taxName'.tr + " 1",
//                 // ignore: prefer_const_constructors
//                 floatingLabelStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: const Color(0xff49545C),
//                     fontSize: 18),
//                 labelStyle: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xff49545C),
//                     fontSize: 18),
//                 enabledBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color(0xffDFDFDF),
//                   ),
//                 ),
//                 focusedBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color.fromARGB(255, 3, 162, 85),
//                   ),
//                 ),
//                 icon: const Icon(Icons.sort_by_alpha, color: Color(0xff434345)),
//                 hintText: "GST/ VAT/ Other",
//                 hintStyle:
//                     const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
//                 floatingLabelBehavior: FloatingLabelBehavior.always),
//             cursorColor: const Color.fromARGB(255, 6, 154, 77),
//           ),
//           TextFormField(
//             controller: tax1No,
//             onChanged: (value) => taxInfo?.taxNumber1 = value,
//             decoration: InputDecoration(
//                 labelText: 'tax_number'.tr + " 1",
//                 // ignore: prefer_const_constructors
//                 floatingLabelStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: const Color(0xff49545C),
//                     fontSize: 18),
//                 labelStyle: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xff49545C),
//                     fontSize: 18),
//                 enabledBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color(0xffDFDFDF),
//                   ),
//                 ),
//                 focusedBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color.fromARGB(255, 3, 162, 85),
//                   ),
//                 ),
//                 icon: const Icon(Icons.pin, color: Color(0xff434345)),
//                 hintText: "",
//                 hintStyle:
//                     const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
//                 floatingLabelBehavior: FloatingLabelBehavior.always),
//             cursorColor: const Color.fromARGB(255, 6, 154, 77),
//           ),
//           TextFormField(
//             controller: tax2Name,
//             onChanged: (value) => taxInfo?.taxLabel2 = value,
//             decoration: InputDecoration(
//                 labelText: 'taxName'.tr + " 2",
//                 // ignore: prefer_const_constructors
//                 floatingLabelStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: const Color(0xff49545C),
//                     fontSize: 18),
//                 labelStyle: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xff49545C),
//                     fontSize: 18),
//                 enabledBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color(0xffDFDFDF),
//                   ),
//                 ),
//                 focusedBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color.fromARGB(255, 3, 162, 85),
//                   ),
//                 ),
//                 icon: const Icon(Icons.sort_by_alpha, color: Color(0xff434345)),
//                 hintText: "GST/ VAT/ Other",
//                 hintStyle:
//                     const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
//                 floatingLabelBehavior: FloatingLabelBehavior.always),
//             cursorColor: const Color.fromARGB(255, 6, 154, 77),
//           ),
//           TextFormField(
//             controller: tax2No,
//             onChanged: (value) => taxInfo?.taxNumber2 = value,
//             decoration: InputDecoration(
//                 labelText: 'tax_number'.tr + " 2",
//                 // ignore: prefer_const_constructors
//                 floatingLabelStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: const Color(0xff49545C),
//                     fontSize: 18),
//                 labelStyle: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xff49545C),
//                     fontSize: 18),
//                 enabledBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color(0xffDFDFDF),
//                   ),
//                 ),
//                 focusedBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color.fromARGB(255, 3, 162, 85),
//                   ),
//                 ),
//                 icon: const Icon(Icons.pin, color: Color(0xff434345)),
//                 hintText: "",
//                 hintStyle:
//                     const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
//                 floatingLabelBehavior: FloatingLabelBehavior.always),
//             cursorColor: const Color.fromARGB(255, 6, 154, 77),
//           ),
//           CheckboxListTile(
//               value: taxInfo?.enableInlineTax ?? false,
//               title: Text(
//                 "EnableInlineTax".tr,
//                 style: GlobalStyles.titilliumSemiBold(context),
//               ),
//               onChanged: (bool? value) {
//                 setState(() {
//                   taxInfo?.enableInlineTax = value!;
//                 });
//               }),
//         ],
//       );
//     });
//   }

//   BlocBuilder<ShopInfoCubit, ShopInfoState> buildbusiness() {
//     return BlocBuilder<ShopInfoCubit, ShopInfoState>(builder: (context, state) {
//       final listInfoBussiness = state.data!.shopInfo?.business;
//       name.text = listInfoBussiness?.businessName ?? "";
//       name.selection = TextSelection.collapsed(offset: name.text.length);
//       profitPercent.text =
//           listInfoBussiness?.defaultProfitPercent.toString() ?? "";
//       profitPercent.selection =
//           TextSelection.collapsed(offset: profitPercent.text.length);
//       intFYSM = listInfoBussiness?.financialYearStartMonth ?? 1;
//       switch (intFYSM) {
//         case 1:
//           FYSM = "January";
//           break;
//         case 2:
//           FYSM = "February";
//           break;
//         case 3:
//           FYSM = "March";
//           break;
//         case 4:
//           FYSM = "April";
//           break;
//         case 5:
//           FYSM = "May";
//           break;
//         case 6:
//           FYSM = "June";
//           break;
//         case 7:
//           FYSM = "July";
//           break;
//         case 8:
//           FYSM = "August";
//           break;
//         case 9:
//           FYSM = "September";
//           break;
//         case 10:
//           FYSM = "October";
//           break;
//         case 11:
//           FYSM = "November";
//           break;
//         case 12:
//           FYSM = "December";
//           break;
//       }
//       editTransactionDate.text =
//           listInfoBussiness?.transactionEditDays.toString() ?? "";
//       editTransactionDate.selection =
//           TextSelection.collapsed(offset: editTransactionDate.text.length);
//       return Column(
//         children: [
//           TextFormField(
//             controller: name,
//             onChanged: (value) => listInfoBussiness?.businessName = value,
//             decoration: InputDecoration(
//                 labelText: 'business_name'.tr,
//                 // ignore: prefer_const_constructors
//                 floatingLabelStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: const Color(0xff49545C),
//                     fontSize: 18),
//                 labelStyle: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xff49545C),
//                     fontSize: 18),
//                 enabledBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color(0xffDFDFDF),
//                   ),
//                 ),
//                 focusedBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color.fromARGB(255, 3, 162, 85),
//                   ),
//                 ),
//                 icon: const Icon(Icons.home_work, color: Color(0xff434345)),
//                 hintText: 'Ví dụ: Công ty TNHH ABC',
//                 hintStyle:
//                     const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
//                 floatingLabelBehavior: FloatingLabelBehavior.always),
//             cursorColor: const Color.fromARGB(255, 6, 154, 77),
//           ),
//           CustomTextField(
//             title: 'startDate'.tr,
//             hint: '01/01/1970',
//             info: listInfoBussiness?.startDate.toString(),
//             isReadOnly: true,
//             headIcon:
//                 const Icon(Icons.calendar_month, color: Color(0xff434345)),
//             footIcon:
//                 const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
//             onTap: () async {
//               String T = (await showModalBottomSheet<String>(
//                   shape: const RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(10.0),
//                         topLeft: Radius.circular(10.0)),
//                   ),
//                   context: context,
//                   builder: (BuildContext context) => datePicker()))!;
//               setState(() {
//                 // listInfoBussiness?.startDate = T.substring(1,11);
//               });
//             },
//           ),
//           TextFormField(
//             controller: profitPercent,
//             onChanged: (value) =>
//                 listInfoBussiness?.defaultProfitPercent = int.parse(value),
//             keyboardType: TextInputType.number,
//             inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//             decoration: InputDecoration(
//                 labelText: 'profit_percent'.tr + " " + 'defaults'.tr,
//                 // ignore: prefer_const_constructors
//                 floatingLabelStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: const Color(0xff49545C),
//                     fontSize: 18),
//                 labelStyle: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xff49545C),
//                     fontSize: 18),
//                 enabledBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color(0xffDFDFDF),
//                   ),
//                 ),
//                 focusedBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color.fromARGB(255, 3, 162, 85),
//                   ),
//                 ),
//                 icon: const Icon(Icons.add_circle_outline,
//                     color: Color(0xff434345)),
//                 hintText: "20",
//                 hintStyle:
//                     const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
//                 floatingLabelBehavior: FloatingLabelBehavior.always),
//             cursorColor: const Color.fromARGB(255, 6, 154, 77),
//           ),
//           CustomTextField(
//             title: 'currency'.tr,
//             hint: 'Chọn đơn vị tiền tệ',
//             info: listInfoBussiness?.currency,
//             isReadOnly: true,
//             headIcon:
//                 const Icon(Icons.monetization_on, color: Color(0xff434345)),
//             footIcon:
//                 const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
//             onTap: () async {
//               Currency O = (await showModalBottomSheet<Currency>(
//                   isScrollControlled: true,
//                   shape: const RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(10.0),
//                         topLeft: Radius.circular(10.0)),
//                   ),
//                   context: context,
//                   builder: (BuildContext context) =>
//                       CurencyPicker.provider()))!;
//               setState(() {
//                 listInfoBussiness?.currency = O.info!;
//                 listInfoBussiness?.currencyId = O.id!;
//               });
//             },
//           ),
//           CustomDropdown(
//             title: "currencySymbol".tr,
//             hint: 'Please Selected',
//             info: listInfoBussiness?.currencySymbolPlacement ?? "before",
//             headIcon: const Icon(
//               Icons.attach_money,
//               color: Color(0xff434345),
//             ),
//             footIcon:
//                 const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
//             listItem: listCurrencyPos,
//             onChanged: (String? T) {
//               listInfoBussiness?.currencySymbolPlacement = T!;
//             },
//           ),
//           CustomTextField(
//             title: 'timeZone'.tr,
//             hint: 'Chọn múi giờ',
//             info: listInfoBussiness?.timezone,
//             isReadOnly: true,
//             headIcon: const Icon(Icons.access_time, color: Color(0xff434345)),
//             footIcon:
//                 const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
//             onTap: () async {
//               String T = (await showModalBottomSheet<String>(
//                   isScrollControlled: true,
//                   shape: const RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(10.0),
//                         topLeft: Radius.circular(10.0)),
//                   ),
//                   context: context,
//                   builder: (BuildContext context) =>
//                       TimeZonePicker.provider()))!;
//               setState(() => listInfoBussiness?.timezone = T);
//             },
//           ),
//           CustomTextField(
//             title: 'uploadLogo'.tr,
//             hint: "",
//             info: listInfoBussiness?.logo,
//             isReadOnly: true,
//             headIcon: const Icon(Icons.image, color: Color(0xff434345)),
//             footIcon: const Icon(Icons.folder, color: Color(0xff434345)),
//             onTap: () async {
//               await BlocProvider.of<ShopInfoCubit>(context)
//                   .selectImage(ImageSource.gallery);
//               await BlocProvider.of<ShopInfoCubit>(context).updateLogo();
//             },
//           ),
//           CustomDropdown(
//             title: "FYSM".tr,
//             hint: 'Please Selected',
//             info: FYSM!,
//             headIcon: const Icon(
//               Icons.calendar_view_month,
//               color: Color(0xff434345),
//             ),
//             footIcon:
//                 const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
//             listItem: lstFYSM,
//             onChanged: (String? T) {
//               FYSM = T!;
//               switch (FYSM) {
//                 case "January":
//                   listInfoBussiness?.financialYearStartMonth = 1;
//                   break;
//                 case "February":
//                   listInfoBussiness?.financialYearStartMonth = 2;
//                   break;
//                 case "March":
//                   listInfoBussiness?.financialYearStartMonth = 3;
//                   break;
//                 case "April":
//                   listInfoBussiness?.financialYearStartMonth = 4;
//                   break;
//                 case "May":
//                   listInfoBussiness?.financialYearStartMonth = 5;
//                   break;
//                 case "June":
//                   listInfoBussiness?.financialYearStartMonth = 6;
//                   break;
//                 case "July":
//                   listInfoBussiness?.financialYearStartMonth = 7;
//                   break;
//                 case "August":
//                   listInfoBussiness?.financialYearStartMonth = 8;
//                   break;
//                 case "September":
//                   listInfoBussiness?.financialYearStartMonth = 9;
//                   break;
//                 case "October":
//                   listInfoBussiness?.financialYearStartMonth = 10;
//                   break;
//                 case "November":
//                   listInfoBussiness?.financialYearStartMonth = 11;
//                   break;
//                 case "December":
//                   listInfoBussiness?.financialYearStartMonth = 12;
//                   break;
//               }
//             },
//           ),
//           CustomDropdown(
//             title: "SAM".tr,
//             hint: 'Please Selected',
//             info: listInfoBussiness?.accountingMethod ?? "fifo",
//             headIcon: const Icon(
//               Icons.sort,
//               color: Color(0xff434345),
//             ),
//             footIcon:
//                 const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
//             listItem: listSAM,
//             onChanged: (String? T) {
//               listInfoBussiness?.accountingMethod = T!;
//             },
//           ),
//           TextFormField(
//             controller: editTransactionDate,
//             onChanged: (value) =>
//                 listInfoBussiness?.transactionEditDays = int.parse(value),
//             keyboardType: TextInputType.number,
//             inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//             decoration: InputDecoration(
//                 labelText: "editTransactionDate".tr,
//                 // ignore: prefer_const_constructors
//                 floatingLabelStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: const Color(0xff49545C),
//                     fontSize: 18),
//                 labelStyle: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xff49545C),
//                     fontSize: 18),
//                 enabledBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color(0xffDFDFDF),
//                   ),
//                 ),
//                 focusedBorder: const UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 1,
//                     color: Color.fromARGB(255, 3, 162, 85),
//                   ),
//                 ),
//                 icon: const Icon(Icons.edit_note, color: Color(0xff434345)),
//                 hintText: "Nhập ngày",
//                 hintStyle:
//                     const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
//                 floatingLabelBehavior: FloatingLabelBehavior.always),
//             cursorColor: const Color.fromARGB(255, 6, 154, 77),
//           ),
//           CustomDropdown(
//             title: "fomartDate".tr,
//             hint: 'Please Selected',
//             info: listInfoBussiness?.dateFormat ?? "d/m/Y",
//             headIcon: const Icon(
//               Icons.calendar_view_day,
//               color: Color(0xff434345),
//             ),
//             footIcon:
//                 const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
//             listItem: listDateFomart,
//             onChanged: (String? T) {
//               listInfoBussiness?.dateFormat = T!;
//             },
//           ),
//           CustomDropdown(
//             title: "fomartTime".tr,
//             hint: 'Please Selected',
//             info: listInfoBussiness?.timeFormat ?? "12",
//             headIcon: const Icon(
//               Icons.access_time,
//               color: Color(0xff434345),
//             ),
//             footIcon:
//                 const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
//             listItem: listTimeFomart,
//             onChanged: (String? T) {
//               listInfoBussiness?.timeFormat = T!;
//             },
//           ),
//         ],
//       );
//     });
//   }

//   MyAppBar buildAppBar(BuildContext context) {
//     return MyAppBar(
//       isShowBackButton: true,
//       backgroundColor: GlobalColors.bgWebColor,
//       title: Text(
//         'settings'.tr + " " + "business".tr,
//         style: GlobalStyles.titleHeader(context).copyWith(
//             fontSize: 18,
//             color: GlobalColors.primaryWebColor,
//             fontWeight: FontWeight.w500),
//       ),
//     );
//   }
// }
