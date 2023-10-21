import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectTimeWidget extends StatelessWidget {
  const SelectTimeWidget({key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(Get.width + 50, 50),
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
      ),
      onPressed: () {
        bottomMenu(context);
      },
      child: Container(
        width: Get.width / 100 * 80,
        height: 55,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey, // Text colour here
              width: 1.0, // Underline width
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_month_outlined,
              color: Colors.grey[800],
              size: 25,
            ),
            Text(
              ' Tháng trước ',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.grey[800],
              size: 25,
            ),
          ],
        ),
      ),
    );
  }

  bottomMenu(context) {
    var w = MediaQuery.of(context).size.width;
    int? value = 1;

    showModalBottomSheet(
      context: context,
      builder: (BuildContext c) {
        return Container(
          width: w,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: w,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Lọc theo thời gian',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13, left: 13, right: 13),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey, // Text colour here
                        width: 1.0, // Underline width
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Hôm nay',
                        style: TextStyle(color: Colors.grey[700], fontSize: 22),
                      ),
                      const Spacer(),
                      Radio(
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {}
                          return Colors.green;
                        }),
                        value: 1,
                        groupValue: value,
                        onChanged: (value) {
                          // setState(
                          //   () {
                          //     _value = value as int?;
                          //   },
                          // );
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13, left: 13, right: 13),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey, // Text colour here
                        width: 1.0, // Underline width
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Tuần này',
                        style: TextStyle(color: Colors.grey[700], fontSize: 22),
                      ),
                      const Spacer(),
                      Radio(
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {}
                          return Colors.green;
                        }),
                        value: 2,
                        groupValue: value,
                        onChanged: (value) {
                          // setState(
                          //   () {
                          //     _value = value as int?;
                          //   },
                          // );
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13, left: 13, right: 13),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey, // Text colour here
                        width: 1.0, // Underline width
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Tháng này',
                        style: TextStyle(color: Colors.grey[700], fontSize: 22),
                      ),
                      const Spacer(),
                      Radio(
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {}
                          return Colors.green;
                        }),
                        value: 3,
                        groupValue: value,
                        onChanged: (value) {
                          // setState(
                          //   () {
                          //     _value = value as int?;
                          //   },
                          // );
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13, left: 13, right: 13),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey, // Text colour here
                        width: 1.0, // Underline width
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Tuần trước',
                        style: TextStyle(color: Colors.grey[700], fontSize: 22),
                      ),
                      const Spacer(),
                      Radio(
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {}
                          return Colors.green;
                        }),
                        value: 4,
                        groupValue: value,
                        onChanged: (value) {
                          // setState(
                          //   () {
                          //     _value = value as int?;
                          //   },
                          // );
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13, left: 13, right: 13),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey, // Text colour here
                        width: 1.0, // Underline width
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Tháng trước',
                        style: TextStyle(color: Colors.grey[700], fontSize: 22),
                      ),
                      const Spacer(),
                      Radio(
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {}
                          return Colors.green;
                        }),
                        value: 5,
                        groupValue: value,
                        onChanged: (value) {
                          // setState(
                          //   () {
                          //     _value = value as int?;
                          //   },
                          // );
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13, left: 13, right: 13),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey, // Text colour here
                        width: 1.0, // Underline width
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Thời gian khác',
                        style: TextStyle(color: Colors.grey[700], fontSize: 22),
                      ),
                      const Spacer(),
                      Radio(
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {}
                          return Colors.green;
                        }),
                        value: 6,
                        groupValue: value,
                        onChanged: (value) {
                          // setState(
                          //   () {
                          //     _value = value as int?;
                          //   },
                          // );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
