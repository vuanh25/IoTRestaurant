import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListFoodView extends StatelessWidget {
  const ListFoodView({
    Key? key,
    required this.isEdit,
  }) : super(key: key);
  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return isEdit
                ? InkWell(
                    onTap: () {},
                    child: const ItemFoodView(isEdit: true),
                  )
                : const ItemFoodView(isEdit: false);
          }),
    );
  }
}

class ItemFoodView extends StatelessWidget {
  const ItemFoodView({
    Key? key,
    required this.isEdit,
  }) : super(key: key);
  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 70),
      padding: const EdgeInsets.only(
        top: Dimensions.MARGIN_SIZE_SMALL,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: isEdit ? 5 : 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Buddy Zinger Combo',
                  style: GlobalStyles.robotoRegular(context).copyWith(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                    color: Theme.of(context).textTheme.titleLarge!.color!,
                  ),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                ),
                Text(
                  '\$12.00',
                  style: GlobalStyles.robotoRegular(context).copyWith(
                    color: Theme.of(context).hintColor,
                  ),
                ),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                ),
                Text(
                  '${'addons_food'.tr}: Cheese (1), Coke (1)',
                  style: GlobalStyles.robotoRegular(context).copyWith(
                    fontSize: Dimensions.FONT_SIZE_SMALL,
                    color: Theme.of(context).hintColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_EXTRA_SMALL,
              ),
              child: Text(
                '1',
                textAlign: TextAlign.center,
                style: GlobalStyles.robotoRegular(context).copyWith(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                    color: Theme.of(context).textTheme.titleLarge!.color!),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_EXTRA_SMALL,
              ),
              child: Text(
                '\$12.00',
                textAlign: TextAlign.end,
                style: GlobalStyles.robotoRegular(context).copyWith(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                    color: Theme.of(context).textTheme.titleLarge!.color!),
                maxLines: 1,
              ),
            ),
          ),
          if (isEdit)
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Theme.of(context).colorScheme.error,
                ),
                alignment: Alignment.topRight,
                padding: EdgeInsets.zero,
                iconSize: Dimensions.PADDING_SIZE_LARGE,
              ),
            ),
        ],
      ),
    );
  }
}
