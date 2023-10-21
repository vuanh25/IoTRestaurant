import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/sell/response/sell_response.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/products_in_order_widget.dart';
import 'package:di4l_pos/screens/main_screen/mobile/edit_more_screen.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:di4l_pos/widgets/material_white.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DetailOrderScreen extends StatefulWidget {
  final SellData sellData;
  const DetailOrderScreen({Key? key, required this.sellData}) : super(key: key);

  @override
  State<DetailOrderScreen> createState() => _DetailOrderScreenState();
}

class _DetailOrderScreenState extends State<DetailOrderScreen> {
  @override
  Widget build(BuildContext context) {
    final sellLine = widget.sellData.sellLines ?? [];

    List<int?> total = [];
    for (int i = 0; i < sellLine.length; i++) {
      total += [sellLine[i].quantity];
    }
    int sum =
        total.fold(0, (previousValue, element) => previousValue + element!);
    return Scaffold(
      backgroundColor: GlobalColors.bgColor,
      appBar: AppBar(
        leading: IconButton(
            iconSize: Dimensions.ICON_SIZE_SMALL,
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'order_details'.tr,
          style: const TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    GlobalImages.editIcon,
                    height: 25,
                    width: 25,
                  ),
                ),
                Text(
                  'edit'.tr,
                  style: const TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
                )
              ],
            ),
          ),
          const SizedBox(width: 5),
          InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  GlobalImages.printIcon,
                  height: 25,
                  width: 25,
                ),
                Text(
                  'Print_invoice'.tr,
                  style: const TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
                )
              ],
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildInfoDebt(),
            _buildInfoContact(),
            _buildListProduct(sellLine),
            _buildPaymentInfo(sum),
          ],
        ),
      ),
      // body: Stack(
      //   children: [
      //     Positioned(
      //       bottom: 0,
      //       child: Container(
      //         padding: EdgeInsets.all(10),
      //         height: 70,
      //         // width: size.width,
      //         color: Colors.white,
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             CustomButtonBottom(
      //               title: 'huy'.tr,
      //               titleColor: GlobalColors.kGreyTextColor,
      //             ),
      //             CustomButtonBottom(
      //               title: 'Delivered'.tr,
      //               titleColor: Colors.white,
      //               color: GlobalColors.kGreenTextColor,
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 10),
      //       child: Column(
      //         children: [
      //           Container(
      //             color: Colors.white,
      //             padding: EdgeInsets.all(20),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     Container(
      //                       child: Row(
      //                         children: [
      //                           Text(
      //                             widget.sellData.invoiceNo ?? '',
      //                             style: GlobalStyles.robotoRegular(context)
      //                                 .copyWith(
      //                               color: GlobalColors.primaryWebColor,
      //                               fontSize: 20,
      //                             ),
      //                           ),
      //                           SvgPicture.asset(
      //                             GlobalImages.copyIcon,
      //                             height: 20,
      //                             width: 20,
      //                             color: GlobalColors.kGreyTextColor,
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     Container(
      //                       child: Row(
      //                         children: [
      //                           ClipRRect(
      //                             borderRadius: BorderRadius.circular(5),
      //                             child: Container(
      //                               padding: EdgeInsets.all(3),
      //                               color: Colors.amber.shade100,
      //                               child: Text(
      //                                 widget.sellData.status ?? '',
      //                                 style: GlobalStyles.robotoRegular(context)
      //                                     .copyWith(
      //                                   fontSize: 14,
      //                                   color: Colors.deepOrange,
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //                 SizedBox(height: 7),
      //                 Text(
      //                   widget.sellData.transactionDate ?? '',
      //                   style: GlobalStyles.robotoRegular(context).copyWith(
      //                     color: GlobalColors.kGreyTextColor,
      //                     fontSize: 14,
      //                   ),
      //                 ),
      //                 SizedBox(height: 7),
      //                 Container(
      //                   height: 0.5,
      //                   color: GlobalColors.kBorderColorTextField,
      //                 ),
      //                 SizedBox(height: 7),
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     Text(
      //                       GlobalFormatter.formatNumber(
      //                           source: widget.sellData.finalTotal ?? ''),
      //                       style: GlobalStyles.robotoRegular(context).copyWith(
      //                         color: GlobalColors.primaryWebColor,
      //                         fontSize: 30,
      //                       ),
      //                     ),
      //                     InkWell(
      //                       child: Container(
      //                         alignment: Alignment.center,
      //                         height: 30,
      //                         // width: size.width * 0.3,
      //                         decoration: BoxDecoration(
      //                           color: GlobalColors.kGreenTextColor,
      //                           borderRadius: BorderRadius.circular(5),
      //                           border: Border.all(color: Colors.grey),
      //                         ),
      //                         child: Text(
      //                           'send_invoice'.tr,
      //                           style: GlobalStyles.normalStyle.copyWith(
      //                             fontSize: 14,
      //                             color: GlobalColors.bgButton,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //                 Text(
      //                   widget.sellData.paymentStatus ?? 'customer_name'.tr,
      //                   style: GlobalStyles.robotoRegular(context).copyWith(
      //                     fontSize: 14,
      //                     color: GlobalColors.errorColor,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           SizedBox(height: 10),
      //           Container(
      //             padding: EdgeInsets.only(left: 20),
      //             color: Colors.white,
      //             // height: size.height * 0.1,
      //             child: Row(
      //               children: [
      //                 Container(
      //                   padding: EdgeInsets.all(12),
      //                   decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(100),
      //                       border: Border.all(
      //                         color: GlobalColors.kBorderColorTextField,
      //                         width: 0.5,
      //                       )),
      //                   child: SvgPicture.asset(
      //                     GlobalImages.userIcon,
      //                     color: GlobalColors.kGreenTextColor,
      //                     height: 23,
      //                     width: 23,
      //                   ),
      //                 ),
      //                 SizedBox(width: 7),
      //                 Text(
      //                   widget.sellData.contact?.name ?? '',
      //                   style: GlobalStyles.robotoRegular(context).copyWith(
      //                     color: GlobalColors.primaryWebColor,
      //                     fontSize: 17,
      //                   ),
      //                 ),
      //                 SizedBox(width: 7),
      //                 SvgPicture.asset(
      //                   GlobalImages.copyIcon,
      //                   height: 20,
      //                   width: 20,
      //                   color: GlobalColors.kGreyTextColor,
      //                 ),
      //               ],
      //             ),
      //           ),
      //           SizedBox(height: 10),
      //           Container(
      //             // height: size.height * 0.12,
      //             color: Colors.white,
      //             padding: EdgeInsets.all(12),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: [
      //                 Container(
      //                   height: 50,
      //                   // width: size.width * 0.2,
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(8),
      //                     color: GlobalColors.kDarkWhite,
      //                   ),
      //                   child: SvgPicture.asset(GlobalImages.product),
      //                 ),
      //                 Container(
      //                   // width: size.width * 0.5,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       Text(
      //                         'Bánh mì Việt Nam Ngon bá cháy',
      //                         style:
      //                             GlobalStyles.robotoRegular(context).copyWith(
      //                           color: GlobalColors.primaryWebColor,
      //                           fontSize: 18,
      //                         ),
      //                       ),
      //                       Text(
      //                         GlobalFormatter.formatNumber(
      //                             source: widget.sellData.finalTotal ?? ''),
      //                         style: GlobalStyles.robotoBold(context).copyWith(
      //                           color: GlobalColors.primaryWebColor,
      //                           fontSize: 16,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //                 Container(
      //                   // height: size.height * 0.3,
      //                   child: Row(
      //                     children: List.generate(
      //                       widget.sellData.sellLines!.length,
      //                       (index) => Container(
      //                         // height: size.height,
      //                         // width: size.width * 0.15,
      //                         alignment: Alignment.bottomCenter,
      //                         child: RichText(
      //                           text: TextSpan(
      //                             text: 'SL : ',
      //                             style: GlobalStyles.robotoRegular(context)
      //                                 .copyWith(
      //                               color: GlobalColors.kGreyTextColor,
      //                               fontSize: 16,
      //                             ),
      //                             children: <TextSpan>[
      //                               TextSpan(
      //                                 text:
      //                                     '${widget.sellData.sellLines![index].quantity}',
      //                                 style: GlobalStyles.robotoBold(context)
      //                                     .copyWith(
      //                                   color: GlobalColors.primaryWebColor,
      //                                   fontSize: 16,
      //                                 ),
      //                               ),
      //                             ],
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           SizedBox(height: 10),
      //           Container(
      //             // height: size.height * 0.33,
      //             // width: size.width,
      //             color: Colors.white,
      //             child: Column(
      //               children: List.generate(
      //                 widget.sellData.sellLines!.length,
      //                 (index) => Container(
      //                     padding: EdgeInsets.all(10),
      //                     child: Column(
      //                       children: [
      //                         CustomRowText(
      //                           title: 'gross_product'.tr,
      //                           value: GlobalFormatter.formatNumber(
      //                               source: '${widget.sellData.finalTotal}'),
      //                           textColor: GlobalColors.kGreyTextColor,
      //                         ),
      //                         CustomRowText(
      //                           title: 'promotion'.tr,
      //                           value: GlobalFormatter.formatNumber(
      //                               source:
      //                                   '${widget.sellData.sellLines![index].lineDiscountAmount}'),
      //                           textColor: GlobalColors.kGreyTextColor,
      //                         ),
      //                         CustomRowText(
      //                           title: 'shipping_charges'.tr,
      //                           value: GlobalFormatter.formatNumber(
      //                               source:
      //                                   '${widget.sellData.sellLines![index].unitPrice}'),
      //                           textColor: GlobalColors.kGreyTextColor,
      //                         ),
      //                         CustomRowText(
      //                           title: 'discount_amount'.tr,
      //                           value: GlobalFormatter.formatNumber(
      //                               source:
      //                                   '${widget.sellData.sellLines![index].unitPrice}'),
      //                           textColor: GlobalColors.kGreyTextColor,
      //                         ),
      //                         CustomRowText(
      //                           title: 'total_amount'.tr,
      //                           value: GlobalFormatter.formatNumber(
      //                               source:
      //                                   '${widget.sellData.sellLines![index].unitPrice}'),
      //                           textColor: GlobalColors.kGreyTextColor,
      //                           textColorNumber: GlobalColors.errorColor,
      //                         ),
      //                         SizedBox(height: 10),
      //                         Container(
      //                           height: 50,
      //                           // width: size.width,
      //                           alignment: Alignment.center,
      //                           decoration: BoxDecoration(
      //                             border: Border.all(
      //                               color: GlobalColors.appBar2,
      //                             ),
      //                             borderRadius: BorderRadius.circular(5),
      //                           ),
      //                           child: Row(
      //                             mainAxisAlignment: MainAxisAlignment.center,
      //                             children: [
      //                               SvgPicture.asset(
      //                                 'assets/svg/payIcon.svg',
      //                                 color: GlobalColors.appBar2,
      //                                 height: 25,
      //                                 width: 25,
      //                               ),
      //                               SizedBox(width: 5),
      //                               Text(
      //                                 'prepayment'.tr,
      //                                 style: GlobalStyles.robotoRegular(context)
      //                                     .copyWith(
      //                                   color: GlobalColors.appBar2,
      //                                   fontSize: 17,
      //                                   fontWeight: FontWeight.w400,
      //                                 ),
      //                               ),
      //                             ],
      //                           ),
      //                         )
      //                       ],
      //                     )),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }

  Container _buildPaymentInfo(int sum) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        color: Colors.white,
        child: Column(
          children: [
            CustomRowText(
              title: '${'total'.tr} $sum ${'products'.tr}',
              value: GlobalFormatter.formatNumber(
                  source: '${widget.sellData.totalBeforeTax}'),
              textColor: GlobalColors.kGreyTextColor,
            ),
            // CustomRowText(
            //   title: 'promotion'.tr,
            //   value: GlobalFormatter.formatNumber(
            //       source: '${widget.sellData.}'),
            //   textColor: GlobalColors.kGreyTextColor,
            // ),
            CustomRowText(
              title: 'shipping_charges'.tr,
              value: GlobalFormatter.formatNumber(
                  source: '${widget.sellData.shippingCharges}'),
              textColor: GlobalColors.kGreyTextColor,
            ),
            CustomRowText(
              title: 'discount_amount'.tr,
              value: GlobalFormatter.formatNumber(
                  source: '${widget.sellData.discountAmount}'),
              textColor: GlobalColors.kGreyTextColor,
            ),
            CustomRowText(
              title: 'total_amount'.tr,
              value: GlobalFormatter.formatNumber(
                  source: '${widget.sellData.finalTotal}'),
              textColor: GlobalColors.kGreyTextColor,
              textColorNumber: GlobalColors.errorColor,
            ),
            // const SizedBox(height: 10),
            // Container(
            //   height: 50,
            //   // width: size.width,
            //   alignment: Alignment.center,
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       color: GlobalColors.appBar2,
            //     ),
            //     borderRadius: BorderRadius.circular(5),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       SvgPicture.asset(
            //         'assets/svg/payIcon.svg',
            //         color: GlobalColors.appBar2,
            //         height: 25,
            //         width: 25,
            //       ),
            //       SizedBox(width: 5),
            //       Text(
            //         'prepayment'.tr,
            //         style: GlobalStyles.robotoRegular(context).copyWith(
            //           color: GlobalColors.appBar2,
            //           fontSize: 17,
            //           fontWeight: FontWeight.w400,
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ));
  }

  Container _buildListProduct(List<SellLine> sellLine) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: white,
      child: sellLine.isNotEmpty
          ? ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => ProductsInOrder.provider(
                index: index + 1,
                sellLine: sellLine.elementAt(index),
              ),
              itemCount: sellLine.length,
              separatorBuilder: (context, index) => const Divider(),
            )
          : const SizedBox.shrink(),
    );
  }

  Container _buildInfoContact() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      color: Colors.white,
      // height: size.height * 0.1,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: GlobalColors.kBorderColorTextField,
                  width: 0.5,
                )),
            child: SvgPicture.asset(
              GlobalImages.userIcon,
              color: GlobalColors.kGreenTextColor,
              height: 23,
              width: 23,
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.sellData.contact?.name ?? '',
                style: const TextStyle(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                widget.sellData.contact?.mobile ?? '',
                // style: GlobalStyles.robotoRegular(context).copyWith(
                //   color: GlobalColors.primaryWebColor,
                //   fontSize: 17,
                // ),
              ),
            ],
          ),

          // ),
        ],
      ),
    );
  }

  Widget _buildInfoDebt() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 0.1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '${widget.sellData.invoiceNo}',
                      style: const TextStyle(
                          fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      DateFormat('hh:mm - dd/MM').format(
                          DateTime.parse('${widget.sellData.transactionDate}')),
                      // textAlign: TextAlign.left,
                      style: const TextStyle(
                        // color: GlobalColors.kGreyTextColor,
                        fontSize: Dimensions.FONT_SIZE_SMALL,
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '${widget.sellData.status}' == "final"
                        ? "Đã xong"
                        : "Final",
                    style: const TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      GlobalFormatter.formatNumber(
                          source: widget.sellData.finalTotal ?? ''),
                      style: const TextStyle(
                          fontSize: Dimensions.FONT_SIZE_OVER_LARGE),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${widget.sellData.paymentStatus}'.tr,
                      style: TextStyle(
                          color: (widget.sellData.paymentStatus == 'paid')
                              ? GlobalColors.primaryColor
                              : GlobalColors.debtColor),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: GlobalColors.primaryColor),
                    backgroundColor: GlobalColors.primaryColor,
                  ),
                  onPressed: () {
                    //_showPayScreen
                  },
                  child: const Text(
                    'Gửi hóa đơn',
                    // style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
