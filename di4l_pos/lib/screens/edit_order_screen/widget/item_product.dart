

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../common/dimensions.dart';
import '../../../common/global_colors.dart';
import '../../../common/global_formatter.dart';

class ItemProducts extends StatefulWidget {
  final int index;
  const ItemProducts({Key? key,required this.index}) : super(key: key);

  @override
  State<ItemProducts> createState() => _ItemProductsState();
}

class _ItemProductsState extends State<ItemProducts> {
  @override
  Widget build(BuildContext context) {
    int quantity = 0;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CachedNetworkImage(
                      width: Get.width * 0.15,
                      height: Get.width * 0.15,
                      fit: BoxFit.cover,
                      imageUrl:
                          "https://www.southernliving.com/thmb/6jANEFrMvwSWlRlxCDCzulxXQZY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/2641101_Funfetti_Cake_702-2000-a2d8f835fd8f4a928fa17222e71241c3.jpg",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              SizedBox(
                width: Get.width * 0.69,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      child: Text("Bánh mì"),
                    ),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                    ),
                    const SizedBox(
                      child: Text("admin"),
                    ),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_SMALL,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 25,
                                decoration: BoxDecoration(
                                    color: GlobalColors.whiteColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey[200]!)
                                      ]),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (quantity > 0) {
                                              quantity--;
                                            }
                                          });
                                        },
                                        child: const Icon(Icons.remove),
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: 20,
                                        child: TextField(
                                          decoration: const InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                            ),
                                          ),
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(3),
                                          ],
                                          maxLines: 1,
                                          keyboardType: TextInputType.number,
                                          controller: TextEditingController(
                                              text: quantity.toString()),
                                          onChanged: (value) {
                                            setState(() {
                                              quantity =
                                                  int.tryParse(value) ?? 0;
                                            });
                                          },
                                        ),
                                      ),
                                      InkWell(
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.green,
                                        ),
                                        onTap: () {
                                          setState(() {
                                            quantity++;
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          GlobalFormatter.formatCurrency(
                            double.parse("100000"),
                          ),
                          style: TextStyle(
                              color: Colors.amber[900],
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 1,
        )
      ],
    );
 ;
  }
}