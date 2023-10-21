import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/text_avatar.dart';
import 'package:di4l_pos/models/customer-group/response/customer_group_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerGroupWidget extends StatelessWidget {
  /// MARK: - Initials;
  final CustomerGroupModel? customerGroup;
  final int? index;
  final Function(CustomerGroupModel?)? onPressed;
  final VoidCallback? onDelete;

  const CustomerGroupWidget({
    Key? key,
    this.customerGroup,
    this.index,
    this.onPressed,
    this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) {
          onPressed!(customerGroup);
        }
      },
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [
          Container(
            color: Colors.white,
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            // margin: const EdgeInsets.all(10),
            // height: Get.,
            child: Row(
              children: [
                ///Avatar
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    TextAvatar.getInitials(customerGroup?.name ?? ''),
                    style: const TextStyle(
                        color: GlobalColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    if (customerGroup!.name != null) ...[
                      CustomRichText(
                        title: '${'customer_group_name'.tr}:',
                        value: ' ${customerGroup?.name ?? ''}',
                      ),
                    ],

                    /// customer group type
                    CustomRichText(
                      title: '${'customer_group_type'.tr}:',
                      value:
                          ' ${customerGroup!.priceCalculationType == 'percentage' ? 'percentage'.tr : 'selling_price_group'.tr}',
                    ),

                    ///
                    customerGroup!.priceCalculationType == 'percentage'
                        ? CustomRichText(
                            title: '${'calculation_percentage'.tr}:',
                            value: ' ${customerGroup!.amount} %',
                          )
                        : CustomRichText(
                            title: '${'selling_price_group'.tr}:',
                            value: ' ${customerGroup!.sellingPriceGroup}',
                          ),
                  ],
                ),
              ],
            ),
          ),
          const Positioned(
              top: 35,
              right: 30,
              child: SizedBox(
                  height: 10,
                  width: 10,
                  child: Icon(
                    Icons.group_rounded,
                    color: GlobalColors.primaryColor,
                    size: 20,
                  ))),
        ],
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return GestureDetector(
  //     onTap: () {
  //       if (onPressed != null) {
  //         onPressed!(customerGroup);
  //       }
  //     },
  //     behavior: HitTestBehavior.opaque,
  //     child: Card(
  //       elevation: 4.0,
  //       shadowColor: Colors.black26,
  //       margin: const EdgeInsets.all(10.0),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(8.0),
  //       ),
  //       child: Stack(
  //         children: [
  //           Container(
  //             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
  //             // height: 200,
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               mainAxisAlignment: MainAxisAlignment.spaceAround,
  //               children: <Widget>[
  //                 /// Stt
  //                 CustomRichText(
  //                   title: 'STT',
  //                   // ignore: unnecessary_brace_in_string_interps
  //                   value: ' ${index}',
  //                 ),

  //                 /// email
  //                 if (customerGroup!.name != null) ...[
  //                   CustomRichText(
  //                     title: 'customer_group_name'.tr,
  //                     value: ' ${customerGroup?.name ?? ''}',
  //                   ),
  //                 ],

  //                 /// customer group type
  //                 CustomRichText(
  //                   title: 'customer_group_type'.tr,
  //                   value:
  //                       ' ${customerGroup!.priceCalculationType == 'percentage' ? 'percentage'.tr : 'selling_price_group'.tr}',
  //                 ),

  //                 ///
  //                 customerGroup!.priceCalculationType == 'percentage'
  //                     ? CustomRichText(
  //                         title: 'fixed'.tr,
  //                         value: ' ${customerGroup!.amount} %',
  //                       )
  //                     : CustomRichText(
  //                         title: 'group'.tr,
  //                         value: ' ${customerGroup!.sellingPriceGroup}',
  //                       ),
  //               ],
  //             ),
  //           ),
  //           Positioned(
  //             top: 8,
  //             right: 8,
  //             child: Container(
  //               height: 45,
  //               width: 45,
  //               decoration: BoxDecoration(
  //                 color: Colors.red,
  //                 borderRadius: BorderRadius.circular(8),
  //               ),
  //               child: IconButton(
  //                 onPressed: onDelete,
  //                 icon: const Icon(
  //                   Icons.delete,
  //                   size: 24,
  //                   color: Colors.white,
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
