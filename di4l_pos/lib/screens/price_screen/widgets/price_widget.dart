import 'package:di4l_pos/models/price/response/price_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PriceWidget extends StatelessWidget {
  /// MARK: - Initials;
  final Price? price;
  final Function(Price?) onEdit;
  final Function(Price?) onDelete;

  const PriceWidget({
    Key? key,
    this.price,
    required this.onEdit,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Name
          const SizedBox(height: 8.0),
          CustomRichText(
            title: 'price_name'.tr,
            value: price?.name ?? '',
          ),

          /// Description
          if (price?.description != null) ...[
            const SizedBox(height: 8.0),
            CustomRichText(
              title: 'price_description'.tr,
              value: price?.description ?? '',
            )
          ],

          /// Actions
          const SizedBox(height: 8.0),
          Row(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 44),
                child: ElevatedButton.icon(
                  onPressed: () {
                    onEdit(price);
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  label: Text(
                    'edit'.tr,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),

              /// Delete
              const SizedBox(width: 8.0),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 44),
                child: ElevatedButton.icon(
                  onPressed: () {
                    onDelete(price);
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  label: Text(
                    'delete'.tr,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
