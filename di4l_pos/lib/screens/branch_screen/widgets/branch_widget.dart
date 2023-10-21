import 'package:di4l_pos/models/branch/response/branch_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BranchWidget extends StatelessWidget {
  /// MARK: - Initials;
  final Branch? branch;
  final Function(Branch?) onEdit;
  final Function(Branch?) onDelete;

  const BranchWidget({
    Key? key,
    this.branch,
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
            title: 'branch_name'.tr,
            value: branch?.name ?? '',
          ),

          /// Short Name
          const SizedBox(height: 8.0),
          CustomRichText(
            title: 'branch_description'.tr,
            value: branch?.description ?? '',
          ),

          /// Actions
          const SizedBox(height: 8.0),
          Row(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(height: 44),
                child: ElevatedButton.icon(
                  onPressed: () {
                    onEdit(branch);
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
                    onDelete(branch);
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
