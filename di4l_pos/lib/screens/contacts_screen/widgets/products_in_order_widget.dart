// ignore_for_file: unnecessary_string_interpolations

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/sell/response/sell_response.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsInOrder extends StatefulWidget {
  /// MARK: - Initials;
  // final ContactModel? contact;
  final SellLine? sellLine;
  final int? index;

  static MultiBlocProvider provider({
    final SellLine? sellLine,
    final int? index,
  }) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsCubit>(
          create: (context) => ProductsCubit(),
        ),
      ],
      child: ProductsInOrder(
        sellLine: sellLine,
        index: index,
      ),
    );
  }

  const ProductsInOrder({
    Key? key,
    this.index,
    this.sellLine,
  }) : super(key: key);

  @override
  State<ProductsInOrder> createState() => _ProductsInOrderState();
}

class _ProductsInOrderState extends State<ProductsInOrder>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context
        .read<ProductsCubit>()
        .getProductById(id: widget.sellLine!.productId!);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        final product = state.data?.product;
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: [
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${product?.name}',
                      style: GlobalStyles.robotoRegular(context).copyWith(
                        color: GlobalColors.primaryWebColor,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            GlobalFormatter.formatNumber(
                                source: widget.sellLine!.unitPrice ?? ''),
                            style: GlobalStyles.robotoBold(context).copyWith(
                              color: GlobalColors.primaryWebColor,
                              fontSize: 16,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'SL : ',
                              style:
                                  GlobalStyles.robotoRegular(context).copyWith(
                                color: GlobalColors.kGreyTextColor,
                                fontSize: 16,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '${widget.sellLine!.quantity}',
                                  style:
                                      GlobalStyles.robotoBold(context).copyWith(
                                    color: GlobalColors.primaryWebColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ])
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
