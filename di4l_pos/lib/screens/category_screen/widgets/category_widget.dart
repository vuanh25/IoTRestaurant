import 'package:di4l_pos/models/category/response/category_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  /// MARK: - Initials;
  final CategoryModel? category;
  final Function(CategoryModel?) onEdit;
  final Function(CategoryModel?) onDelete;

  const CategoryWidget(
      {Key? key, this.category, required this.onEdit, required this.onDelete})
      : super(key: key);

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
            title: 'category'.tr,
            value: category?.name ?? '',
          ),

          /// Category Code
          const SizedBox(height: 8.0),
          CustomRichText(
            title: 'category_code'.tr,
            value: category?.shortCode ?? '',
          ),

          /// Description
          const SizedBox(height: 8.0),
          CustomRichText(
            title: 'category_description'.tr,
            value: category?.description ?? '',
          ),

          /// Actions
          const SizedBox(height: 8.0),
          Row(
            children: [
              /// Edit
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(height: 44),
                child: ElevatedButton.icon(
                  onPressed: () {
                    onEdit(category);
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
                    onDelete(category);
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
