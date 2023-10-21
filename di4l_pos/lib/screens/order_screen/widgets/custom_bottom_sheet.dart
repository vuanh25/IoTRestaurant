// ignore_for_file: constant_identifier_names

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SingingCharacter {
  tat_ca,
  hom_nay,
  tuan_nay,
  thang_nay,
  tuan_truoc,
  thang_truoc,
  thoi_gian_khac
}

class CustomBottomSheet extends StatefulWidget {
  CustomBottomSheet({Key? key, required this.size, this.value})
      : super(key: key);

  final Size size;
  SingingCharacter? value;
  // static MultiBlocProvider providers() {
  //   return MultiBlocProvider(
  //     providers: [
  //       BlocProvider<OrderCubit>(
  //         create: (BuildContext context) => OrderCubit(),
  //       ),
  //     ],
  //     child: const OrderScreen(),
  //   );
  // }

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  // SingingCharacter? _character = SingingCharacter.tat_ca;
  SingingCharacter? _character;

  @override
  Widget build(BuildContext context) {
    _character = widget.value;
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -12,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 5,
              width: 35,
              color: Colors.white,
            ),
          ),
        ),
        Column(
          children: [
            Container(
              width: widget.size.width,
              height: widget.size.height * 0.55,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10),
                  right: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 17,
                        horizontal: 20,
                      ),
                      child: Text(
                        'Filter_by_time'.tr,
                        style: GlobalStyles.normalStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Flexible(
                      child: ListView(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // context
                              //     .read<OrderCubit>()
                              //     .add(const OrderState.tatCaSelected());
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                    width: 0.1,
                                  ),
                                ),
                              ),
                              child: ListTile(
                                title: Transform(
                                  transform:
                                      Matrix4.translationValues(-20, 0.0, 0.0),
                                  child: Text(
                                    'Tất cả'.tr,
                                  ),
                                ),
                                leading: Radio<SingingCharacter>(
                                  value: SingingCharacter.tat_ca,
                                  groupValue: _character,
                                  activeColor: GlobalColors.kGreenTextColor,
                                  onChanged: (SingingCharacter? value) {
                                    navigator!.pop(null);

                                    _character = value;
                                  },
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // context
                              //     .read<OrderCubit>()
                              //     .add(const OrderState.homNaySelected());
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                    width: 0.1,
                                  ),
                                ),
                              ),
                              child: ListTile(
                                title: Transform(
                                  transform:
                                      Matrix4.translationValues(-20, 0.0, 0.0),
                                  child: Text(
                                    'Hôm nay'.tr,
                                  ),
                                ),
                                leading: Radio<SingingCharacter>(
                                  value: SingingCharacter.hom_nay,
                                  groupValue: _character,
                                  activeColor: GlobalColors.kGreenTextColor,
                                  onChanged: (SingingCharacter? value) {
                                    navigator!.pop(
                                      //   [
                                      //   DateTime(
                                      //     DateTime.now().year,
                                      //     DateTime.now().month,
                                      //     DateTime.now().day,
                                      //     0,
                                      //   ),
                                      //   DateTime.now(),
                                      // ]
                                      SingingCharacter.hom_nay,
                                    );
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // context
                              //     .read<OrderCubit>()
                              //     .add(const OrderState.tuanNaySelected());
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                    width: 0.1,
                                  ),
                                ),
                              ),
                              child: ListTile(
                                title: Transform(
                                    transform: Matrix4.translationValues(
                                        -20, 0.0, 0.0),
                                    child: Text('Tuần này'.tr)),
                                leading: Radio<SingingCharacter>(
                                  value: SingingCharacter.tuan_nay,
                                  groupValue: _character,
                                  activeColor: GlobalColors.kGreenTextColor,
                                  onChanged: (SingingCharacter? value) {
                                    navigator!.pop(
                                      //   [
                                      //   DateTime(
                                      //       DateTime.now().year,
                                      //       DateTime.now().month,
                                      //       DateTime.now().day -
                                      //           DateTime.now().weekday +
                                      //           1),
                                      //   DateTime.now()
                                      // ]
                                      SingingCharacter.tuan_nay,
                                    );

                                    _character = value;
                                  },
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // context
                              //     .read<OrderCubit>()
                              //     .add(const OrderState.thangNaySelected());
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                    width: 0.1,
                                  ),
                                ),
                              ),
                              child: ListTile(
                                title: Transform(
                                    transform: Matrix4.translationValues(
                                        -20, 0.0, 0.0),
                                    child: Text('Tháng này'.tr)),
                                leading: Radio<SingingCharacter>(
                                  value: SingingCharacter.thang_nay,
                                  groupValue: _character,
                                  activeColor: GlobalColors.kGreenTextColor,
                                  onChanged: (SingingCharacter? value) {
                                    navigator!.pop(
                                      //   [
                                      //   DateTime(DateTime.now().year,
                                      //       DateTime.now().month, 1),
                                      //   DateTime.now()
                                      // ]
                                      SingingCharacter.thang_nay,
                                    );
                                    _character = value;
                                  },
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // context
                              //     .read<OrderCubit>()
                              //     .add(const OrderState.tuanTruocSelected());
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                    width: 0.1,
                                  ),
                                ),
                              ),
                              child: ListTile(
                                title: Transform(
                                    transform: Matrix4.translationValues(
                                        -20, 0.0, 0.0),
                                    child: Text('Tuần trước'.tr)),
                                leading: Radio<SingingCharacter>(
                                  value: SingingCharacter.tuan_truoc,
                                  groupValue: _character,
                                  activeColor: GlobalColors.kGreenTextColor,
                                  onChanged: (SingingCharacter? value) {
                                    navigator!.pop(
                                      //   [
                                      //   DateTime(
                                      //       DateTime.now().year,
                                      //       DateTime.now().month,
                                      //       DateTime.now().day -
                                      //           DateTime.now().weekday -
                                      //           7),
                                      //   DateTime(
                                      //       DateTime.now().year,
                                      //       DateTime.now().month,
                                      //       DateTime.now().day -
                                      //           DateTime.now().weekday +
                                      //           1)
                                      // ]
                                      SingingCharacter.tuan_truoc,
                                    );
                                    //print(DateTime.daysPerWeek);
                                    _character = value;
                                  },
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // context
                              //     .read<OrderCubit>()
                              //     .add(const OrderState.thangTruocSelected());
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                    width: 0.1,
                                  ),
                                ),
                              ),
                              child: ListTile(
                                title: Transform(
                                    transform: Matrix4.translationValues(
                                        -20, 0.0, 0.0),
                                    child: Text('Tháng trước'.tr)),
                                leading: Radio<SingingCharacter>(
                                  value: SingingCharacter.thang_truoc,
                                  groupValue: _character,
                                  activeColor: GlobalColors.kGreenTextColor,
                                  onChanged: (SingingCharacter? value) {
                                    navigator!.pop(
                                      //   [
                                      //   DateTime(DateTime.now().year,
                                      //       DateTime.now().month - 1, 1),
                                      //   DateTime(
                                      //       DateTime.now().year,
                                      //       DateTime.now().month - 1,
                                      //       DateTime(DateTime.now().year,
                                      //               DateTime.now().month, 0)
                                      //           .day)
                                      // ]
                                      SingingCharacter.thang_truoc,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
