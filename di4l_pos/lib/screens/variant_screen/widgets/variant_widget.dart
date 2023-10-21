import 'package:di4l_pos/models/variants/response/variants_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VariantWidget extends StatelessWidget {
  /// MARK: - Initials;
  final Variant? variant;
  final Function(Variant?) onEdit;
  final Function(Variant?) onDelete;

  const VariantWidget({
    Key? key,
    this.variant,
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
            title: 'variant_name'.tr,
            value: variant?.name ?? '',
          ),
          Wrap(
            children: List.generate(
              variant!.values!.length,
              (index) => Container(
                height: 32,
                width: 115,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: Text(
                    '${variant!.values![index].name}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF525252),
                    ),
                  ),
                ),
              ),
            ),
          ),

          /// Actions
          const SizedBox(height: 8.0),
          Row(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(height: 44),
                child: ElevatedButton.icon(
                  onPressed: () {
                    onEdit(variant);
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

              /// Edit
              const SizedBox(width: 8.0),
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(height: 44),
                child: ElevatedButton.icon(
                  onPressed: () {
                    onEdit(variant);
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
