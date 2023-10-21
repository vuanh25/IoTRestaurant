// ignore_for_file: unnecessary_string_interpolations

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/reports/responses/report_stock_response.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../route_generator.dart';

class ProductsInStock extends StatefulWidget {
  final int? index;
  final ReportStockData? reportStockData;

  static MultiBlocProvider provider(
      {final ReportStockData? reportStockData, final int? index}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsCubit>(
          create: (context) => ProductsCubit(),
        ),
      ],
      child: ProductsInStock(
        reportStockData: reportStockData,
        index: index,
      ),
    );
  }

  const ProductsInStock({
    Key? key,
    this.reportStockData,
    this.index,
  }) : super(key: key);

  @override
  State<ProductsInStock> createState() => _ProductsInStockState();
}

class _ProductsInStockState extends State<ProductsInStock>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context
        .read<ProductsCubit>()
        .getProductById(id: widget.reportStockData!.productId!);
  }

  @override
  void didUpdateWidget(ProductsInStock oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.reportStockData != oldWidget.reportStockData) {
      context
          .read<ProductsCubit>()
          .getProductById(id: widget.reportStockData!.productId!);
    }
  }
  final globalKey = GlobalKey<ScaffoldState>(); // <=== dòng này

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        final product = state.data?.product;
        return Container(
          //padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
          child: Row(
            children: [
              Text('${widget.index}'),
              const SizedBox(
                width: 8,
              ),
              CachedNetworkImage(
                imageUrl: '${product?.imageUrl}',
                width: 50,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              const SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {
                  navigator!
                      .pushNamed(RouteGenerator.addProductsStockScreen, arguments: {
                    'PRODUCT': product,
                    'GLOBAL_KEY': globalKey
                  });
                },
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${product?.name}',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: GlobalStyles.robotoRegular(context).copyWith(
                              color: GlobalColors.primaryWebColor,
                              fontSize: 18,
                            ),
                          ),
                          // Text(
                          //   GlobalFormatter.formatNumber(
                          //       source:
                          //           widget.reportStockData!.stockPrice ?? ''),
                          //   // style: GlobalStyles.robotoBold(context).copyWith(
                          //   //   color: GlobalColors.primaryWebColor,
                          //   //   fontSize: 16,
                          //   // ),
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              GlobalFormatter.formatNumber(
                                  source:
                                      widget.reportStockData!.unitPrice ?? ''),
                              style: GlobalStyles.robotoBold(context).copyWith(
                                color: GlobalColors.primaryWebColor,
                                fontSize: 16,
                              ),
                            ),
                          ]),
                      const SizedBox(
                        height: 8,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'SL: ',
                          style: GlobalStyles.robotoRegular(context).copyWith(
                            color: GlobalColors.kGreyTextColor,
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: GlobalFormatter.formatNumber(
                                  source: '${widget.reportStockData!.stock}'),
                              // style:
                              //     GlobalStyles.robotoBold(context).copyWith(
                              //   color: GlobalColors.primaryWebColor,
                              //   fontSize: 16,
                              // ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      !widget.reportStockData!.type!.contains('single')
                          ? Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text:
                                        '${widget.reportStockData!.productVariation}: ',
                                    style: GlobalStyles.robotoRegular(context)
                                        .copyWith(
                                      color: GlobalColors.kGreyTextColor,
                                      fontSize: 16,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: GlobalFormatter.formatString(
                                          '${widget.reportStockData!.variationName}',
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
