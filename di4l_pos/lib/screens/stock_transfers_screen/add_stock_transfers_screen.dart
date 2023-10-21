import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/select_model_add_stock_transfer.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/models/stock_transfers/request/add_stock_transfers_request.dart';
import 'package:di4l_pos/models/stock_transfers/response/stock_transfers_response.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:di4l_pos/screens/stock_transfers_screen/cubit/add_stock_transfers_cubit.dart';
import 'package:di4l_pos/screens/stock_transfers_screen/widget/selet_stock_transfers_product.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddStockTransfersScreen extends StatefulWidget {
  final StockTransfersData? stockTransfersData;
  final ProductsRequest? products;
  final BusinessLocation? businessLocation;

  const AddStockTransfersScreen({
    Key? key,
    this.stockTransfersData,
    this.products,
    this.businessLocation,
  }) : super(key: key);
  static MultiBlocProvider provider(
      {StockTransfersData? stockTransfersData, Product? product}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddStockTransfersCubit>(
          create: (context) => AddStockTransfersCubit(),
        ),
        BlocProvider<ProductsCubit>(
          create: (BuildContext context) => ProductsCubit(),
        ),
        BlocProvider<BusinessCubit>(
          create: (context) => BusinessCubit(),
        ),
      ],
      child: AddStockTransfersScreen(
        stockTransfersData: stockTransfersData,
      ),
    );
  }

  @override
  // ignore: library_private_types_in_public_api
  _AddStockTransfersScreenState createState() =>
      _AddStockTransfersScreenState();
}

class _AddStockTransfersScreenState extends State<AddStockTransfersScreen>
    with AfterLayoutMixin<AddStockTransfersScreen> {
  int? _locationId;
  int? _transferLocationId;
  final TextEditingController _txtshippingCharges = TextEditingController();
  final TextEditingController _txttransactionDate = TextEditingController();
  final TextEditingController _txtrefNo = TextEditingController();
  final List<TextEditingController?> _txtprice = [];
  final TextEditingController _txtadditionalNotes = TextEditingController();
  final List<TextEditingController> _txtquantity = [];

  // double calculateProductTotal() {
  //   double quantity = double.tryParse(_txtquantity.text) ?? 0.0;
  //   double price = double.tryParse(_txtprice.text) ?? 0.0;
  //   return quantity * price;
  // }

  String selectedOptionType = 'pending'.tr;
  List<Product>? _productSelected;
  AddStockTransfersRequest? _addStockTransfers;

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    _txtshippingCharges.text = widget.stockTransfersData?.shippingCharges ?? '';
    _txttransactionDate.text =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    _txtrefNo.text = widget.stockTransfersData?.refNo ?? '';
    _txtadditionalNotes.text = widget.stockTransfersData?.additionalNotes ?? '';
    context.read<ProductsCubit>().getProducts();
    context.read<BusinessCubit>().getBusinesss();
  }

  @override
  void dispose() {
    _txtshippingCharges.dispose();
    _txtrefNo.dispose();
    _txttransactionDate.dispose();
    // _txtadditionalNotes.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000, 8),
        lastDate: DateTime(2101),
      );
      if (picked != null) {
        // ignore: use_build_context_synchronously
        final TimeOfDay? pickedTime = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        );
        if (pickedTime != null) {
          setState(() {
            final DateTime combinedDate = DateTime(
              picked.year,
              picked.month,
              picked.day,
              pickedTime.hour,
              pickedTime.minute,
            );
            final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
            final String formattedDate = formatter.format(combinedDate);
            _txttransactionDate.text = formattedDate;
          });
        }
      }
    }

    // double productTotal = calculateProductTotal();

    return BlocListener<AddStockTransfersCubit, AddStockTransfersState>(
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
          key: _globalKey,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black, size: 23),
            elevation: 0.5,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: true,
            title: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'add_stock_transfers'.tr,
                style: GlobalStyles.normalStyle.copyWith(
                  color: GlobalColors.primaryWebColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          backgroundColor: GlobalColors.bgColor,
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: GlobalColors.whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildDate(_selectDate, context),
                  buildRefNo(),
                  buildStatus(),
                  buildLocationFrom(),
                  buildLocationTo(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'products'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  buildListProduct(),
                  buildButtonAddProduct(context),
                  // BlocBuilder<ProductsCubit, ProductsState>(
                  //   builder: (context, state) {
                  //     _txtprice.text = (state.data!.productSelected != null
                  //             ? state.data!.productSelected!.productVariations
                  //                 ?.elementAt(0)
                  //                 ?.variations
                  //                 ?.elementAt(0)
                  //                 ?.defaultPurchasePrice
                  //             : '')
                  //         .toString();
                  //     return Column(
                  //       children: [
                  //         state.data!.productSelected != null
                  //             ? Container(
                  //                 decoration: BoxDecoration(
                  //                   border: Border.all(
                  //                     width: 1,
                  //                     color: Colors.grey,
                  //                   ),
                  //                   borderRadius: const BorderRadius.all(
                  //                     Radius.circular(5.0),
                  //                   ),
                  //                 ),
                  //                 child: Column(
                  //                   children: [
                  //                     InkWell(
                  //                       child: Row(
                  //                         mainAxisAlignment:
                  //                             MainAxisAlignment.spaceBetween,
                  //                         children: [
                  //                           Row(
                  //                             children: [
                  //                               Padding(
                  //                                 padding:
                  //                                     const EdgeInsets.all(8.0),
                  //                                 child: Container(
                  //                                   decoration: BoxDecoration(
                  //                                     border: Border.all(
                  //                                       width: 1,
                  //                                       color: Colors.grey,
                  //                                     ),
                  //                                     borderRadius:
                  //                                         const BorderRadius.all(
                  //                                       Radius.circular(5.0),
                  //                                     ),
                  //                                   ),
                  //                                   width: Get.width * 0.13,
                  //                                   height: Get.width * 0.13,
                  //                                   child: Padding(
                  //                                     padding: const EdgeInsets
                  //                                             .all(
                  //                                         Dimensions
                  //                                             .MARGIN_SIZE_SMALL),
                  //                                     child: SizedBox(
                  //                                       width: Get.width * 0.07,
                  //                                       child: Image.asset(
                  //                                         "assets/images/food.jpg",
                  //                                         color: Colors.grey,
                  //                                       ),
                  //                                     ),
                  //                                   ),
                  //                                 ),
                  //                               ),
                  //                               Column(
                  //                                 crossAxisAlignment:
                  //                                     CrossAxisAlignment.start,
                  //                                 children: [
                  //                                   Text(
                  //                                     state.data!.productSelected!
                  //                                         .name
                  //                                         .toString(),
                  //                                   ),
                  //                                 ],
                  //                               ),
                  //                             ],
                  //                           ),
                  //                           Padding(
                  //                             padding: const EdgeInsets.all(8.0),
                  //                             child: Row(
                  //                               children: const [
                  //                                 SizedBox(
                  //                                   width: Dimensions
                  //                                       .PADDING_SIZE_SMALL,
                  //                                 ),
                  //                                 Icon(
                  //                                   Icons.arrow_forward_ios,
                  //                                   size: 18,
                  //                                 )
                  //                               ],
                  //                             ),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                       onTap: () {
                  //                         showModalBottomSheet(
                  //                           isScrollControlled: true,
                  //                           shape: const RoundedRectangleBorder(
                  //                             borderRadius: BorderRadius.only(
                  //                               topLeft: Radius.circular(10),
                  //                               topRight: Radius.circular(10),
                  //                             ),
                  //                           ),
                  //                           context: context,
                  //                           builder: (context) => BlocProvider(
                  //                             create: (context) =>
                  //                                 ProductsCubit(),
                  //                             child: SelectProductTransfer(
                  //                               selectModeAddStockTransfer:
                  //                                   SelectModeAddStockTransfer
                  //                                       .product,
                  //                               isShowButton: true,
                  //                               selectedItems:
                  //                                   state.data!.product != null
                  //                                       ? [state.data!.product]
                  //                                       : [],
                  //                               onTap: (List<dynamic> p) {
                  //                                 // Update the parameter type to List<dynamic>
                  //                                 _globalKey.currentContext!
                  //                                     .read<ProductsCubit>()
                  //                                     .productSelected(p
                  //                                             .isNotEmpty
                  //                                         ? p[0]
                  //                                         : null); // Access the first item if the list is not empty
                  //                                 _productSelected = p.isNotEmpty
                  //                                     ? p[0]
                  //                                     : null; // Assign the first item if the list is not empty
                  //                               },
                  //                             ),
                  //                           ),
                  //                         );
                  //                       },
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.all(8.0),
                  //                       child: CustomTextField(
                  //                         controller: _txtquantity,
                  //                         hintText: '1.000'.tr,
                  //                         hintLabel: 'Quantity'.tr,
                  //                       ),
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.all(8.0),
                  //                       child: CustomTextField(
                  //                         controller: _txtprice,
                  //                         hintText: state.data!.productSelected!
                  //                             .productVariations
                  //                             ?.elementAt(0)
                  //                             ?.variations
                  //                             ?.elementAt(0)
                  //                             ?.defaultPurchasePrice
                  //                             .toString()
                  //                             .formatMoney(),
                  //                         hintLabel: 'Unit Price'.tr,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               )
                  //             : const SizedBox(),
                  //         const SizedBox(
                  //           height: Dimensions.PADDING_SIZE_SMALL,
                  //         ),
                  //         ElevatedButton(
                  //           onPressed: () {
                  //             showModalBottomSheet(
                  //               isScrollControlled: true,
                  //               shape: const RoundedRectangleBorder(
                  //                 borderRadius: BorderRadius.only(
                  //                   topLeft: Radius.circular(10),
                  //                   topRight: Radius.circular(10),
                  //                 ),
                  //               ),
                  //               context: context,
                  //               builder: (context) => BlocProvider(
                  //                 create: (context) => ProductsCubit(),
                  //                 child: SelectProductTransfer(
                  //                   selectModeAddStockTransfer:
                  //                       SelectModeAddStockTransfer.product,
                  //                   isShowButton: true,
                  //                   selectedItems: state.data!.product != null
                  //                       ? [state.data!.product]
                  //                       : [],
                  //                   onTap: (List<dynamic> p) {
                  //                     // Update the parameter type to List<dynamic>
                  //                     _globalKey.currentContext!
                  //                         .read<ProductsCubit>()
                  //                         .productSelected(p.isNotEmpty
                  //                             ? p[0]
                  //                             : null); // Access the first item if the list is not empty
                  //                     _productSelected = p.isNotEmpty
                  //                         ? p[0]
                  //                         : null; // Assign the first item if the list is not empty
                  //                   },
                  //                 ),
                  //               ),
                  //             );
                  //           },
                  //           child: SizedBox(
                  //             width: Get.width,
                  //             height: Get.height * 0.06,
                  //             child: Row(
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 const Icon(Icons.add),
                  //                 const SizedBox(
                  //                     width: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                  //                 Text('add'.tr),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     );
                  //   },
                  // ),
                  buildShippingCharges(),
                  buildAdditionalNotes(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: buildButtonSave()
          // ElevatedButton(
          //   onPressed: () {
          //     List<ProductsRequest> pr = [];
          //     ProductsRequest productsRequest = ProductsRequest(
          //       lotNoLineId: '',
          //       productId: _productSelected?.id,
          //       subUnitId: _productSelected?.unit?.id,
          //       enableStock: _productSelected?.enableStock,
          //       price: _txtprice.text,
          //       productUnitId: _productSelected?.unit?.id,
          //       quantity: _txtquantity.text,
          //       unitPrice: _txtprice.text,
          //       variationId: _productSelected?.productVariations
          //           ?.elementAt(0)
          //           ?.variations
          //           ?.elementAt(0)
          //           ?.id,
          //     );
          //     pr.add(productsRequest);

          //     _globalKey.currentContext!
          //         .read<AddStockTransfersCubit>()
          //         .addStockTransfers(
          //           transferLocationId: _transferLocationId!,
          //           finalTotal: productTotal.toString(),
          //           locationId: _locationId!,
          //           status: selectedOptionType,
          //           transactionDate: _txttransactionDate.text.trim(),
          //           refNo: _txtrefNo.text.trim(),
          //           shippingCharges: _txtshippingCharges.text.trim(),
          //           additionalNotes: _txtadditionalNotes.text.trim(),
          //           products: pr,
          //         );
          //   },
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all<Color>(
          //       GlobalColors.primaryColor,
          //     ),
          //   ),
          //   child: Text(
          //     'save'.tr,
          //     style: const TextStyle(
          //       color: Colors.white,
          //       fontSize: 15,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          ),
    );
  }

  Container buildButtonSave() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
        onPressed: () {
          List<ProductsRequest> pr = [];
          _productSelected!.map((e) {
            int idx = _productSelected!.indexOf(e);
            ProductsRequest productsRequest = ProductsRequest(
              lotNoLineId: '',
              productId: e.id,
              subUnitId: e.unit!.id,
              enableStock: e.enableStock,
              price: _txtprice.elementAt(idx)!.text,
              productUnitId: e.unit!.id,
              quantity: _txtquantity.elementAt(idx).text,
              unitPrice: _txtprice.elementAt(idx)!.text,
              variationId: e.productVariations
                  ?.elementAt(0)
                  ?.variations
                  ?.elementAt(0)
                  ?.id,
            );
            pr.add(productsRequest);
          }).toList();

          List allSubTotal = [];
          for (var p in pr) {
            final subTotal = double.parse(p.quantity!) * double.parse(p.price!);
            allSubTotal.add(subTotal);
          }

          double sum = allSubTotal.fold(
              0, (previousValue, element) => previousValue + element);

          _globalKey.currentContext!
              .read<AddStockTransfersCubit>()
              .addStockTransfers(
                transferLocationId: _transferLocationId!,
                finalTotal: '$sum',
                locationId: _locationId!,
                status: selectedOptionType == 'completed'.tr
                    ? 'final'
                    : (selectedOptionType == 'in_transit'.tr
                        ? 'in_transit'
                        : selectedOptionType.toLowerCase()),
                transactionDate: _txttransactionDate.text.trim(),
                refNo: _txtrefNo.text.trim(),
                shippingCharges: _txtshippingCharges.text.trim(),
                additionalNotes: _txtadditionalNotes.text.trim(),
                products: pr,
              );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: GlobalColors.primaryColor,
        ),
        child: Text(
          'save'.tr,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  BlocBuilder<ProductsCubit, ProductsState> buildListProduct() {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return state.data!.productsSelected.isNotEmpty
            ? ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.data!.productsSelected.length,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemBuilder: (context, index) {
                  _txtprice.add(TextEditingController());
                  _txtquantity.add(TextEditingController());
                  _txtprice.elementAt(index)!.text = (state
                              .data!.productsSelected
                              .elementAt(index)
                              .productVariations
                              ?.elementAt(0)
                              ?.variations
                              ?.elementAt(0)
                              ?.defaultPurchasePrice ??
                          '')
                      .toString();
                  // .formatMoney();
                  _txtquantity.elementAt(index).text = '1';
                  // _txtSubTotal.add(TextEditingController());
                  // _txtSubTotal
                  //     .elementAt(index)
                  //     .text = (double.parse(
                  //             _txtquantity.elementAt(index).text) *
                  //         double.parse(
                  //             _txtprice.elementAt(index)!.text))
                  //     .toString()
                  //     .formatMoney();
                  // double sum = _txtSubTotal.fold(
                  //     0,
                  //     (previousValue, element) =>
                  //         previousValue +
                  //         double.parse(element.text));
                  // _globalKey.currentContext!
                  //     .read<AddStockAdjustmentCubit>()
                  //     .sum('$sum');
                  return Column(
                    children: [
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.grey,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0),
                                      ),
                                    ),
                                    width: Get.width * 0.13,
                                    height: Get.width * 0.13,
                                    child: CachedNetworkImage(
                                      // width: Get.width * 0.15,
                                      // height: Get.width * 0.15,
                                      fit: BoxFit.cover,
                                      imageUrl: state.data!.productsSelected
                                              .elementAt(index)
                                              .imageUrl ??
                                          '',
                                      errorWidget: (context, url, error) =>
                                          const ErrorWidgetImage(),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.data!.productsSelected
                                          .elementAt(index)
                                          .name
                                          .toString(),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: Dimensions.PADDING_SIZE_SMALL,
                                ),
                                Icon(
                                  Icons.delete,
                                  color: GlobalColors.redColor,
                                )
                              ],
                            ),
                          ],
                        ),
                        onTap: () {
                          final updateProduct = [
                            ...state.data!.productsSelected
                          ];
                          updateProduct.removeAt(index);
                          _globalKey.currentContext!
                              .read<ProductsCubit>()
                              .productsSelected(updateProduct);
                          _productSelected = updateProduct;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: CustomTextField(
                          controller: _txtquantity.elementAt(index),
                          keyboardKey: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          hintText: '1.000'.tr,
                          hintLabel: 'Quantity'.tr,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: CustomTextField(
                          controller: _txtprice.elementAt(index),
                          keyboardKey: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          hintText: state.data!.productsSelected
                              .elementAt(index)
                              .productVariations
                              ?.elementAt(0)
                              ?.variations
                              ?.elementAt(0)
                              ?.defaultPurchasePrice
                              .toString()
                              .formatMoney(),
                          hintLabel: 'Unit Price'.tr,
                        ),
                      ),
                      // Padding(
                      //   padding:
                      //       const EdgeInsets.symmetric(vertical: 5),
                      //   child: CustomTextField(
                      //     controller: _txtSubTotal.elementAt(index),
                      //     isEnable: false,
                      //     hintText: 'Sub Total'.tr,
                      //     hintLabel: 'Sub Total'.tr,
                      //   ),
                      // ),
                    ],
                  );
                },
              )
            : const SizedBox();
      },
    );
  }

  SizedBox buildButtonAddProduct(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: const Icon(Icons.add),
        label: Text('add'.tr),
        style: ElevatedButton.styleFrom(
          backgroundColor: GlobalColors.primaryColor,
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            context: context,
            builder: (context) => BlocProvider(
              create: (context) => ProductsCubit(),
              child: SelectProductTransfer(
                selectModeAddStockTransfer: SelectModeAddStockTransfer.product,
                isShowButton: true,
                // selectedItems: state.data!.product != null
                //     ? [state.data!.product]
                //     : [],
                onTap: (List<Product>? p) {
                  // Update the parameter type to List<dynamic>
                  _globalKey.currentContext!
                      .read<ProductsCubit>()
                      .productsSelected(p);
                  _productSelected = p;
                  // Assign the first item if the list is not empty
                },
              ),
            ),
          );
        },
      ),
    );
  }

  Row buildStatus() {
    return Row(
      children: [
        Row(
          children: [
            Text(
              'status'.tr,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '*',
              style: TextStyle(
                fontSize: 16,
                color: GlobalColors.errorColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          Icons.info,
          color: GlobalColors.appBar4,
        ),
        const SizedBox(
          width: 5,
        ),
        DropdownButton<String>(
          value: selectedOptionType,
          onChanged: (newValue) {
            setState(() {
              selectedOptionType = newValue!;
            });
          },
          items: <String>[
            'pending'.tr,
            'in_transit'.tr,
            'completed'.tr,
          ].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value.toString(),
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: GlobalColors.primaryColor),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  BlocBuilder<BusinessCubit, BusinessState> buildLocationTo() {
    return BlocBuilder<BusinessCubit, BusinessState>(
      builder: (context, state) {
        state.data!.businessTo == null
            ? _transferLocationId = 1
            : _transferLocationId = state.data!.businessTo!.id!;

        final value = state.data!.businessTo ??
            state.data!.businesss.firstWhereOrNull(
                (item) => item.id == widget.businessLocation?.businessId);

        return CustomDropDownWithT<BusinessLocation>(
          labelText: 'location_to'.tr,
          items: state.data!.businesss
              .map<DropdownMenuItem<BusinessLocation>>(
                  (BusinessLocation value) =>
                      DropdownMenuItem<BusinessLocation>(
                        value: value,
                        child: Text(value.name!),
                      ))
              .toList(),
          value: value,
          onChanged: (dynamic value) => _globalKey.currentContext!
              .read<BusinessCubit>()
              .getBusinessTo(value),
        );
      },
    );
  }

  BlocBuilder<BusinessCubit, BusinessState> buildLocationFrom() {
    return BlocBuilder<BusinessCubit, BusinessState>(
      builder: (context, state) {
        state.data!.business == null
            ? _locationId = 1
            : _locationId = state.data!.business!.id!;

        final value = state.data!.business ??
            state.data!.businesss.firstWhereOrNull(
                (item) => item.id == widget.businessLocation?.businessId);

        return CustomDropDownWithT<BusinessLocation>(
          labelText: 'location_from'.tr,
          items: state.data!.businesss
              .map<DropdownMenuItem<BusinessLocation>>(
                  (BusinessLocation value) =>
                      DropdownMenuItem<BusinessLocation>(
                        value: value,
                        child: Text(value.name!),
                      ))
              .toList(),
          value: value,
          onChanged: (dynamic value) => _globalKey.currentContext!
              .read<BusinessCubit>()
              .getBusiness(value),
        );
      },
    );
  }

  Padding buildDate(
      Future<void> _selectDate(BuildContext context), BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'date'.tr,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            controller: _txttransactionDate,
            onTap: () => _selectDate(context),
            decoration: InputDecoration(
              filled: true,
              fillColor: GlobalColors.kDarkWhite,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              prefixIcon: const Icon(Icons.date_range),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildRefNo() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'reference_no'.tr,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            controller: _txtrefNo,
            decoration: InputDecoration(
              hintText: 'reference_no'.tr,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 10.0,
              ),
              filled: true,
              fillColor: GlobalColors.whiteColor,
            ),
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Padding buildShippingCharges() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'shipping_charges'.tr,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.info,
                color: GlobalColors.appBar4,
              ),
            ],
          ),
          TextFormField(
            controller: _txtshippingCharges,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              hintText: 'shipping_charges'.tr,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 10.0,
              ),
              filled: true,
              fillColor: GlobalColors.whiteColor,
            ),
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Padding buildAdditionalNotes() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'additional_notes'.tr,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            controller: _txtadditionalNotes,
            decoration: InputDecoration(
              hintText: 'additional_notes'.tr,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 10.0,
              ),
              filled: true,
              fillColor: GlobalColors.whiteColor,
            ),
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
