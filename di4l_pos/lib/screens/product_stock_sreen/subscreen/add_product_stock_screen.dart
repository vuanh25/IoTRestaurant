import 'dart:async';

import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/screens/product_stock_sreen/subscreen/cubit/add_product_stock_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';

class AddProductStockScreen extends StatefulWidget {
  /// MARK: - Initials;
  final Product? product;

  static MultiBlocProvider provider(
      {GlobalKey<ScaffoldState>? globalKey, Product? product}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddProductStockCubit>(
          create: (BuildContext context) => AddProductStockCubit(),
        ),
      ],
      child: AddProductStockScreen(
        product: product,
      ),
    );
  }

  const AddProductStockScreen({
    Key? key,
    this.product,
  }) : super(key: key);

  @override
  State<AddProductStockScreen> createState() => _AddProductStockScreenState();
}

class _AddProductStockScreenState extends State<AddProductStockScreen>
    with AfterLayoutMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController textName = TextEditingController();
  final TextEditingController inStock = TextEditingController();
  final TextEditingController price = TextEditingController();
  final TextEditingController totalForEach = TextEditingController();
  final TextEditingController dateAdded = TextEditingController();
  final TextEditingController note = TextEditingController();
  final TextEditingController unit = TextEditingController();

  BusinessLocation? location;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context
        .read<AddProductStockCubit>()
        .getBusinessLocation()
        .then((value) => location = value);
    textName.text = widget.product!.name ?? '';
    inStock.text = widget.product!.alertQuantity ?? '';
    unit.text = widget.product!.unit!.shortName ?? '';
    dateAdded.text = getCurrentDate();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddProductStockCubit, AddProductStockState>(
      listener: (context, state) async {
        if (state.data!.error != "") {
          if (state.data!.error == "add_product_stock_success") {
            UIHelpers.showSnackBar(
                message: state.data!.error.tr, type: SnackBarType.SUCCESS);
          } else {
            UIHelpers.showSnackBar(
                message: state.data!.error.tr, type: SnackBarType.ERROR);
          }
        }
      },
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: CustomAppBar(
            backgroundColor: Colors.white,
            textColor: GlobalColors.getTextTitle(context),
            title: 'add_product_in_stock'.tr,
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
                          horizontal: Dimensions.PADDING_SIZE_DEFAULT,
                          vertical: Dimensions.PADDING_SIZE_SMALL),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BlocBuilder<AddProductStockCubit,
                              AddProductStockState>(
                            builder: (context, state) {
                              return Text(
                                '${"location".tr}: ${location?.name} (${location?.locationId})',
                                style: GlobalStyles.titleHeader(context),
                              );
                            },
                          ),
                          const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                          // Product
                          Column(
                            children: [
                              CustomTextField(
                                redLabel: ' *',
                                controller: textName,
                                hintLabel: 'product_name'.tr,
                                readOnly: true,
                              ),
                              const SizedBox(
                                height: Dimensions.PADDING_SIZE_SMALL,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: CustomTextField(
                                      redLabel: " *",
                                      controller: inStock,
                                      hintText: '${widget.product!.alertQuantity}',
                                      hintLabel: 'leftover_quantity'.tr,
                                      onchanged: (value) {
                                        setState(() {
                                          totalForEach.text = (value!.toInt() *
                                                  price.text.toInt())
                                              .toString();
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: Dimensions.PADDING_SIZE_LARGE,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: CustomTextField(
                                      controller: unit,
                                      readOnly: true,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                          //Price (before tax)
                          CustomTextField(
                            redLabel: " *",
                            controller: price,
                            hintText: '0',
                            hintLabel: 'price_(before_tax)'.tr,
                            onchanged: (value) {
                              setState(() {
                                totalForEach.text =
                                    (value!.toInt() * inStock.text.toInt())
                                        .toString();
                              });
                            },
                          ),
                          //Total price
                          const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                          CustomTextField(
                            controller: totalForEach,
                            hintLabel: 'total_price_(before_tax)'.tr,
                            hintText: "0".tr,
                            readOnly: true,
                          ),
                          //Date added
                          const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                          CustomTextField(
                            controller: dateAdded,
                            hintLabel: 'date'.tr,
                            readOnly: true,
                          ),
                          //Note
                          const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                          CustomTextField(
                            controller: note,
                            hintLabel: 'note'.tr,
                          ),
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
              CustomButton(
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
                  context.read<AddProductStockCubit>().addProductStock(
                        quantity: inStock.text,
                        price: price.text,
                        note: note.text,
                        dateAdded: dateAdded.text,
                        product: widget.product,
                      );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  getCurrentDate() {
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('dd/MM/yyyy HH:mm');
    return formatter.format(now);
  }
}
