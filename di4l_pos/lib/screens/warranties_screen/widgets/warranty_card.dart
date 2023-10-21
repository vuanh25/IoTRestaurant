import 'package:di4l_pos/models/warranty/warranty_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class WarrantyCard extends StatelessWidget {
  Warranty warranty;
  final Function() onEdit;
  final Function(Warranty?) onDelete;
  WarrantyCard(
      {Key? key,
      required this.warranty,
      required this.onDelete,
      required this.onEdit})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Card(
        elevation: 4.0,
        shadowColor: Colors.black26,
        margin: const EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Name
              const SizedBox(height: 8.0),
              CustomRichText(
                title: 'name'.tr,
                value: warranty.name ?? '',
              ),

              /// Short Name
              const SizedBox(height: 8.0),
              CustomRichText(
                title: 'description'.tr,
                value: warranty.description ?? '',
              ),

              /// Short Name
              const SizedBox(height: 8.0),
              CustomRichText(
                title: 'duration'.tr,
                value: '${warranty.duration} ${warranty.durationType}',
              ),

              /// Actions
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(height: 44),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        onEdit();
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
                      onPressed: () {},
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
        ),
      ),
    );
  }
}
