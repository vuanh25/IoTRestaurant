import 'package:di4l_pos/models/unit/response/unit_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnitWidget extends StatelessWidget {
  /// MARK: - Initials;
  final Unit? unit;
  final Function(Unit?) onEdit;
  final Function(Unit?) onDelete;

  const UnitWidget({
    Key? key,
    this.unit,
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
            title: 'unit_name'.tr,
            value: unit?.actualName ?? '',
          ),

          /// Short Name
          const SizedBox(height: 8.0),
          CustomRichText(
            title: 'short_name'.tr,
            value: unit?.shortName ?? '',
          ),

          /// Short Name
          const SizedBox(height: 8.0),
          CustomRichText(
            title: 'allow_decimal'.tr,
            value: (unit?.allowDecimal ?? 0) == 0 ? 'no'.tr : 'yes'.tr,
          ),

          /// Actions
          const SizedBox(height: 8.0),
          Row(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(height: 44),
                child: ElevatedButton.icon(
                  onPressed: () {
                    onEdit(unit);
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
                    onDelete(unit);
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
