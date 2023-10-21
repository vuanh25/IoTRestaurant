import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/global_formatter.dart';

enum SelectType { inProduct, inOrder }

class productGirdViewWidget extends StatelessWidget {
  const productGirdViewWidget(
      {Key? key, this.product, this.onTap, this.selectType})
      : super(key: key);
  final Product? product;
  final Function(Product? product)? onTap;
  final SelectType? selectType;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(product),
      child: Card(
        elevation: 1.0,

        semanticContainer: true,

        shadowColor: Colors.black26,

        //margin: EdgeInsets.all(10.0),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),

        child: SizedBox(
          //height: Get.height * 0.24,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Stack(alignment: AlignmentDirectional.center, children: [
                  CachedNetworkImage(
                    width: selectType == SelectType.inOrder
                        ? Get.width * 0.3
                        : Get.width * 0.45,
                    height: selectType == SelectType.inOrder
                        ? Get.width * 0.3
                        : Get.width * 0.45,
                    fit: BoxFit.cover,
                    imageUrl: product?.imageUrl ?? '',
                    errorWidget: (context, url, error) =>
                        const ErrorWidgetImage(),
                  ),
                ]),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                height: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      product?.name ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(selectType == SelectType.inOrder
                        ? GlobalFormatter.formatCurrency(double.tryParse(
                                product!.productVariations!.first!.variations!
                                    .first!.defaultSellPrice!) ??
                            0)
                        : product?.sku ?? ''),
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
