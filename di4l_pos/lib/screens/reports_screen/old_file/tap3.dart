import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:get/get.dart';

import 'chart.dart';

class Tap3Screen extends StatefulWidget {
  const Tap3Screen({Key? key}) : super(key: key);

  @override
  State<Tap3Screen> createState() => _Tap3State();
}

class MyController extends GetxController {
  var name = "Khách hàng đặt đơn theo ngày".obs;

  changeName(String s) {
    name.value = s;
  }
}

class _Tap3State extends State<Tap3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Tabbar(context),
    );
  }

  Widget Tabbar(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 222, 222, 222)),
              child: ButtonsTabBar(
                contentPadding: EdgeInsets.symmetric(horizontal: 25),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                unselectedBackgroundColor: Color.fromARGB(255, 222, 222, 222),
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 101, 7),
                ),
                tabs: [
                  Tab(
                    text: 'Hôm nay',
                  ),
                  Tab(
                    text: 'Phân tích',
                  ),
                ],
              ),
            ),
          ]),
          Expanded(
            child: TabBarView(
              physics: ScrollPhysics(),
              children: <Widget>[
                content_1(context),
                content_2(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget content_1(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    Icon money = Icon(
      Icons.attach_money,
      color: Colors.green[800],
      size: 23,
    );
    Icon quantity = Icon(
      Icons.workspaces_outline,
      color: Color.fromARGB(255, 121, 40, 10),
      size: 23,
    );
    Icon addlist = Icon(
      Icons.playlist_add_check_rounded,
      color: Colors.blue,
      size: 23,
    );
    Icon removelist = Icon(
      Icons.playlist_remove_sharp,
      color: Colors.red,
      size: 23,
    );
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: w / 100 * 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            button_content1('0', ' ₫', 'Giá trị kho', money,
                                Color.fromRGBO(165, 214, 167, 1)),
                            button_content1('0', '', 'Số lượng', quantity,
                                Color.fromRGBO(255, 64, 0, 0.341)),
                          ],
                        ),
                        Row(
                          children: [
                            button_content1('0', '', 'Sản phẩm còn bán',
                                addlist, Color.fromRGBO(144, 202, 249, 1)),
                            button_content1('0', '', 'Sản phẩm hết hàng',
                                removelist, Color.fromRGBO(239, 154, 154, 1)),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: w / 100 * 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '   Tổng quan hàng còn bán',
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Chưa có sản phẩm tồn kho',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
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
              shape: RoundedRectangleBorder(
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
              decoration: BoxDecoration(
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
            height: h / 100 * 60,
            child: content_2_1(),
          )
        ],
      ),
    );
  }

  bottomMenu(context) {
    var w = MediaQuery.of(context).size.width;
    int? _value = 1;

    showModalBottomSheet(
      context: context,
      builder: (BuildContext c) {
        return Container(
          width: w,
          decoration: BoxDecoration(
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
                    child: Padding(
                      padding: const EdgeInsets.all(15),
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
                  decoration: BoxDecoration(
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
                      Spacer(),
                      Radio(
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {}
                          return Colors.green;
                        }),
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(
                            () {
                              _value = value as int?;
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
                  decoration: BoxDecoration(
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
                      Spacer(),
                      Radio(
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {}
                          return Colors.green;
                        }),
                        value: 2,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(
                            () {
                              _value = value as int?;
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
                  decoration: BoxDecoration(
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
                      Spacer(),
                      Radio(
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {}
                          return Colors.green;
                        }),
                        value: 3,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(
                            () {
                              _value = value as int?;
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
                  decoration: BoxDecoration(
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
                      Spacer(),
                      Radio(
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {}
                          return Colors.green;
                        }),
                        value: 4,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(
                            () {
                              _value = value as int?;
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
                  decoration: BoxDecoration(
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
                      Spacer(),
                      Radio(
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {}
                          return Colors.green;
                        }),
                        value: 5,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(
                            () {
                              _value = value as int?;
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
                  decoration: BoxDecoration(
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
                      Spacer(),
                      Radio(
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {}
                          return Colors.green;
                        }),
                        value: 6,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(
                            () {
                              _value = value as int?;
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

  Widget content_2_1() {
    var w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
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
                    decoration: BoxDecoration(
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
                            'Xuất kho',
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
                                '0' + ' ₫',
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
                    decoration: BoxDecoration(
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
                            'Nhập kho',
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
                                '0' + ' ₫',
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
          container_content2(
              'Tồn kho thây đổi', 0, ' ₫', Color.fromARGB(255, 170, 43, 5)),
          container_content2('Ngày tồn kho dự kiến', 0, ' ngày', Colors.black),
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
                    'Tổng nhập theo hôm nay',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              children: [],
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
                  Text(
                    '   Hôm nay',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
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
                  Text(
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
                    Container(
                      width: w / 100 * 85,
                      height: h / 100 * 50,
                      child: chartA(context,null),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
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
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.info_outlined,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
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

  Widget button_content1(context1, context2, context3, Icon icon, Color color) {
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(6),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          maximumSize: Size(w / 100 * 42, w / 100 * 30),
          backgroundColor: Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          side: BorderSide(
            width: 2,
            color: Color.fromRGBO(56, 142, 60, 1),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(100)),
                  child: Padding(padding: const EdgeInsets.all(5), child: icon),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context1 + context2,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context3,
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                )
              ],
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
