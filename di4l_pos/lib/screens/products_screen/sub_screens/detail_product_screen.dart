// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/screens/products_screen/sub_screens/widgets/detail_variantion_card.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailProductScreen extends StatelessWidget {
  final Product? product;
  const DetailProductScreen({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _detailProducts = [
      {
        'name': 'Available in locations:',
        'value': product!.getProductLocationName()
      },
      {'name': 'Product Tax:', 'value': product!.productTax ?? '--'},
      {
        'name': 'Expires in:',
        'value': product!.expiryPeriod != null
            ? product!.expiryPeriod + ' ' + product!.expiryPeriodType
            : 'Not Applicable'
      },
      {'name': 'Product Type:', 'value': product!.type ?? '--'},
      {
        'name': 'Alert Quantity:',
        'value': double.parse(product!.alertQuantity ?? '0')
      },
      {'name': 'Barcode:', 'value': product!.barcodeType ?? '--'},
      {'name': 'Brand:', 'value': product?.brand?.name ?? '--'},
      {'name': 'Unit:', 'value': product?.unit?.actualName ?? '--'},
      {'name': 'Category:', 'value': product?.category?.name ?? '--'},
      {'name': 'Sub Category:', 'value': product!.subCategory ?? '--'},
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          /// Appbar
          SliverAppBar(
            backgroundColor: Colors.transparent,
            pinned: false,
            floating: false,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: InkWell(
                onTap: () => navigator!.pop(context),
                child: const CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                      size: 40.0,
                    ),
                  ),
                ),
              ),
            ),
            elevation: 0.0,
            expandedHeight: 330,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                ),
                child: Text(
                  '${product!.name} - ${product!.sku ?? ''}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              background: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: product?.imageUrl ?? '',
                      errorWidget: (context, url, error) => const ErrorWidgetImage(),
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// Detail product
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 6.0,
                crossAxisSpacing: 6.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(color: GlobalColors.kBorderColorTextField),
                    ),
                    child: CustomRichText(
                      title: _detailProducts[index]['name'],
                      value: ' ${_detailProducts[index]['value']}',
                    ),
                  );
                },
                childCount: _detailProducts.length,
              ),
            ),
          ),

          /// Variant List
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (index > 0) return null;
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 20.0),
                  child: Column(
                    children: List.generate(
                      product!.productVariations!.length,
                      (i) => Column(
                        children: List.generate(
                          product!.productVariations![i]!.variations!.length,
                          (j) => VariantionCard(
                            prVariantName:
                                product!.productVariations![i]!.name!,
                            variantName: product!
                                .productVariations![i]!.variations![j]!.name!,
                            subSku: product!
                                .productVariations![i]!.variations![j]!.subSku!,
                            defaultPurchasePrice: GlobalFormatter.formatNumber(
                                source: product!.productVariations![i]!
                                    .variations![j]!.defaultPurchasePrice!),
                            dppIncTax: GlobalFormatter.formatNumber(
                                source: product!.productVariations![i]!
                                    .variations![j]!.dppIncTax!),
                            profitPercent: GlobalFormatter.formatNumber(
                                source: product!.productVariations![i]!
                                    .variations![j]!.profitPercent!),
                            defaultSellPrice: GlobalFormatter.formatNumber(
                                source: product!.productVariations![i]!
                                    .variations![j]!.defaultSellPrice!),
                            sellPriceIncTax: GlobalFormatter.formatNumber(
                                source: product!.productVariations![i]!
                                    .variations![j]!.sellPriceIncTax!),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
