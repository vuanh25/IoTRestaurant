import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatefulWidget {
  /// MARK: - Initials;
  final Product? product;
  final Function(Product?) onTap;

  const ProductWidget({
    Key? key,
    this.product,
    required this.onTap,
  }) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  final appPrefs = getIt<AppPref>();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: Colors.black26,
      margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            /// Image
            SizedBox(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                child: CachedNetworkImage(
                  imageUrl: widget.product?.imageUrl ?? '',
                  errorWidget: (context, url, error) =>
                      const ErrorWidgetImage(),
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
                    title: widget.product?.name ?? '',
                  ),

                  /// Sell price
                  const SizedBox(height: 8.0),
                  CustomRichText(
                    value: widget.product?.productVariations?[0]!
                        .variations?[0]!.defaultSellPrice,
                  ),

                  /// Warehouse quantity
                  const SizedBox(height: 8.0),
                  CustomRichText(
                      value: 'Kho: ${getWareHouseStock().toString()}'),
                ],
              ),
            ),
            InkWell(
              onTap: () => widget.onTap(widget.product),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: GlobalColors.appBar2),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.storage_rounded,
                    color: GlobalColors.appBar2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getWareHouseStock() {
    int stock = 0;
    for (int i = 0; i < widget.product!.purchaseLines!.length; i++) {
      stock += widget.product!.purchaseLines![i]!.quantity!;
    }
    // widget.product!.purchaseLines!.map((x) => stock += x!.quantity!);
    return stock;
  }
}
