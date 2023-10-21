import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class Tap1Screen extends StatefulWidget {
  const Tap1Screen({Key? key}) : super(key: key);

  @override
  State<Tap1Screen> createState() => _Tap1State();
}

class _Tap1State extends State<Tap1Screen> {
  TextStyle thu = TextStyle(
      color: Color.fromARGB(255, 1, 117, 40), fontWeight: FontWeight.w600);
  TextStyle chi = TextStyle(
      color: Color.fromARGB(255, 241, 65, 0), fontWeight: FontWeight.w600);
  TextStyle grey = TextStyle(color: Color.fromARGB(255, 129, 125, 125));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Tabbar(context),
    );
  }

  Widget Tabbar(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.only(top: 5, left: 5, bottom: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(147, 217, 216, 216)),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 222, 222, 222)),
                  child: ButtonsTabBar(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    unselectedBackgroundColor:
                        Color.fromARGB(255, 222, 222, 222),
                    unselectedLabelStyle: TextStyle(color: Colors.black),
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Color.fromARGB(255, 0, 101, 7),
                    ),
                    tabs: [
                      const Tab(
                        text: 'Hôm nay',
                      ),
                      const Tab(
                        text: 'Tháng này',
                      ),
                      const Tab(
                        text: 'Tháng trước',
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                content_1(context),
                content_2(context),
                content_1(context)
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: w,
            height: (w / 100 * 15 + 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size((w / 100 * 15), (w / 100 * 15)),
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      width: 3,
                      color: Color.fromARGB(232, 11, 141, 54),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        size: 30,
                        color: Colors.green[700],
                      ),
                    ],
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size((w / 100 * 15), (w / 100 * 15)),
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      width: 3,
                      color: Color.fromARGB(232, 11, 141, 54),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.upload_sharp,
                        size: 30,
                        color: Colors.green[700],
                      ),
                    ],
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size((w / 100 * 60), 60),
                    backgroundColor: Color.fromARGB(232, 11, 141, 54),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                      ),
                      Text(
                        "Tải báo cáo",
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget content_1(BuildContext context) => SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 150),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bạn chưa có dữ liệu bán hàng nào được ghi lại.',
                style: TextStyle(color: Colors.grey[900], fontSize: 17),
              )
            ],
          ),
          SizedBox(height: 20),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: Size((250), 60),
              backgroundColor: Color.fromARGB(232, 11, 141, 54),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Tạo đơn hàng",
              style: TextStyle(fontSize: 22.0, color: Colors.white),
            ),
          ),
        ]),
      );

  Widget content_2(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        width: w,
        color: Colors.grey[200],
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    maximumSize: Size(w / 100 * 95, w / 100 * 30),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.monetization_on,
                            color: Colors.yellow[900],
                            size: 28,
                          ),
                          Text(
                            ' Lợi nhuận',
                            style: TextStyle(
                                color: Colors.grey[700], fontSize: 18),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '65.000' + ' ₫',
                            style: TextStyle(
                                color: Colors.green[800],
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              width: w,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 8, left: 20, right: 20),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide(
                        width: 2, color: Color.fromRGBO(25, 118, 210, 1)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Lợi nhuận theo sản phẩm',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(25, 118, 210, 1),
                              fontWeight: FontWeight.w100),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20,
                          color: Color.fromRGBO(25, 118, 210, 1),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              width: w,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 12, bottom: 12, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Chi tiết báo cáo',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: ExpansionTile(
                        backgroundColor: Colors.grey[200],
                        leading: Text(
                          'Doanh thu',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        collapsedIconColor: Color.fromRGBO(0, 0, 0, 1),
                        title: Text(
                          '125.000',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          ),
                        ),
                        children: <Widget>[
                          ListTile(
                            textColor: Colors.black,
                            leading: Text(
                              'Tổng giá bán',
                              style: TextStyle(fontSize: 20),
                            ),
                            trailing: Text(
                              '125.000',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          ListTile(
                            textColor: Colors.black,
                            title: Text(
                              'Bán hàng Online',
                              style: TextStyle(fontSize: 20),
                            ),
                            trailing: Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          ListTile(
                            textColor: Colors.black,
                            leading: Text(
                              'Thu phí vận chuyển',
                              style: TextStyle(fontSize: 20),
                            ),
                            trailing: Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          ListTile(
                            textColor: Colors.black,
                            leading: Text(
                              'Khuyến mãi',
                              style: TextStyle(fontSize: 20),
                            ),
                            trailing: Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          ListTile(
                            textColor: Colors.black,
                            leading: Text(
                              'Chiết khấu',
                              style: TextStyle(fontSize: 20),
                            ),
                            trailing: Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          ListTile(
                            textColor: Colors.black,
                            leading: Text(
                              'Trả hàng',
                              style: TextStyle(fontSize: 20),
                            ),
                            trailing: Text(
                              '0',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Color.fromRGBO(25, 118, 210, 1),
                                  size: 20,
                                ),
                                Text(
                                  'Thêm doanh thu khác',
                                  style: TextStyle(
                                      color: Color.fromRGBO(25, 118, 210, 1),
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200]),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Giá vốn hàng bán',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Text(
                              '60.000',
                              style: TextStyle(color: Colors.red, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: ExpansionTile(
                        backgroundColor: Colors.grey[200],
                        leading: Text(
                          'Chi phí',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        collapsedIconColor: Color.fromRGBO(0, 0, 0, 1),
                        title: Text(
                          '0',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          ),
                        ),
                        children: <Widget>[
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Color.fromRGBO(25, 118, 210, 1),
                                  size: 20,
                                ),
                                Text(
                                  'Thêm chi phí khác',
                                  style: TextStyle(
                                      color: Color.fromRGBO(25, 118, 210, 1),
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
