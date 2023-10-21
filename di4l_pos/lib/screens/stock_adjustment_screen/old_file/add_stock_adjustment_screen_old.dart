// import 'dart:async';

// import 'package:after_layout/after_layout.dart';
// import 'package:di4l_pos/common/dimensions.dart';
// import 'package:di4l_pos/common/extensions/string_extension.dart';
// import 'package:di4l_pos/common/global_colors.dart';
// import 'package:di4l_pos/common/global_styles.dart';
// import 'package:di4l_pos/common/ui_helpers.dart';
// import 'package:di4l_pos/enums/select_model_ad_stock_adjustment.dart';
// import 'package:di4l_pos/models/business_location/response/business_location.dart';
// import 'package:di4l_pos/models/products/response/product_response.dart';
// import 'package:di4l_pos/models/stock_adjustment/request/add_stock_adjustment_request.dart';
// import 'package:di4l_pos/models/stock_adjustment/response/stock_adjustment_response.dart';
// import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
// import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
// import 'package:di4l_pos/screens/stock_adjustment_screen/cubit/add_stock_adjustment_cubit.dart';
// import 'package:di4l_pos/screens/stock_adjustment_screen/widget/select_product_dialog.dart';
// import 'package:di4l_pos/widgets/custom_dropdown.dart';
// import 'package:di4l_pos/widgets/custom_textfield.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';

// class AddStockAdjustmentScreen extends StatefulWidget {
//   final StockAdjustmentData? stockAdjustmentData;
//   final ProductsRequest? products;
//   final BusinessLocation? businessLocation;
//   const AddStockAdjustmentScreen(
//       {Key? key,
//       this.stockAdjustmentData,
//       this.products,
//       this.businessLocation})
//       : super(key: key);

//   static MultiBlocProvider provider(
//       {StockAdjustmentData? stockAdjustmentData, Product? product}) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider<AddStockAdjustmentCubit>(
//           create: (context) => AddStockAdjustmentCubit(),
//         ),
//         BlocProvider<ProductsCubit>(
//           create: (BuildContext context) => ProductsCubit(),
//         ),
//         BlocProvider<BusinessCubit>(
//           create: (context) => BusinessCubit(),
//         ),
//       ],
//       child: AddStockAdjustmentScreen(
//         stockAdjustmentData: stockAdjustmentData,
//       ),
//     );
//   }

//   @override
//   // ignore: library_private_types_in_public_api
//   _AddStockAdjustmentScreenState createState() =>
//       _AddStockAdjustmentScreenState();
// }

// class _AddStockAdjustmentScreenState extends State<AddStockAdjustmentScreen>
//     with AfterLayoutMixin<AddStockAdjustmentScreen> {
//   int? _locationId;
//   int? _transferLocationId;
//   final TextEditingController _txttotalAmountRecovered =
//       TextEditingController();
//   final TextEditingController _txttransactionDate = TextEditingController();
//   final TextEditingController _txtrefNo = TextEditingController();
//   final TextEditingController _txtprice = TextEditingController();
//   final TextEditingController _txtadditionalNotes = TextEditingController();
//   final TextEditingController _txtquantity = TextEditingController(
//     text: (1).toString(),
//   );

//   double calculateProductTotal() {
//     double quantity = double.tryParse(_txtquantity.text) ?? 0.0;
//     double price = double.tryParse(_txtprice.text) ?? 0.0;
//     return quantity * price;
//   }

//   String selectedOptionType = 'please_select'.tr;
//   Product? _productSelected;
//   AddStockAdjustmentRequest? _addStockAdjustment;

//   final GlobalKey<FormState> _formKey = GlobalKey();
//   final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
//   @override
//   FutureOr<void> afterFirstLayout(BuildContext context) {
//     _txttotalAmountRecovered.text =
//         widget.stockAdjustmentData?.totalAmountRecovered ?? '';
//     selectedOptionType = widget.stockAdjustmentData?.adjustmentType ?? '';
//     _txtrefNo.text = widget.stockAdjustmentData?.refNo ?? '';
//     _txtadditionalNotes.text =
//         widget.stockAdjustmentData?.additionalNotes ?? '';
//     context.read<ProductsCubit>().getProducts();
//     context.read<BusinessCubit>().getBusinesss();
//   }

//   @override
//   void dispose() {
//     _txttotalAmountRecovered.dispose();
//     selectedOptionType;
//     _txtrefNo.dispose();
//     _txttransactionDate.dispose();
//     _txtadditionalNotes.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // ignore: no_leading_underscores_for_local_identifiers
//     Future<void> _selectDate(BuildContext context) async {
//       final DateTime? picked = await showDatePicker(
//         context: context,
//         initialDate: DateTime.now(),
//         firstDate: DateTime(2000, 8),
//         lastDate: DateTime(2101),
//       );
//       if (picked != null) {
//         // ignore: use_build_context_synchronously
//         final TimeOfDay? pickedTime = await showTimePicker(
//           context: context,
//           initialTime: TimeOfDay.now(),
//         );
//         if (pickedTime != null) {
//           setState(() {
//             final DateTime combinedDate = DateTime(
//               picked.year,
//               picked.month,
//               picked.day,
//               pickedTime.hour,
//               pickedTime.minute,
//             );
//             final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
//             final String formattedDate = formatter.format(combinedDate);
//             _txttransactionDate.text = formattedDate;
//           });
//         }
//       }
//     }

//     double productTotal = calculateProductTotal();
//     return BlocListener<AddStockAdjustmentCubit, AddStockAdjustmentState>(
//       listener: (context, state) {
//         if (state.data!.error != '') {
//           if (state.data!.error.contains('Required')) {
//             UIHelpers.showSnackBar(
//                 message: state.data!.error, type: SnackBarType.ERROR);
//           } else {
//             UIHelpers.showDialogDefaultBloc(
//               status: state.data!.status,
//               text: state.data!.error,
//             );
//           }
//         }
//       },
//       child: Scaffold(
//         key: _globalKey,
//         appBar: AppBar(
//           iconTheme: const IconThemeData(color: Colors.black, size: 23),
//           elevation: 0.5,
//           backgroundColor: Colors.white,
//           automaticallyImplyLeading: true,
//           title: Padding(
//             padding: const EdgeInsets.only(left: 30),
//             child: Text(
//               'add_stock_adjustment'.tr,
//               style: GlobalStyles.normalStyle.copyWith(
//                 color: GlobalColors.primaryWebColor,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Container(
//             color: GlobalColors.whiteColor,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 18, right: 18),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: BlocBuilder<BusinessCubit, BusinessState>(
//                           builder: (context, state) {
//                             state.data!.business == null
//                                 ? _locationId = 1
//                                 : _locationId = state.data!.business!.id!;

//                             final value = state.data!.business ??
//                                 state.data!.businesss.firstWhereOrNull((item) =>
//                                     item.id ==
//                                     widget.businessLocation?.businessId);

//                             return CustomDropDownWithT<BusinessLocation>(
//                               labelText: 'business_location'.tr,
//                               items: state.data!.businesss
//                                   .map<DropdownMenuItem<BusinessLocation>>(
//                                       (BusinessLocation value) =>
//                                           DropdownMenuItem<BusinessLocation>(
//                                             value: value,
//                                             child: Text(value.name!),
//                                           ))
//                                   .toList(),
//                               value: value,
//                               onChanged: (dynamic value) => _globalKey
//                                   .currentContext!
//                                   .read<BusinessCubit>()
//                                   .getBusiness(value),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 18, right: 18),
//                   child: Row(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             'adjustment_type'.tr,
//                             style: const TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           const Text(
//                             '*',
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: GlobalColors.errorColor,
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         width: 5,
//                       ),
//                       const Icon(
//                         Icons.info,
//                         color: GlobalColors.appBar4,
//                       ),
//                       const SizedBox(
//                         width: 5,
//                       ),
//                       DropdownButton<String>(
//                         value: selectedOptionType,
//                         onChanged: (newValue) {
//                           setState(() {
//                             selectedOptionType = newValue!;
//                           });
//                         },
//                         items: <String>[
//                           'please_select'.tr,
//                           'Normal',
//                           'Abnormal',
//                         ].map((String value) {
//                           return DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(
//                               value.toString(),
//                               style: const TextStyle(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                   color: GlobalColors.primaryColor),
//                             ),
//                           );
//                         }).toList(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 18, top: 10),
//                   child: Text(
//                     'date'.tr,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                       left: 18, top: 8, bottom: 8, right: 18),
//                   child: TextField(
//                     controller: _txttransactionDate,
//                     onTap: () => _selectDate(context),
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: GlobalColors.kDarkWhite,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                         borderSide: BorderSide.none,
//                       ),
//                       prefixIcon: const Icon(Icons.date_range),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 18, top: 10),
//                   child: Text(
//                     'reference_no'.tr,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.only(left: 18, bottom: 8, right: 18),
//                   child: TextFormField(
//                     controller: _txtrefNo,
//                     decoration: InputDecoration(
//                       hintText: 'reference_no'.tr,
//                       contentPadding: const EdgeInsets.symmetric(
//                         vertical: 16.0,
//                         horizontal: 10.0,
//                       ),
//                       filled: true,
//                       fillColor: GlobalColors.whiteColor,
//                     ),
//                     style: const TextStyle(
//                       fontSize: 16.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 18, top: 10),
//                   child: Text(
//                     'products'.tr,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(18),
//                   child: BlocBuilder<ProductsCubit, ProductsState>(
//                     builder: (context, state) {
//                       _txtprice.text = (state.data!.productSelected != null
//                               ? state.data!.productSelected!.productVariations
//                                   ?.elementAt(0)
//                                   ?.variations
//                                   ?.elementAt(0)
//                                   ?.defaultPurchasePrice
//                               : '')
//                           .toString()
//                           .formatMoney();
//                       return Column(
//                         children: [
//                           state.data!.productSelected != null
//                               ? Container(
//                                   decoration: BoxDecoration(
//                                     border: Border.all(
//                                       width: 1,
//                                       color: Colors.grey,
//                                     ),
//                                     borderRadius: const BorderRadius.all(
//                                       Radius.circular(5.0),
//                                     ),
//                                   ),
//                                   child: Column(
//                                     children: [
//                                       InkWell(
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             Row(
//                                               children: [
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(8.0),
//                                                   child: Container(
//                                                     decoration: BoxDecoration(
//                                                       border: Border.all(
//                                                         width: 1,
//                                                         color: Colors.grey,
//                                                       ),
//                                                       borderRadius:
//                                                           const BorderRadius
//                                                               .all(
//                                                         Radius.circular(5.0),
//                                                       ),
//                                                     ),
//                                                     width: Get.width * 0.13,
//                                                     height: Get.width * 0.13,
//                                                     child: Padding(
//                                                       padding: const EdgeInsets
//                                                               .all(
//                                                           Dimensions
//                                                               .MARGIN_SIZE_SMALL),
//                                                       child: SizedBox(
//                                                         width: Get.width * 0.07,
//                                                         child: Image.asset(
//                                                           "assets/images/food.jpg",
//                                                           color: Colors.grey,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Column(
//                                                   crossAxisAlignment:
//                                                       CrossAxisAlignment.start,
//                                                   children: [
//                                                     Text(
//                                                       state.data!
//                                                           .productSelected!.name
//                                                           .toString(),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ],
//                                             ),
//                                             Padding(
//                                               padding:
//                                                   const EdgeInsets.all(8.0),
//                                               child: Row(
//                                                 children: const [
//                                                   SizedBox(
//                                                     width: Dimensions
//                                                         .PADDING_SIZE_SMALL,
//                                                   ),
//                                                   Icon(
//                                                     Icons.arrow_forward_ios,
//                                                     size: 18,
//                                                   )
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         onTap: () {
//                                           showModalBottomSheet(
//                                             isScrollControlled: true,
//                                             shape: const RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.only(
//                                                 topLeft: Radius.circular(10),
//                                                 topRight: Radius.circular(10),
//                                               ),
//                                             ),
//                                             context: context,
//                                             builder: (context) => BlocProvider(
//                                               create: (context) =>
//                                                   ProductsCubit(),
//                                               child: SelectProductDialogWidget(
//                                                 selectModeAddStockAdjustment:
//                                                     SelectModeAddStockAdjustment
//                                                         .product,
//                                                 isShowButton: true,
//                                                 selectedItems:
//                                                     state.data!.product != null
//                                                         ? [state.data!.product]
//                                                         : [],
//                                                 onTap: (List<dynamic> p) {
//                                                   // Update the parameter type to List<dynamic>
//                                                   _globalKey.currentContext!
//                                                       .read<ProductsCubit>()
//                                                       .productSelected(p
//                                                               .isNotEmpty
//                                                           ? p[0]
//                                                           : null); // Access the first item if the list is not empty
//                                                   _productSelected = p
//                                                           .isNotEmpty
//                                                       ? p[0]
//                                                       : null; // Assign the first item if the list is not empty
//                                                 },
//                                               ),
//                                             ),
//                                           );
//                                         },
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: CustomTextField(
//                                           controller: _txtquantity,
//                                           hintText: '1.000'.tr,
//                                           hintLabel: 'Quantity'.tr,
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: CustomTextField(
//                                           controller: _txtprice,
//                                           hintText: state.data!.productSelected!
//                                               .productVariations
//                                               ?.elementAt(0)
//                                               ?.variations
//                                               ?.elementAt(0)
//                                               ?.defaultPurchasePrice
//                                               .toString()
//                                               .formatMoney(),
//                                           hintLabel: 'Unit Price'.tr,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 )
//                               : const SizedBox(),
//                           const SizedBox(
//                             height: Dimensions.PADDING_SIZE_SMALL,
//                           ),
//                           ElevatedButton(
//                             onPressed: () {
//                               showModalBottomSheet(
//                                 isScrollControlled: true,
//                                 shape: const RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(10),
//                                     topRight: Radius.circular(10),
//                                   ),
//                                 ),
//                                 context: context,
//                                 builder: (context) => BlocProvider(
//                                   create: (context) => ProductsCubit(),
//                                   child: SelectProductDialogWidget(
//                                     selectModeAddStockAdjustment:
//                                         SelectModeAddStockAdjustment.product,
//                                     isShowButton: true,
//                                     selectedItems: state.data!.product != null
//                                         ? [state.data!.product]
//                                         : [],
//                                     onTap: (List<dynamic> p) {
//                                       // Update the parameter type to List<dynamic>
//                                       _globalKey.currentContext!
//                                           .read<ProductsCubit>()
//                                           .productSelected(p.isNotEmpty
//                                               ? p[0]
//                                               : null); // Access the first item if the list is not empty
//                                       _productSelected = p.isNotEmpty
//                                           ? p[0]
//                                           : null; // Assign the first item if the list is not empty
//                                     },
//                                   ),
//                                 ),
//                               );
//                             },
//                             child: SizedBox(
//                               width: Get.width,
//                               height: Get.height * 0.06,
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   const Icon(Icons.add),
//                                   const SizedBox(
//                                       width:
//                                           Dimensions.PADDING_SIZE_EXTRA_SMALL),
//                                   Text('add'.tr),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       );
//                     },
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     left: 18,
//                     right: 10,
//                     top: 10,
//                   ),
//                   child: Row(
//                     children: [
//                       Text(
//                         'total_amount_recovered'.tr,
//                         style: const TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       const Icon(
//                         Icons.info,
//                         color: GlobalColors.appBar4,
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.only(left: 18, bottom: 8, right: 18),
//                   child: TextFormField(
//                     controller: _txttotalAmountRecovered,
//                     decoration: InputDecoration(
//                       hintText: 'total_amount_recovered'.tr,
//                       contentPadding: const EdgeInsets.symmetric(
//                         vertical: 16.0,
//                         horizontal: 10.0,
//                       ),
//                       filled: true,
//                       fillColor: GlobalColors.whiteColor,
//                     ),
//                     style: const TextStyle(
//                       fontSize: 16.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 18),
//                   child: Text(
//                     'reason'.tr,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.only(left: 18, bottom: 8, right: 18),
//                   child: TextFormField(
//                     controller: _txtadditionalNotes,
//                     decoration: InputDecoration(
//                       hintText: 'reason'.tr,
//                       contentPadding: const EdgeInsets.symmetric(
//                         vertical: 16.0,
//                         horizontal: 10.0,
//                       ),
//                       filled: true,
//                       fillColor: GlobalColors.whiteColor,
//                     ),
//                     style: const TextStyle(
//                       fontSize: 16.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Spacer(),
//                       ElevatedButton(
//                         onPressed: () {
//                           List<ProductsRequest> pr = [];
//                           ProductsRequest productsRequest = ProductsRequest(
//                             lotNoLineId: '',
//                             productId: _productSelected?.id,
//                             subUnitId: _productSelected?.unit?.id,
//                             enableStock: _productSelected?.enableStock,
//                             price: _txtprice.text,
//                             productUnitId: _productSelected?.unit?.id,
//                             quantity: _txtquantity.text,
//                             unitPrice: _txtprice.text,
//                             variationId: _productSelected?.productVariations
//                                 ?.elementAt(0)
//                                 ?.variations
//                                 ?.elementAt(0)
//                                 ?.id,
//                           );
//                           pr.add(productsRequest);

//                           _globalKey.currentContext!
//                               .read<AddStockAdjustmentCubit>()
//                               .addStockAdjustment(
//                                 finalTotal: productTotal.toString(),
//                                 locationId: _locationId!,
//                                 adjustmentType: selectedOptionType,
//                                 transactionDate:
//                                     _txttransactionDate.text.trim(),
//                                 refNo: _txtrefNo.text.trim(),
//                                 totalAmountRecovered:
//                                     _txttotalAmountRecovered.text.trim(),
//                                 additionalNotes:
//                                     _txtadditionalNotes.text.trim(),
//                                 products: pr,
//                               );
//                         },
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all<Color>(
//                             GlobalColors.primaryColor,
//                           ),
//                         ),
//                         child: Text(
//                           'save'.tr,
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
