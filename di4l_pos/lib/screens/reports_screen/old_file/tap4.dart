import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'chart.dart';

class Tap4Screen extends StatefulWidget {
  const Tap4Screen({Key? key}) : super(key: key);

  @override
  State<Tap4Screen> createState() => _Tap4State();
}

class MyController extends GetxController {
  var name = "Khách hàng đặt đơn theo ngày".obs;

  changeName(String s) {
    name.value = s;
  }
}

class _Tap4State extends State<Tap4Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: content_2(context),
    );
  }

  Widget content_2(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 13, left: 13, right: 13),
      child: Column(
        children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: Size(w + 50, 50),
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
              width: w / 100 * 80,
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
          ),
          Tab(
            height: h / 100 * 65,
            child: content_2_1(),
          )
        ],
      ),
    );
  }

  Widget content_2_1() {
    var w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Container(
                    width: w / 100 * 35,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.green, // Text colour here
                          width: 3, // Underline width
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Tổng thu',
                            style: TextStyle(
                                color: Colors.grey[800], fontSize: 22),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '0' ' ₫',
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 27),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Container(
                    width: w / 100 * 35,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromARGB(
                              255, 164, 28, 28), // Text colour here
                          width: 3, // Underline width
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Tổng chi',
                            style: TextStyle(
                                color: Colors.grey[800], fontSize: 22),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '0' ' ₫',
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 27),
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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13),
            child: container_chart_content2(),
          ),
          container_content2('Trung bình thu theo ngày', 0, ' ₫', Colors.black),
          container_content2('Số dư tháng này', 0, ' ₫',
              const Color.fromARGB(255, 170, 43, 5)),
        ],
      ),
    );
  }

  Widget container_chart_content2() {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    'Tổng thu theo tháng',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              children: const [],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  const Text(
                    '   Hôm nay',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  const Text(
                    '   Hôm qua',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            //Biểu đồ(chưa biết làm)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: w / 100 * 85,
                      height: h / 100 * 50,
                      child: chartA(context,null),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget container_content2(
      String context1, int number, String unit, Color color) {
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 13),
      child: Container(
        width: w / 100 * 95,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    context1,
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    number.toString() + unit,
                    style: TextStyle(
                        color: color,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
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
                          setState(
                            () {
                              value = value as int?;
                            },
                          );
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
                          setState(
                            () {
                              value = value as int?;
                            },
                          );
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
                          setState(
                            () {
                              value = value as int?;
                            },
                          );
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
                          setState(
                            () {
                              value = value as int?;
                            },
                          );
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
                          setState(
                            () {
                              value = value as int?;
                            },
                          );
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
                          setState(
                            () {
                              value = value as int?;
                            },
                          );
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
