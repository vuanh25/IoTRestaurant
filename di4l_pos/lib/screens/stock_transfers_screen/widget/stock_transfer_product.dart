import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/stock_transfers/response/stock_transfers_detail_response.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/common/extensions/string_extension.dart';

class StockTransferProduct extends StatelessWidget {
  final SellLines sellLine;
  const StockTransferProduct({
    Key? key, required this.sellLine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subtotal = sellLine.quantity! *
        sellLine.unitPrice!.parseDouble();
    final subtotalFormat = subtotal.toString();    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: GlobalColors.whiteColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                height: 80,
                width: 80,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  child: CachedNetworkImage(
                    imageUrl:
                        sellLine.product!.imageUrl ?? '',
                    errorWidget: (context, url, error) => const ErrorWidgetImage(),
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'products'.tr,
                        style: const TextStyle(
                          fontSize: 16,
                          color: GlobalColors.kGreyTextColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        '${sellLine.product!.name}',
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'quantity'.tr,
                        style: const TextStyle(
                          fontSize: 16,
                          color: GlobalColors.kGreyTextColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${sellLine.quantity!}',
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'unit_price'.tr,
                        style: const TextStyle(
                          fontSize: 16,
                          color: GlobalColors.kGreyTextColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            '₫',
                            style: GlobalStyles.titilliumSemiBold1(context),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            sellLine.unitPrice!.formatMoney(),
                            style: GlobalStyles.titilliumSemiBold1(context),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'subtotal'.tr,
                        style: const TextStyle(
                          fontSize: 16,
                          color: GlobalColors.kGreyTextColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            '₫',
                            style: GlobalStyles.titilliumSemiBold1(context),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            subtotalFormat.formatMoney(),
                            style: GlobalStyles.titilliumSemiBold1(context),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

