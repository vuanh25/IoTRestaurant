import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/screens/order_screen/cubit/order_cubit.dart';
import 'package:di4l_pos/screens/table_order_screen/widgets/custom_divider.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:di4l_pos/screens/table_order_screen/cubit/table_order_cubit.dart';
import 'package:di4l_pos/screens/table_order_screen/widgets/price_with_type.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/common/global_styles.dart';

class NewOrderDetail extends StatefulWidget {
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SalesOrderCubit>(
          create: (context) => SalesOrderCubit(),
        ),
        BlocProvider<TableCubit>(
          create: (BuildContext context) => TableCubit(),
        ),
        BlocProvider<ProductsCubit>(
          create: (BuildContext context) => ProductsCubit(),
        ),
      ],
      child: const NewOrderDetail(),
    );
  }

  const NewOrderDetail({Key? key}) : super(key: key);

  @override
  State<NewOrderDetail> createState() => _NewOrderDetailState();
}

class _NewOrderDetailState extends State<NewOrderDetail> with AfterLayoutMixin {
  /// MARK: - Initials;
  bool isCart = true;
  bool isEdit = false;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<SalesOrderCubit>().getSell();
    context.read<ProductsCubit>().getProducts();
    context.read<TableCubit>().getTables();
  }

  // final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  int stringToInt(String? str) {
    return (double.parse(str!)).toInt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // key: _globalKey,
        leading: MaterialButton(
          onPressed: () {
            navigator!.pop();
          },
          child: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
        title: Text('table_order'.tr),
        titleTextStyle: GlobalStyles.robotoBold(context).copyWith(
          fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
          color: Colors.black,
        ),
        toolbarHeight: 55,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 10,
        shadowColor: Colors.white54,
      ),
      body: BlocBuilder<SalesOrderCubit, SalesOrderState>(
        buildWhen: (previous, current) =>
            previous.data!.status != current.data!.status,
        builder: (context, sellState) {
          final sellData = sellState.data?.sells ?? [];
          switch (sellState.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return sellData.isNotEmpty
                  ? SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                        vertical: Dimensions.PADDING_SIZE_DEFAULT,
                        horizontal: Dimensions.PADDING_SIZE_LARGE,
                      ),
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          SizedBox(
                            child: ListView.builder(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              shrinkWrap: true,
                              itemCount: sellData.length,
                              itemBuilder: (context, indexSell) {
                                discountAmountWithPercentage() {
                                  return ((double.parse(sellData[indexSell]
                                                  .discountAmount!) /
                                              100) *
                                          double.parse(sellData[indexSell]
                                              .totalBeforeTax!))
                                      .toInt();
                                }

                                return sellData[indexSell].id == 932
                                    ? Column(
                                        children: [
                                          Text(
                                            'Order ${sellData[indexSell].id}',
                                            style:
                                                GlobalStyles.robotoBold(context)
                                                    .copyWith(
                                              fontSize: Dimensions
                                                  .FONT_SIZE_EXTRA_LARGE,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge!
                                                  .color,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: Dimensions
                                                .PADDING_SIZE_EXTRA_EXTRA_SMALL,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                'Invoice No.${sellData[indexSell].invoiceNo}',
                                                style: GlobalStyles.robotoBold(
                                                    context),
                                              ),
                                              Text(
                                                '${sellData[indexSell].createdAt}',
                                                style:
                                                    GlobalStyles.robotoRegular(
                                                            context)
                                                        .copyWith(
                                                  fontSize: Dimensions
                                                      .FONT_SIZE_DEFAULT,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: Dimensions
                                                .PADDING_SIZE_EXTRA_EXTRA_SMALL,
                                          ),
                                          BlocBuilder<TableCubit, TableState>(
                                            builder: (context, tableState) {
                                              final tableData =
                                                  tableState.data?.tables ?? [];
                                              for (var i = 0;
                                                  i < tableData.length;
                                                  i++) {
                                                if (sellData[indexSell]
                                                        .resTableId ==
                                                    tableData[i].id) {
                                                  return Text(
                                                    '${tableData[i].name}',
                                                    style: GlobalStyles
                                                        .robotoRegular(context),
                                                    textAlign: TextAlign.center,
                                                  );
                                                }
                                              }

                                              return const SizedBox();
                                            },
                                          ),
                                          const SizedBox(
                                            height:
                                                Dimensions.PADDING_SIZE_DEFAULT,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                flex: 4,
                                                child: Text(
                                                  'food'.tr,
                                                  style:
                                                      GlobalStyles.robotoBold(
                                                              context)
                                                          .copyWith(
                                                    fontSize: Dimensions
                                                        .FONT_SIZE_LARGE,
                                                  ),
                                                ),
                                              ),
                                              const Text('|'),
                                              Expanded(
                                                child: Center(
                                                  child: Text(
                                                    'qt'.tr,
                                                    style:
                                                        GlobalStyles.robotoBold(
                                                                context)
                                                            .copyWith(
                                                      fontSize: Dimensions
                                                          .FONT_SIZE_LARGE,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Text('|'),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  'price_one'.tr,
                                                  style:
                                                      GlobalStyles.robotoBold(
                                                              context)
                                                          .copyWith(
                                                    fontSize: Dimensions
                                                        .FONT_SIZE_LARGE,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              if (isEdit)
                                                const Expanded(
                                                    child: SizedBox()),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: Dimensions
                                                .PADDING_SIZE_EXTRA_SMALL,
                                          ),
                                          CustomDivider(
                                            color:
                                                Theme.of(context).disabledColor,
                                          ),
                                          ListView.builder(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount: sellData[indexSell]
                                                .sellLines!
                                                .length,
                                            shrinkWrap: true,
                                            itemBuilder:
                                                (context, indexSellLines) {
                                              final sellLines = sellData[
                                                      indexSell]
                                                  .sellLines![indexSellLines];
                                              caculateTotalPriceOneItem() {
                                                return (double.parse(sellLines
                                                            .unitPrice!) *
                                                        sellLines.quantity!)
                                                    .toInt();
                                              }

                                              return Column(
                                                children: [
                                                  InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      constraints:
                                                          const BoxConstraints(
                                                              minHeight: 70),
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: Dimensions
                                                            .MARGIN_SIZE_SMALL,
                                                      ),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            flex:
                                                                isEdit ? 5 : 4,
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                BlocBuilder<
                                                                    ProductsCubit,
                                                                    ProductsState>(
                                                                  builder: (context,
                                                                      productState) {
                                                                    final productData =
                                                                        productState.data?.products ??
                                                                            [];
                                                                    for (var i =
                                                                            0;
                                                                        i < productData.length;
                                                                        i++) {
                                                                      if (sellLines
                                                                              .productId ==
                                                                          productData[i]
                                                                              .id) {
                                                                        return Text(
                                                                          '${productData[i].name}',
                                                                          style:
                                                                              GlobalStyles.robotoRegular(context).copyWith(
                                                                            fontSize:
                                                                                Dimensions.FONT_SIZE_LARGE,
                                                                          ),
                                                                          maxLines:
                                                                              5,
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                        );
                                                                      }
                                                                    }

                                                                    return const SizedBox();
                                                                  },
                                                                ),
                                                                const SizedBox(
                                                                  height: Dimensions
                                                                      .PADDING_SIZE_EXTRA_SMALL,
                                                                ),
                                                                Text(
                                                                  '${stringToInt(sellLines.unitPrice)}đ',
                                                                  style: GlobalStyles
                                                                          .robotoRegular(
                                                                              context)
                                                                      .copyWith(
                                                                    color: Theme.of(
                                                                            context)
                                                                        .hintColor,
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: Dimensions
                                                                      .PADDING_SIZE_EXTRA_SMALL,
                                                                ),
                                                                Text(
                                                                  '${'addons_food'.tr}: ...',
                                                                  style: GlobalStyles
                                                                          .robotoRegular(
                                                                              context)
                                                                      .copyWith(
                                                                    fontSize:
                                                                        Dimensions
                                                                            .FONT_SIZE_SMALL,
                                                                    color: Theme.of(
                                                                            context)
                                                                        .hintColor,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                horizontal:
                                                                    Dimensions
                                                                        .PADDING_SIZE_EXTRA_SMALL,
                                                              ),
                                                              child: Text(
                                                                '${sellLines.quantity}',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: GlobalStyles
                                                                    .robotoRegular(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 2,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                horizontal:
                                                                    Dimensions
                                                                        .PADDING_SIZE_EXTRA_SMALL,
                                                              ),
                                                              child: Text(
                                                                '${caculateTotalPriceOneItem()}đ',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: GlobalStyles
                                                                    .robotoRegular(
                                                                        context),
                                                                maxLines: 1,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                          const SizedBox(
                                            height:
                                                Dimensions.PADDING_SIZE_DEFAULT,
                                          ),
                                          // NoteOrder(
                                          //   text: sellData[indexSell]
                                          //       .additionalNotes,
                                          // ),
                                          const SizedBox(
                                            height:
                                                Dimensions.PADDING_SIZE_LARGE,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomDivider(
                                                color: Theme.of(context)
                                                    .disabledColor,
                                              ),
                                              const SizedBox(
                                                height: Dimensions
                                                    .PADDING_SIZE_SMALL,
                                              ),
                                              PriceWithType(
                                                type: 'items_price_food'.tr,
                                                amount:
                                                    '${stringToInt(sellData[indexSell].totalBeforeTax)}đ',
                                              ),
                                              PriceWithType(
                                                type: 'discount_food'.tr,
                                                amount: sellData[indexSell]
                                                            .discountType ==
                                                        'percentage'
                                                    ? '- ${discountAmountWithPercentage()}đ'
                                                    : '- ${stringToInt(sellData[indexSell].discountAmount)}đ',
                                              ),
                                              PriceWithType(
                                                type: 'vat_tax_food'.tr,
                                                amount:
                                                    '+ ${stringToInt(sellData[indexSell].taxAmount)}đ',
                                              ),
                                              PriceWithType(
                                                type: 'addons_food'.tr,
                                                amount: '+ 0đ',
                                              ),
                                              PriceWithType(
                                                type: 'total_food'.tr,
                                                amount:
                                                    '${stringToInt(sellData[indexSell].finalTotal)}đ',
                                                isTotal: true,
                                              ),
                                              // if (sellData[indexSell]
                                              //         .paymentLines![0]. ==
                                              //     'cash') ...[
                                              //   PriceWithType(
                                              //     type: 'paid_amount_food'.tr,
                                              //     amount: '0đ',
                                              //   ),
                                              //   PriceWithType(
                                              //     type: 'change_food'.tr,
                                              //     amount: '0đ',
                                              //   ),
                                              // ]
                                            ],
                                          ),
                                        ],
                                      )
                                    : const SizedBox();
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  : const NoDataWidget();
            case StatusType.error:
              return const Error404Widget();
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
