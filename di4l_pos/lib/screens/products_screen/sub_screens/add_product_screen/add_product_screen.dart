import 'dart:async';
import 'dart:io';

import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/enums/select_mode_add_product.dart';
import 'package:di4l_pos/models/products/request/add_product_request.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/models/variants/response/variants_response.dart';
import 'package:di4l_pos/screens/branch_screen/cubit/branch_cubit.dart';
import 'package:di4l_pos/screens/category_screen/cubit/category_cubit.dart';
import 'package:di4l_pos/screens/products_screen/sub_screens/add_product_screen/cubit/add_product_cubit.dart';
import 'package:di4l_pos/screens/products_screen/sub_screens/widgets/add_variantion.dart';
import 'package:di4l_pos/screens/products_screen/sub_screens/widgets/select_dialog_screen.dart';
import 'package:di4l_pos/screens/unit_screen/cubit/unit_cubit.dart';
import 'package:di4l_pos/screens/variant_screen/cubit/variant_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../common/global_constants.dart';
import '../../../../route_generator.dart';

class AddProductScreen extends StatefulWidget {
  /// MARK: - Initials;
  final Product? product;
  final AddType? addProductType;

  static MultiBlocProvider provider(
      {AddType? addProductType, Product? product}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddProductCubit>(
          create: (BuildContext context) => AddProductCubit(),
        ),
        BlocProvider<UnitCubit>(
          create: (BuildContext context) => UnitCubit(),
        ),
        BlocProvider<CategoryCubit>(
          create: (BuildContext context) => CategoryCubit(),
        ),
        BlocProvider<BranchCubit>(
          create: (BuildContext context) => BranchCubit(),
        ),
        BlocProvider<VariantCubit>(
          create: (BuildContext context) => VariantCubit(),
        ),
      ],
      child: AddProductScreen(
        product: product,
        addProductType: addProductType,
      ),
    );
  }

  const AddProductScreen({
    Key? key,
    this.product,
    this.addProductType,
  }) : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final _formKey = GlobalKey<FormState>();
  File? image;
  final TextEditingController _txtProductName = TextEditingController();
  final TextEditingController _txtSKU = TextEditingController();
  final TextEditingController _txtQtyWarning = TextEditingController();
  final TextEditingController _txtDescription = TextEditingController();

  /// Single Type
  final TextEditingController _txtSingleDpp = TextEditingController();
  final TextEditingController _txtSingleDppIncTax = TextEditingController();
  final TextEditingController _txtSingleDsp = TextEditingController();
  final TextEditingController _defaultPurchasePrice = TextEditingController();
  final TextEditingController _defaultSellPrice = TextEditingController();

  final TextEditingController _txtExpiryPeriod = TextEditingController();
  final TextEditingController _txtExpiryPeriodType = TextEditingController();
  final TextEditingController _txtBarcode = TextEditingController();
  final TextEditingController _txtDiscountedPrice = TextEditingController();
  final TextEditingController _txtDesignation = TextEditingController();
  final bool _isShowProduct = false;
  final bool _inStock = true;
  bool _stockQuantities = false;
  int? _selectUnitId;
  int? _selectCategoryId;
  int? _selectBranchId;
  bool _enableVariant = false;
  final bool _displayBulkProces = false;
  Variant? _variantSelected;
  List<ProductVari> _productVars = [];
  List<TextEditingController> _skuValueVariant = [];
  List<TextEditingController> _valueVariant = [];
  Map<String, String> barcodes = GlobalConstants.barCodeTypes;
  String barcode = "EAN-13";
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    WidgetsBinding.instance.endOfFrame.then((_) async {
      context.read<UnitCubit>().getUnits();
      context.read<CategoryCubit>().getCategories();
      context.read<BranchCubit>().getBranch();
      context.read<VariantCubit>().getVariants();

      if (widget.addProductType == AddType.UPDATE) {
        _txtProductName.text = widget.product!.name ?? '';
        _txtSKU.text = widget.product!.sku ?? '';
        _txtQtyWarning.text = widget.product!.alertQuantity ?? '';
        _txtDescription.text = widget.product!.productDescription ?? '';
        if (widget.product!.alertQuantity != null) {
          _stockQuantities = true;
        }
        context
            .read<CategoryCubit>()
            .addCategorySelected(widget.product!.category);

        if (widget.product!.type!.compareTo('single') == 0) {
          _defaultSellPrice.text = widget
              .product!.productVariations![0]!.variations![0]!.defaultSellPrice
              .toString();
          _defaultPurchasePrice.text = widget.product!.productVariations![0]!
              .variations![0]!.defaultPurchasePrice
              .toString();
        } else {
          //widget.product!.productVariations!.forEach((element) { })

          await context
              .read<VariantCubit>()
              .getVariantById(widget
                  .product!.productVariations![0]!.variationTemplateId
                  .toInt())
              .then((value) {
            context.read<VariantCubit>().variantSelected(value);
            context.read<AddProductCubit>().enableVariant(true, 'variable');
            for (var element
                in widget.product!.productVariations![0]!.variations!) {
              _skuValueVariant
                  .add(TextEditingController(text: element!.defaultSellPrice));
              _valueVariant.add(
                  TextEditingController(text: element.defaultPurchasePrice));
            }

            _productVars
                .add(ProductVari(value, _skuValueVariant, _valueVariant));
            _variantSelected = value;
          });
        }

        barcodes.forEach((key, value) {
          if (value.compareTo(widget.product!.barcodeType.toString()) == 0) {
            barcode = key;
          }
        });
        context.read<AddProductCubit>().getBarCodeType(barcode.toString());
        context.read<AddProductCubit>().IsOutOfStock(
            widget.product!.enableStock!.toInt() == 1 ? false : true);
        context.read<AddProductCubit>().changeNotForSell(
            widget.product!.notForSelling!.toInt() == 1 ? true : false);
        context.read<UnitCubit>().setUnitSelect(widget.product!.unit);
        context.read<BranchCubit>().branchSelected(widget.product!.brand!);
      }
    });
  }

  // Future _addImageVariant(ImageSource source, int i, int j) async {
  //   try {
  //     final _image = await ImagePicker().pickImage(source: source);
  //     if (_image == null) return;
  //     final imgTemporary = File(_image.path);
  //     setState(() {
  //       _productVars[i].images[j] = imgTemporary;
  //     });
  //   } catch (e) {
  //     print('Select Imge[${i}{j}] Error: $e');
  //   }
  // }

  bool switchtest = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddProductCubit, AddProductState>(
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
        backgroundColor: Colors.grey[100],
        key: _globalKey,
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: CustomAppBar(
            backgroundColor: Colors.white,
            textColor: GlobalColors.getTextTitle(context),
            title: widget.addProductType == AddType.UPDATE
                ? 'update_product'.tr
                : 'add_product'.tr,
            //center: true,
            actions: [
              IconButton(
                onPressed: () {
                  navigator?.pushNamed(RouteGenerator.productSettingScreen);
                },
                icon: const Icon(Icons.settings),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0,
                          vertical: Dimensions.PADDING_SIZE_SMALL),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Product - Image
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: Dimensions.FONT_SIZE_DEFAULT),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 130,
                                      child: ElevatedButton(
                                        onPressed: () => _globalKey
                                            .currentContext!
                                            .read<AddProductCubit>()
                                            .selectImage(ImageSource.gallery),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          textStyle: const TextStyle(
                                              color: GlobalColors.primaryColor),
                                          side: const BorderSide(
                                            color: GlobalColors.primaryColor,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                8), // <-- Radius
                                          ),
                                          elevation: 0.0,
                                        ),
                                        child: Row(children: [
                                          const Icon(Icons.image,
                                              color: GlobalColors.primaryColor),
                                          const SizedBox(width: 6),
                                          Text(
                                            'add_product_image_to_gallery'.tr,
                                            style: const TextStyle(
                                                color:
                                                    GlobalColors.primaryColor),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 130,
                                      child: ElevatedButton(
                                        onPressed: () => _globalKey
                                            .currentContext!
                                            .read<AddProductCubit>()
                                            .selectImage(ImageSource.camera),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          textStyle: const TextStyle(
                                              color: GlobalColors.primaryColor),
                                          side: const BorderSide(
                                            color: GlobalColors.primaryColor,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                8), // <-- Radius
                                          ),
                                          elevation: 0.0,
                                        ),
                                        child: Row(
                                          children: [
                                            const Icon(Icons.camera_alt_rounded,
                                                color:
                                                    GlobalColors.primaryColor),
                                            const SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                                'add_product_image_to_camera'
                                                    .tr,
                                                style: const TextStyle(
                                                    color: GlobalColors
                                                        .primaryColor)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                  width: Dimensions.PADDING_SIZE_DEFAULT),
                              BlocBuilder<AddProductCubit, AddProductState>(
                                builder: (context, state) => Container(
                                  height: 120,
                                  width: 100,
                                  padding: const EdgeInsets.all(
                                      Dimensions.PADDING_SIZE_EXTRA_SMALL),
                                  child: state.data!.image != null
                                      ? Image.file(
                                          File(state.data!.image!.path),
                                          fit: BoxFit.cover,
                                        )
                                      : const SizedBox(),
                                ),
                              )
                            ],
                          ),

                          /// Product
                          Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(
                                  Dimensions.PADDING_SIZE_DEFAULT),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 2,
                                          child: CustomTextField(
                                            redLabel: ' *',
                                            hintText: 'example_product_name'.tr,
                                            controller: _txtProductName,
                                            hintLabel: 'product_name'.tr,
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: Dimensions.PADDING_SIZE_SMALL,
                                  ),

                                  CustomTextField(
                                    redLabel: ' *',
                                    hintText: 'product_sku'.tr,
                                    controller: _txtSKU,
                                    hintLabel: 'product_sku'.tr,
                                  ),
                                  const SizedBox(
                                    height: Dimensions.PADDING_SIZE_SMALL,
                                  ),
                                  BlocBuilder<AddProductCubit, AddProductState>(
                                    builder: (context, state) => !state
                                            .data!.enableVariant
                                        ? Row(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: CustomTextField(
                                                    redLabel: " *",
                                                    controller:
                                                        _defaultSellPrice,
                                                    hintText: '0.000'.tr,
                                                    hintLabel: 'sell_price'.tr,
                                                  )),
                                              const SizedBox(
                                                width: Dimensions
                                                    .PADDING_SIZE_LARGE,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: CustomTextField(
                                                  controller:
                                                      _defaultPurchasePrice,
                                                  hintText: '0.000'.tr,
                                                  hintLabel: 'buy_price'.tr,
                                                ),
                                              ),
                                            ],
                                          )
                                        : const SizedBox(),
                                  ),

                                  /// category
                                  const SizedBox(
                                      height: Dimensions.PADDING_SIZE_LARGE),

                                  BlocBuilder<CategoryCubit, CategoryState>(
                                    buildWhen: (previous, current) {
                                      previous.data!.categoriesSelect.length !=
                                          current.data!.categoriesSelect.length;
                                      previous.data!.categories !=
                                          current.data!.categories;
                                      return true;
                                    },
                                    builder: (context, state) {
                                      if (state is GetCategory) {
                                        _selectCategoryId =
                                            state.data!.categoryModel!.id!;
                                      }

                                      return Column(
                                        children: [
                                          InputDecorator(
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 1.0),
                                              labelText: 'category'.tr,
                                              labelStyle: const TextStyle(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.w500),
                                              // border: OutlineInputBorder(
                                              //     borderRadius: BorderRadius.circular(
                                              //         Dimensions.PADDING_SIZE_EXTRA_SMALL)),
                                            ),
                                            child: DropdownButtonHideUnderline(
                                              child: Stack(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      TextButton(
                                                        onPressed: () {
                                                          showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            shape:
                                                                const RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                              ),
                                                            ),
                                                            context: context,
                                                            builder: (context) =>
                                                                BlocProvider(
                                                              create: (context) =>
                                                                  CategoryCubit(),
                                                              child:
                                                                  SelectDialogWidget(
                                                                      selectModeAddProduct:
                                                                          SelectModeAddProduct
                                                                              .category,
                                                                      isShowbutton:
                                                                          true,
                                                                      item: state
                                                                          .data!
                                                                          .categorySelected,
                                                                      ontap:
                                                                          (category) =>
                                                                              {
                                                                                _globalKey.currentContext!.read<CategoryCubit>().addCategorySelected(category),
                                                                                _selectCategoryId = category.id,
                                                                              }),
                                                            ),
                                                          );
                                                        },
                                                        child: state.data!
                                                                    .categorySelected !=
                                                                null
                                                            ? Row(
                                                                children: [
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              30),
                                                                      color: Colors
                                                                          .white,
                                                                      boxShadow: const [
                                                                        BoxShadow(
                                                                            color:
                                                                                Colors.grey,
                                                                            spreadRadius: 1),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        InkWell(
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(5.0),
                                                                        child:
                                                                            Row(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            Text(
                                                                              state.data!.categorySelected!.name ?? "",
                                                                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w100, color: state.data!.categoryModel != null ? Colors.black : Colors.grey),
                                                                            ),
                                                                            Container(
                                                                              alignment: Alignment.centerRight,
                                                                              height: 15,
                                                                              width: 15,
                                                                              child: InkWell(
                                                                                onTap: () => _globalKey.currentContext!.read<CategoryCubit>().addCategorySelected(null),
                                                                                child: const Icon(
                                                                                  Icons.cancel,
                                                                                  color: Colors.grey,
                                                                                  size: 13,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                      width: Dimensions
                                                                          .PADDING_SIZE_EXTRA_SMALL),
                                                                ],
                                                              )
                                                            : Text(
                                                                'select_category'
                                                                    .tr,
                                                                style: const TextStyle(
                                                                    color: GlobalColors
                                                                        .hintMenuTextColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300)),
                                                      ),
                                                      const Icon(
                                                          Icons.arrow_drop_down,
                                                          color: Colors.black38)
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          // SingleChildScrollView(
                                          //   scrollDirection: Axis.horizontal,
                                          //   child: Wrap(
                                          //     spacing: 10,
                                          //     direction: Axis.horizontal,
                                          //     children: state.data!.categories
                                          //         .map(
                                          //           (e) => ElevatedButton(
                                          //             style: ElevatedButton
                                          //                 .styleFrom(
                                          //               backgroundColor:
                                          //                   Colors.grey[50],
                                          //               elevation: 0.0,
                                          //               side: const BorderSide(
                                          //                 color: Colors.grey,
                                          //               ),
                                          //               shape:
                                          //                   RoundedRectangleBorder(
                                          //                 borderRadius:
                                          //                     BorderRadius.circular(
                                          //                         8), // <-- Radius
                                          //               ),
                                          //             ),
                                          //             onPressed: () {
                                          //               {
                                          //                 _globalKey
                                          //                     .currentContext!
                                          //                     .read<
                                          //                         CategoryCubit>()
                                          //                     .addCategorySelected(
                                          //                         e);
                                          //                 _selectCategoryId =
                                          //                     e.id;
                                          //               }
                                          //             },
                                          //             child: Text(
                                          //               e.name ?? "",
                                          //               style: TextStyle(
                                          //                   color: GlobalColors
                                          //                       .getTextTitle(
                                          //                           context),
                                          //                   fontWeight:
                                          //                       FontWeight
                                          //                           .w200),
                                          //             ),
                                          //           ),
                                          //         )
                                          //         .toList()
                                          //         .cast<Widget>(),
                                          //   ),
                                          // ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),

                          /// Not for selling
                          // const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                          // BlocBuilder<AddProductCubit, AddProductState>(
                          //   // builder: (context, state) => GestureDetector(
                          //   //       child: Row(
                          //   //         mainAxisAlignment: MainAxisAlignment.center,
                          //   //         children: [
                          //   //           Text("Not for selling"),
                          //   //           Icon(state.data!.notForSell
                          //   //               ? Icons.arrow_drop_up
                          //   //               : Icons.arrow_drop_down),
                          //   //         ],
                          //   //       ),
                          //   //       onTap: () => _globalKey.currentContext!
                          //   //           .read<AddProductCubit>()
                          //   //           .changeNotForSell(
                          //   //               state.data!.notForSell ? false : true),
                          //   //     )

                          //   builder: (context, state) => Container(
                          //     color: Colors.white,
                          //     child: Padding(
                          //       padding: const EdgeInsets.all(8.0),
                          //       child: CheckboxListTile(
                          //         title: Text("not_for_sell".tr),
                          //         value: state.data!.notForSell,
                          //         activeColor: Colors.green,
                          //         onChanged: (value) => _globalKey.currentContext!
                          //             .read<AddProductCubit>()
                          //             .changeNotForSell(value),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),

                          /// Check manage stock
                          BlocBuilder<AddProductCubit, AddProductState>(
                              builder: (context, state) => Column(
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'more_infomation'.tr,
                                                      style: const TextStyle(
                                                        fontSize: 15,
                                                        color: GlobalColors
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Icon(
                                                      state.data!
                                                              .checkManageStock
                                                          ? Icons.arrow_drop_up
                                                          : Icons
                                                              .arrow_drop_down,
                                                      color: GlobalColors
                                                          .primaryColor,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            onTap: () => _globalKey
                                                .currentContext!
                                                .read<AddProductCubit>()
                                                .changeCheckManageStock(
                                                    state.data!.checkManageStock
                                                        ? false
                                                        : true),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                          height:
                                              Dimensions.PADDING_SIZE_SMALL),
                                      if (state.data!.checkManageStock ==
                                          true) ...[
                                        Container(
                                          color: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                                Dimensions
                                                    .PADDING_SIZE_DEFAULT),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'warehouse_inventory_management'
                                                      .tr,
                                                  style: const TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                const SizedBox(
                                                    height: Dimensions
                                                        .PADDING_SIZE_DEFAULT),
                                                Column(
                                                  children: [
                                                    InputDecorator(
                                                      decoration:
                                                          InputDecoration(
                                                        contentPadding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 1.0),
                                                        labelText:
                                                            'barcode_product'
                                                                .tr,
                                                        labelStyle:
                                                            const TextStyle(
                                                                fontSize: 21,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                        // border: OutlineInputBorder(
                                                        //     borderRadius: BorderRadius.circular(
                                                        //         Dimensions.PADDING_SIZE_EXTRA_SMALL)),
                                                      ),
                                                      child:
                                                          DropdownButtonHideUnderline(
                                                        child: Stack(
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                TextButton(
                                                                    onPressed:
                                                                        () {
                                                                      showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          shape:
                                                                              const RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              topLeft: Radius.circular(10),
                                                                              topRight: Radius.circular(10),
                                                                            ),
                                                                          ),
                                                                          context:
                                                                              context,
                                                                          builder: (context) => SelectDialogWidget(
                                                                              selectModeAddProduct: SelectModeAddProduct.barcode,
                                                                              isShowbutton: true,
                                                                              ontap: (v) {
                                                                                _globalKey.currentContext!.read<AddProductCubit>().getBarCodeType(v.toString());
                                                                                barcode = v;
                                                                              }));
                                                                    },
                                                                    child:
                                                                        InkWell(
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(30),
                                                                              color: Colors.white,
                                                                              boxShadow: const [
                                                                                BoxShadow(color: Colors.grey, spreadRadius: 1),
                                                                              ],
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(5.0),
                                                                                child: Row(
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  children: [
                                                                                    Text(
                                                                                      barcode,
                                                                                      style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w100, color: Colors.grey),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          const SizedBox(
                                                                              width: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                                                                        ],
                                                                      ),
                                                                    )),
                                                                const Icon(
                                                                    Icons
                                                                        .arrow_drop_down,
                                                                    color: Colors
                                                                        .black38)
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "product_status".tr,
                                                      style: const TextStyle(
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: Colors.grey[300],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(2),
                                                        child: Row(
                                                          children: [
                                                            TextButton(
                                                              onPressed: () {
                                                                _globalKey
                                                                    .currentContext!
                                                                    .read<
                                                                        AddProductCubit>()
                                                                    .IsOutOfStock(
                                                                        false);
                                                                //_inStock = true;
                                                              },
                                                              style: TextButton
                                                                  .styleFrom(
                                                                backgroundColor: !state
                                                                        .data!
                                                                        .outOfStock
                                                                    ? Colors
                                                                        .white
                                                                    : Colors
                                                                        .transparent,
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                elevation: 0.0,
                                                                side:
                                                                    BorderSide(
                                                                  color: !state
                                                                          .data!
                                                                          .outOfStock
                                                                      ? GlobalColors
                                                                          .primaryColor
                                                                      : Colors
                                                                          .transparent,
                                                                ),
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8), // <-- Radius
                                                                ),
                                                              ),
                                                              child: Text(
                                                                "product_in_stock"
                                                                    .tr,
                                                                style: TextStyle(
                                                                    color: !state
                                                                            .data!
                                                                            .outOfStock
                                                                        ? GlobalColors
                                                                            .primaryColor
                                                                        : Colors
                                                                            .black54,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300),
                                                              ),
                                                            ),
                                                            TextButton(
                                                              onPressed: () {
                                                                _globalKey
                                                                    .currentContext!
                                                                    .read<
                                                                        AddProductCubit>()
                                                                    .IsOutOfStock(
                                                                        true);
                                                                // _inStock =
                                                                //     false;
                                                              },
                                                              style: TextButton
                                                                  .styleFrom(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                backgroundColor: state
                                                                        .data!
                                                                        .outOfStock
                                                                    ? Colors
                                                                        .white
                                                                    : Colors
                                                                        .transparent,
                                                                elevation: 0.0,
                                                                side:
                                                                    BorderSide(
                                                                  color: state
                                                                          .data!
                                                                          .outOfStock
                                                                      ? Colors
                                                                          .red
                                                                      : Colors
                                                                          .transparent,
                                                                ),
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8), // <-- Radius
                                                                ),
                                                              ),
                                                              child: Text(
                                                                "product_out_stock"
                                                                    .tr,
                                                                style: TextStyle(
                                                                    color: state
                                                                            .data!
                                                                            .outOfStock
                                                                        ? Colors
                                                                            .red
                                                                        : Colors
                                                                            .black54,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "monitoring_stock_quantities"
                                                          .tr,
                                                      style: const TextStyle(
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Switch(
                                                      activeColor: GlobalColors
                                                          .primaryColor,
                                                      value: _stockQuantities,
                                                      onChanged: (bool value) {
                                                        setState(() {
                                                          _stockQuantities =
                                                              value;
                                                          if (value == false) {
                                                            _txtQtyWarning
                                                                .clear();
                                                          }
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                ),
                                                _stockQuantities == true
                                                    ? CustomTextField(
                                                        //controller: _txtQtyWarning,
                                                        hintText:
                                                            "alert_quantity",
                                                        controller:
                                                            _txtQtyWarning,

                                                        hintLabel:
                                                            'alert_quantity'.tr,
                                                      )
                                                    : const SizedBox(),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                            height:
                                                Dimensions.PADDING_SIZE_SMALL),
                                        Container(
                                          color: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                Dimensions.PADDING_SIZE_DEFAULT,
                                                Dimensions.PADDING_SIZE_SMALL,
                                                Dimensions.PADDING_SIZE_DEFAULT,
                                                Dimensions
                                                    .PADDING_SIZE_DEFAULT),
                                            child: BlocBuilder<UnitCubit,
                                                UnitState>(
                                              buildWhen: (previous, current) {
                                                previous.data!.unitSelect !=
                                                    current.data!.unitSelect;
                                                return true;
                                              },
                                              builder: (context, state) {
                                                // if (state is GetCategory) {
                                                //   _selectCategoryId = state
                                                //       .data!.unit!.id!;
                                                // }

                                                return Column(
                                                  children: [
                                                    InputDecorator(
                                                      decoration:
                                                          InputDecoration(
                                                        contentPadding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 1.0),
                                                        labelText: 'unit'.tr,
                                                        labelStyle:
                                                            const TextStyle(
                                                                fontSize: 21,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                        // border: OutlineInputBorder(
                                                        //     borderRadius: BorderRadius.circular(
                                                        //         Dimensions.PADDING_SIZE_EXTRA_SMALL)),
                                                      ),
                                                      child:
                                                          DropdownButtonHideUnderline(
                                                        child: Stack(
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      shape:
                                                                          const RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          topLeft:
                                                                              Radius.circular(10),
                                                                          topRight:
                                                                              Radius.circular(10),
                                                                        ),
                                                                      ),
                                                                      context:
                                                                          context,
                                                                      builder: (context) => BlocProvider(
                                                                          create: (context) => UnitCubit(),
                                                                          child: SelectDialogWidget(
                                                                              selectModeAddProduct: SelectModeAddProduct.unit,
                                                                              isShowbutton: true,
                                                                              ontap: (v) {
                                                                                _globalKey.currentContext!.read<UnitCubit>().setUnitSelect(v);
                                                                                _selectUnitId = v.id;
                                                                              })),
                                                                    );
                                                                  },
                                                                  child: state.data!
                                                                              .unitSelect !=
                                                                          null
                                                                      ? Row(
                                                                          children: [
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(30),
                                                                                color: Colors.white,
                                                                                boxShadow: const [
                                                                                  BoxShadow(color: Colors.grey, spreadRadius: 1),
                                                                                ],
                                                                              ),
                                                                              child: InkWell(
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.all(5.0),
                                                                                  child: Row(
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Text(
                                                                                        state.data!.unitSelect!.actualName ?? "",
                                                                                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w100, color: state.data!.unit != null ? Colors.black : Colors.grey),
                                                                                      ),
                                                                                      Container(
                                                                                        alignment: Alignment.centerRight,
                                                                                        height: 15,
                                                                                        width: 15,
                                                                                        child: InkWell(
                                                                                          onTap: () => _globalKey.currentContext!.read<UnitCubit>().setUnitSelect(null),
                                                                                          child: const Icon(
                                                                                            Icons.cancel,
                                                                                            color: Colors.grey,
                                                                                            size: 13,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            const SizedBox(width: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                                                                          ],
                                                                        )
                                                                      : Text(
                                                                          'select_category'
                                                                              .tr,
                                                                          style: const TextStyle(
                                                                              color: GlobalColors.hintMenuTextColor,
                                                                              fontWeight: FontWeight.w300)),
                                                                ),
                                                                const Icon(
                                                                    Icons
                                                                        .arrow_drop_down,
                                                                    color: Colors
                                                                        .black38)
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                  ],
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                            height:
                                                Dimensions.PADDING_SIZE_SMALL),
                                        Container(
                                          width: Get.width,
                                          color: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                Dimensions.PADDING_SIZE_DEFAULT,
                                                0,
                                                Dimensions.PADDING_SIZE_DEFAULT,
                                                Dimensions
                                                    .PADDING_SIZE_DEFAULT),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('variant_n'.tr,
                                                            style: GlobalStyles
                                                                .titleRegular(
                                                                    context)),
                                                        const SizedBox(
                                                          height: Dimensions
                                                              .PADDING_SIZE_EXTRA_SMALL,
                                                        ),
                                                        Text(
                                                          'variant_d'.tr,
                                                          style: GlobalStyles
                                                              .titilliumItalic(
                                                                  context),
                                                        )
                                                      ],
                                                    ),
                                                    Switch(
                                                      activeColor: GlobalColors
                                                          .primaryColor,
                                                      value: state
                                                          .data!.enableVariant,
                                                      onChanged: (value) {
                                                        if (value) {
                                                          _globalKey
                                                              .currentContext!
                                                              .read<
                                                                  AddProductCubit>()
                                                              .enableVariant(
                                                                  !state.data!
                                                                      .enableVariant,
                                                                  'variable');

                                                          _enableVariant = state
                                                              .data!
                                                              .enableVariant;
                                                        } else {
                                                          _globalKey
                                                              .currentContext!
                                                              .read<
                                                                  AddProductCubit>()
                                                              .enableVariant(
                                                                  !state.data!
                                                                      .enableVariant,
                                                                  'single');

                                                          _enableVariant = state
                                                              .data!
                                                              .enableVariant;
                                                        }
                                                      },
                                                    ),
                                                  ],
                                                ),
                                                // SizedBox(
                                                //   height: 10,
                                                // ),
                                                // Text(
                                                //   "Phân loại",
                                                //   style: TextStyle(
                                                //       fontWeight:
                                                //           FontWeight.w500),
                                                // ),
                                                // SizedBox(
                                                //   height: Dimensions
                                                //       .PADDING_SIZE_EXTRA_SMALL,
                                                // ),
                                                // Text(
                                                //   "Tạo phân loại nếu sản phẩm có nhiều thuộc tính khác nhau như màu sắc, kích thước...",
                                                //   style: TextStyle(
                                                //       fontSize: 12,
                                                //       fontWeight:
                                                //           FontWeight.w300),
                                                // ),
                                                // Padding(
                                                //   padding: const EdgeInsets
                                                //           .fromLTRB(
                                                //       0,
                                                //       Dimensions
                                                //           .PADDING_SIZE_SMALL,
                                                //       0,
                                                //       Dimensions
                                                //           .PADDING_SIZE_SMALL),
                                                state.data!.enableVariant
                                                    ? BlocBuilder<VariantCubit,
                                                        VariantState>(
                                                        builder:
                                                            (context, state) =>
                                                                Column(
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  width: 1,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
                                                                            5.0) //                 <--- border radius here
                                                                        ),
                                                              ),
                                                              child: state.data!
                                                                          .variantSelected !=
                                                                      null
                                                                  ? Column(
                                                                      children: [
                                                                        InkWell(
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Row(
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.all(8.0),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(
                                                                                        border: Border.all(
                                                                                          width: 1,
                                                                                          color: Colors.grey,
                                                                                        ),
                                                                                        borderRadius: const BorderRadius.all(Radius.circular(5.0) //                 <--- border radius here
                                                                                            ),
                                                                                      ),
                                                                                      width: Get.width * 0.13,
                                                                                      height: Get.width * 0.13,
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsets.all(Dimensions.MARGIN_SIZE_SMALL),
                                                                                        child: SizedBox(
                                                                                          width: Get.width * 0.07,
                                                                                          child: Image.asset(
                                                                                            "assets/images/food.jpg",
                                                                                            color: Colors.grey,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Column(
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        state.data!.variantSelected!.name.toString(),
                                                                                      ),
                                                                                      const SizedBox(
                                                                                        height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                                                                                      ),
                                                                                      Text(
                                                                                        state.data!.variantSelected!.id.toString(),
                                                                                        style: GlobalStyles.titilliumRegular(context),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsets.all(8.0),
                                                                                child: Row(
                                                                                  children: const [
                                                                                    SizedBox(
                                                                                      width: Dimensions.PADDING_SIZE_SMALL,
                                                                                    ),
                                                                                    Icon(
                                                                                      Icons.arrow_forward_ios,
                                                                                      size: 18,
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          onTap:
                                                                              () {
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
                                                                                  create: (context) => VariantCubit(),
                                                                                  child: SelectDialogWidget(
                                                                                      selectModeAddProduct: SelectModeAddProduct.variant,
                                                                                      isShowbutton: true,
                                                                                      item: state.data!.variant,
                                                                                      ontap: (v) {
                                                                                        _skuValueVariant = [];
                                                                                        _valueVariant = [];
                                                                                        _productVars = [];
                                                                                        _globalKey.currentContext!.read<VariantCubit>().variantSelected(v);

                                                                                        _variantSelected = v;
                                                                                        for (var element in _variantSelected!.values!) {
                                                                                          _skuValueVariant.add(TextEditingController());
                                                                                          _valueVariant.add(TextEditingController());
                                                                                        }
                                                                                        _productVars.add(ProductVari(_variantSelected, _skuValueVariant, _valueVariant));
                                                                                      })),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ],
                                                                    )
                                                                  : const SizedBox(),
                                                            ),
                                                            const SizedBox(
                                                              height: Dimensions
                                                                  .PADDING_SIZE_SMALL,
                                                            ),
                                                            state.data!.variantSelected !=
                                                                    null
                                                                ? Wrap(
                                                                    children: state
                                                                        .data!
                                                                        .variantSelected!
                                                                        .values!
                                                                        .map(
                                                                            (e) {
                                                                      return Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(vertical: Dimensions.PADDING_SIZE_SMALL),
                                                                            child:
                                                                                Text(
                                                                              "${'variant'.tr}: ${e.name}",
                                                                              style: const TextStyle(
                                                                                fontSize: 17,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Expanded(
                                                                                  flex: 1,
                                                                                  child: CustomTextField(
                                                                                    controller: _productVars.elementAt(0).skus.elementAt(state.data!.variantSelected!.values!.indexOf(e)),
                                                                                    hintText: '0.000'.tr,
                                                                                    hintLabel: 'sell_price'.tr,
                                                                                  )),
                                                                              const SizedBox(
                                                                                width: Dimensions.PADDING_SIZE_LARGE,
                                                                              ),
                                                                              Expanded(
                                                                                flex: 1,
                                                                                child: CustomTextField(
                                                                                  controller: _productVars.elementAt(0).values.elementAt(state.data!.variantSelected!.values!.indexOf(e)),
                                                                                  hintText: '0.000'.tr,
                                                                                  hintLabel: 'buy_price'.tr,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      );
                                                                    }).toList(),
                                                                  )
                                                                : const SizedBox(),
                                                            const SizedBox(
                                                              height: Dimensions
                                                                  .PADDING_SIZE_SMALL,
                                                            ),
                                                            state.data!.variantSelected ==
                                                                    null
                                                                ? ElevatedButton(
                                                                    onPressed:
                                                                        () {
                                                                      showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        shape:
                                                                            const RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.only(
                                                                            topLeft:
                                                                                Radius.circular(10),
                                                                            topRight:
                                                                                Radius.circular(10),
                                                                          ),
                                                                        ),
                                                                        context:
                                                                            context,
                                                                        builder: (context) => BlocProvider(
                                                                            create: (context) => VariantCubit(),
                                                                            child: SelectDialogWidget(
                                                                                selectModeAddProduct: SelectModeAddProduct.variant,
                                                                                isShowbutton: true,
                                                                                item: state.data!.variant,
                                                                                ontap: (v) {
                                                                                  _skuValueVariant = [];
                                                                                  _valueVariant = [];
                                                                                  _productVars = [];
                                                                                  _globalKey.currentContext!.read<VariantCubit>().variantSelected(v);

                                                                                  _variantSelected = v;
                                                                                  for (var element in _variantSelected!.values!) {
                                                                                    _skuValueVariant.add(TextEditingController());
                                                                                    _valueVariant.add(TextEditingController());
                                                                                  }
                                                                                  _productVars.add(ProductVari(_variantSelected, _skuValueVariant, _valueVariant));
                                                                                })),
                                                                      );
                                                                    },
                                                                    child:
                                                                        SizedBox(
                                                                      width: Get
                                                                          .width,
                                                                      height: Get
                                                                              .height *
                                                                          0.06,
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: const [
                                                                          Icon(Icons
                                                                              .add),
                                                                          SizedBox(
                                                                              width: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                                                                          Text(
                                                                              "Thêm phân loại"),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  )
                                                                : const SizedBox(),
                                                          ],
                                                        ),
                                                      )
                                                    : const SizedBox(),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                            height:
                                                Dimensions.PADDING_SIZE_SMALL),
                                        const SizedBox(
                                            height:
                                                Dimensions.PADDING_SIZE_SMALL),
                                        // Container(
                                        //   color: white,
                                        //   child: Padding(
                                        //     padding: const EdgeInsets.all(8.0),
                                        //     child: Row(
                                        //       mainAxisAlignment:
                                        //           MainAxisAlignment
                                        //               .spaceBetween,
                                        //       children: [
                                        //         Column(
                                        //           crossAxisAlignment:
                                        //               CrossAxisAlignment.start,
                                        //           children: [
                                        //             Text(
                                        //               "display_bulk_prices".tr,
                                        //               style: TextStyle(
                                        //                 fontSize: 15,
                                        //               ),
                                        //               overflow:
                                        //                   TextOverflow.ellipsis,
                                        //             ),
                                        //             SizedBox(
                                        //                 height: Dimensions
                                        //                     .PADDING_SIZE_EXTRA_EXTRA_SMALL),
                                        //             Container(
                                        //               width: Get.width * 0.8,
                                        //               child: Text(
                                        //                 "display_bulk_prices_more"
                                        //                     .tr,
                                        //                 style: TextStyle(
                                        //                     fontSize: 12,
                                        //                     fontWeight:
                                        //                         FontWeight
                                        //                             .w300),
                                        //                 overflow: TextOverflow
                                        //                     .ellipsis,
                                        //               ),
                                        //             ),
                                        //           ],
                                        //         ),
                                        //         Switch(
                                        //           activeColor:
                                        //               GlobalColors.primaryColor,
                                        //           value: _displayBulkProces,
                                        //           onChanged: (bool value) {
                                        //             setState(() {
                                        //               _displayBulkProces =
                                        //                   value;
                                        //             });
                                        //           },
                                        //         ),
                                        //       ],
                                        //     ),
                                        //   ),
                                        // ),
                                        const SizedBox(
                                            height:
                                                Dimensions.PADDING_SIZE_SMALL),
                                      ],
                                    ],
                                  )),

                          /// Product Expirty
                          BlocBuilder<AddProductCubit, AddProductState>(
                            builder: (context, state) {
                              return Column(
                                children: [
                                  Container(
                                    color: white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "online_selling_information".tr,
                                              style: const TextStyle(
                                                fontSize: 15,
                                                color:
                                                    GlobalColors.primaryColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Icon(
                                                state.data!.enableProductExpiry
                                                    ? Icons.arrow_drop_up
                                                    : Icons.arrow_drop_down,
                                                color:
                                                    GlobalColors.primaryColor),
                                          ],
                                        ),
                                        onTap: () => _globalKey.currentContext!
                                            .read<AddProductCubit>()
                                            .changeEnableProductExpiry(
                                                state.data!.enableProductExpiry
                                                    ? false
                                                    : true),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: Dimensions.PADDING_SIZE_SMALL,
                                  ),
                                  if (state.data!.enableProductExpiry ==
                                      true) ...[
                                    Container(
                                      padding: const EdgeInsets.all(
                                          Dimensions.PADDING_SIZE_DEFAULT),
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          BlocBuilder<BranchCubit, BranchState>(
                                            builder: (context, state) {
                                              return Column(
                                                children: [
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  InputDecorator(
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets
                                                                  .symmetric(
                                                              vertical: 1.0),
                                                      label: Row(
                                                        children: [
                                                          Text(
                                                              'product_labeling'
                                                                  .tr
                                                                  .tr),
                                                          IconButton(
                                                            onPressed: () {},
                                                            icon: const Icon(Icons
                                                                .info_outline),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                    borderRadius: const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
                                                                            10.0) //                 <--- border radius here
                                                                        ),
                                                                    color: Colors
                                                                            .orange[
                                                                        900]),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: ClipRRect(
                                                                clipBehavior:
                                                                    Clip.hardEdge,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30),
                                                                child:
                                                                    const Text(
                                                                  "Plus",
                                                                  textScaleFactor:
                                                                      0.6,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      labelStyle:
                                                          const TextStyle(
                                                              fontSize: 22,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                      // border: OutlineInputBorder(
                                                      //     borderRadius: BorderRadius.circular(
                                                      //         Dimensions.PADDING_SIZE_EXTRA_SMALL)),
                                                    ),
                                                    child:
                                                        DropdownButtonHideUnderline(
                                                      child: Stack(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              TextButton(
                                                                onPressed: () {
                                                                  showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    shape:
                                                                        const RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(10),
                                                                        topRight:
                                                                            Radius.circular(10),
                                                                      ),
                                                                    ),
                                                                    context:
                                                                        context,
                                                                    builder: (context) => BlocProvider(
                                                                        create: (context) => BranchCubit(),
                                                                        child: SelectDialogWidget(
                                                                            selectModeAddProduct: SelectModeAddProduct.branch,
                                                                            isShowbutton: true,
                                                                            ontap: (v) {
                                                                              _globalKey.currentContext!.read<BranchCubit>().branchSelected(v);
                                                                              _selectBranchId = v.id;
                                                                            })),
                                                                  );
                                                                },
                                                                child: state.data!
                                                                            .branchSelected !=
                                                                        null
                                                                    ? Row(
                                                                        children: [
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(30),
                                                                              color: Colors.white,
                                                                              boxShadow: const [
                                                                                BoxShadow(color: Colors.grey, spreadRadius: 1),
                                                                              ],
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(5.0),
                                                                                child: Row(
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  children: [
                                                                                    Text(
                                                                                      state.data!.branchSelected!.name ?? "",
                                                                                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w100, color: state.data!.branch != null ? Colors.black : Colors.grey),
                                                                                    ),
                                                                                    Container(
                                                                                      alignment: Alignment.centerRight,
                                                                                      height: 15,
                                                                                      width: 15,
                                                                                      child: InkWell(
                                                                                        onTap: () => _globalKey.currentContext!.read<UnitCubit>().setUnitSelect(null),
                                                                                        child: const Icon(
                                                                                          Icons.cancel,
                                                                                          color: Colors.grey,
                                                                                          size: 13,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          const SizedBox(
                                                                              width: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                                                                        ],
                                                                      )
                                                                    : Text(
                                                                        'select_category'
                                                                            .tr,
                                                                        style: const TextStyle(
                                                                            color:
                                                                                GlobalColors.hintMenuTextColor,
                                                                            fontWeight: FontWeight.w300)),
                                                              ),
                                                              const Icon(
                                                                  Icons
                                                                      .arrow_drop_down,
                                                                  color: Colors
                                                                      .black38)
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: Dimensions
                                                        .PADDING_SIZE_SMALL,
                                                  ),
                                                  CustomTextField(
                                                    controller: _txtDescription,
                                                    hintLabel: 'designation'.tr,
                                                    hintText:
                                                        'example_description'
                                                            .tr,
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: Dimensions.PADDING_SIZE_SMALL,
                                    ),
                                    Container(
                                      color: white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(
                                            Dimensions.PADDING_SIZE_SMALL),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "not_for_sell".tr,
                                                  style: const TextStyle(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Switch(
                                              activeColor:
                                                  GlobalColors.primaryColor,
                                              value: state.data!.notForSell,
                                              onChanged: (bool value) {
                                                _globalKey.currentContext!
                                                    .read<AddProductCubit>()
                                                    .changeNotForSell(value);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ],
                              );
                            },
                          ),

                          /// Product Type
                          const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),

                          ///Save
                          const SizedBox(
                              height: Dimensions.PADDING_SIZE_Thirty_Five),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.1,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.addProductType == AddType.UPDATE
                  ? CustomButton(
                      type: ButtonType.BUTTON_TEXT,
                      color: Colors.white,
                      label: "delete".tr,
                      style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.FONT_SIZE_LARGE),
                      borderColor: Colors.red,
                      onPressed: () async {
                        _globalKey.currentContext!
                            .read<AddProductCubit>()
                            .deleteProduct(id: widget.product!.id!);
                      },
                    )
                  : CustomButton(
                      type: ButtonType.BUTTON_TEXT,
                      color: Colors.white,
                      label: "add_more".tr,
                      style: const TextStyle(
                          color: GlobalColors.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.FONT_SIZE_LARGE),
                      borderColor: GlobalColors.primaryColor,
                      onPressed: () async {},
                    ),
              const SizedBox(
                width: Dimensions.PADDING_SIZE_SMALL,
              ),
              CustomButton(
                type: ButtonType.BUTTON_TEXT,
                color: GlobalColors.primaryColor,
                label: "save".tr,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.FONT_SIZE_LARGE),
                borderColor: GlobalColors.primaryColor,
                onPressed: () async {
                  List<ProductVariationRequest> prs = [];
                  List<VariationRequest> variations = [];

                  if (_productVars.isNotEmpty) {
                    for (var element in _variantSelected!.values!) {
                      VariationRequest variationRequest = VariationRequest(
                        subSku: element.name,
                        id: element.id,
                        value: element.name,
                        dppIncTax: 0,
                        profitPercent: 0,
                        sellPriceIncTax: 0,
                        defaultPurchasePrice: _valueVariant[
                                _variantSelected!.values!.indexOf(element)]
                            .text
                            .toDouble(),
                        defaultSellPrice: _skuValueVariant[
                                _variantSelected!.values!.indexOf(element)]
                            .text
                            .toDouble(),
                      );
                      variations.add(variationRequest);
                      // prs.add(ProductVariationRequest(
                      //   id: element.id,
                      //   name: element.name,
                      // ));
                    }
                    prs.add(ProductVariationRequest(
                        variationTemplateId: _variantSelected!.id,
                        variationRequests: variations));
                  }
                  if (widget.addProductType == AddType.UPDATE) {
                    _globalKey.currentContext!
                        .read<AddProductCubit>()
                        .updateProduct(
                            productId: widget.product!.id!,
                            name: _txtProductName.text.trim(),
                            branchId: _selectBranchId,
                            unitId: _selectUnitId,
                            categoryId: _selectCategoryId,
                            sku: _txtSKU.text.trim(),
                            defaultPurchasePrice:
                                _defaultPurchasePrice.text.toDouble(),
                            defaultSellPrice: _defaultSellPrice.text.toDouble(),
                            alertQuantity: _txtSKU.text.trim(),
                            productDescription: _txtDescription.text.trim(),
                            expiryPeriodType: _txtExpiryPeriodType.text.trim(),
                            expiryPeriod: _txtExpiryPeriod.text.trim(),
                            productVariationRequests: prs,
                            slug: "ao-thun-mua-he",
                            barcodeType: "c128",
                            subCategoryId: null,
                            productLocations: "68",
                            enableStock: "1",
                            imageName: null,
                            weight: "1000",
                            productCustomField1: null,
                            productCustomField2: null,
                            productCustomField3: null,
                            productCustomField4: null,
                            tax: null,
                            taxType: "exclusive",
                            featured: "0",
                            singleVariationId: "530",
                            singleDpp: "300,000.00",
                            singleDppIncTax: "300,000.00",
                            profitPercent: "375,000.00",
                            singleDsp: "300,000.00",
                            singleDspIncTax: "375,000.00",
                            submitType: "submit");
                  } else {
                    _globalKey.currentContext!
                        .read<AddProductCubit>()
                        .addProduct(
                          name: _txtProductName.text.trim(),
                          sku: _txtSKU.text.trim(),
                          branchId: _selectBranchId,
                          unitId: _selectUnitId,
                          categoryId: _selectCategoryId,
                          alertQuantity: _txtQtyWarning.text.trim(),
                          productDescription: _txtDescription.text.trim(),
                          defaultSellPrice: _defaultSellPrice.text.toDouble(),
                          expiryPeriodType: _txtExpiryPeriodType.text.trim(),
                          expiryPeriod: _txtExpiryPeriod.text.trim(),
                          productVariationRequests: prs,
                        );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _productVariantion(int i) {
    return Padding(
      padding: const EdgeInsets.only(top: Dimensions.PADDING_SIZE_SMALL),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: BlocBuilder<VariantCubit, VariantState>(
                  builder: (context, state) {
                    final variantionTemplates = state.data!.variants;
                    if (variantionTemplates.isNotEmpty &&
                        _productVars[i].template!.id == null) {
                      _productVars[i].template = null;
                    }
                    return CustomDropDownWithT<Variant>(
                      labelText: 'variantion_template'.tr,
                      items: variantionTemplates
                          .map<DropdownMenuItem<Variant>>(
                            (Variant value) => DropdownMenuItem<Variant>(
                              value: value,
                              child: Text(value.name!),
                            ),
                          )
                          .toList(),
                      value: _productVars[i].template,
                      onChanged: (dynamic value) => setState(() {
                        _productVars[i].template = value;
                        _productVars[i].values.clear();
                        _productVars[i].skus.clear();
                        for (var element in _productVars[i].template!.values!) {
                          _productVars[i].skus.add(TextEditingController());
                          _productVars[i]
                              .values
                              .add(TextEditingController(text: element.name!));
                        }
                      }),
                    );
                  },
                ),
              ),
              const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: GlobalColors.successColor,
                    borderRadius: BorderRadius.circular(5)),
                child: IconButton(
                  onPressed: () {
                    final sku = TextEditingController();
                    final value = TextEditingController();
                    _productVars[i].skus.add(sku);
                    _productVars[i].values.add(value);
                    setState(() => _productVars);
                  },
                  icon: const Icon(
                    Icons.add,
                    color: GlobalColors.kDarkWhite,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: List.generate(
              _productVars[i].skus.length,
              (j) => NewVariantion(
                skuController: _productVars[i].skus[j],
                valueController: _productVars[i].values[j],
                remove: () {
                  _productVars[i].skus.removeAt(j);
                  _productVars[i].values.removeAt(j);
                  setState(() {
                    if (_productVars[i].skus.isEmpty) {
                      _productVars.removeAt(i);
                    }
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
