import 'dart:async';

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedProduct extends StatefulWidget {
  const FeaturedProduct({Key? key, this.variantId, this.isEditing, this.onTap})
      : super(key: key);
  final int? variantId;
  final bool? isEditing;
  final VoidCallback? onTap;

  static MultiBlocProvider provider(
      {int? variantId, bool? isEditing, VoidCallback? onTap}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductsCubit(),
        ),
      ],
      child: FeaturedProduct(
        variantId: variantId,
        isEditing: isEditing,
        onTap: onTap,
      ),
    );
  }

  @override
  State<FeaturedProduct> createState() => _FeaturedProductState();
}

class _FeaturedProductState extends State<FeaturedProduct>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(context) {
    context
        .read<ProductsCubit>()
        .getProductByVariantion(variationId: widget.variantId!);
  }

  @override
  void didUpdateWidget(covariant FeaturedProduct oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.variantId != oldWidget.variantId) {
      context
          .read<ProductsCubit>()
          .getProductByVariantion(variationId: widget.variantId!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        final product = state.data?.product;
        final variant = state.data?.variation;
        final productVariation = state.data?.productVariation;
        String variationName = '';
        if (productVariation?.isDummy == 0) {
          variationName += '- ${productVariation?.name} - ${variant?.name}';
        }
        return Container(
          decoration: const BoxDecoration(
            color: GlobalColors.primaryColor,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          child: Row(
            children: [
              Text(
                '${product?.name ?? ''} $variationName (${variant?.subSku ?? ''})',
                style: GlobalStyles.robotoRegular(context).copyWith(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              if (widget.isEditing == true) ...[
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: const Icon(
                    Icons.delete,
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
