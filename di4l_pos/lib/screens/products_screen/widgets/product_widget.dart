import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductWidget extends StatelessWidget {
  /// MARK: - Initials;
  final Product? product;
  final Function(Product?) onTap;

  const ProductWidget({
    Key? key,
    this.product,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: Colors.black26,
      margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                /// Image
                Container(
                  height: 80,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    child: CachedNetworkImage(
                      imageUrl: product?.imageUrl ?? '',
                      errorWidget: (context, url, error) => ErrorWidgetImage(),
                    ),
                  ),
                ),

                /// Details
                const SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Name
                      const SizedBox(height: 8.0),
                      CustomRichText(
                        title: 'product_name'.tr,
                        value: product?.name ?? '',
                      ),

                      /// Sell price
                      const SizedBox(height: 8.0),
                      CustomRichText(
                        title: 'sell_price'.tr,
                        value: '0',
                      ),

                      /// Warehouse quantity
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 40,
            right: 8,
            child: InkWell(
              onTap: () => onTap(product),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: GlobalColors.appBar2)),
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.share_outlined,
                      color: GlobalColors.appBar2,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
