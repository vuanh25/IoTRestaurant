import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/models/category/response/category_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/error_image_widget.dart';

class CategoryWidgetEdit extends StatelessWidget {
  /// MARK: - Initials;
  final CategoryModel? category;
  final Function(CategoryModel?) onEdit;
  final Function(CategoryModel?) onDelete;

  const CategoryWidgetEdit({
    Key? key,
    this.category,
    required this.onEdit,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SizedBox(
              width: 50,
              height: 50,
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: '',
                errorWidget: (context, url, error) => const ErrorWidgetImage(),
              ),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Column(
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

              /// Actions
              const SizedBox(height: 8.0),
            ],
          ),
        ],
      ),
    );
  }
}
