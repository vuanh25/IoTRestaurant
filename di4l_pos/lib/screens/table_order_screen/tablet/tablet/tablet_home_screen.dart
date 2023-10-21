import 'package:di4l_pos/screens/table_order_screen/widgets/food_detail.dart';
import 'package:di4l_pos/screens/table_order_screen/tablet/tablet/module/post_food.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'module/dash_line_painter.dart';
import 'module/net_work.dart';
import 'widget/categary_menu_widget.dart';
import 'widget/choose_order_widget.dart';
import 'widget/list_foods_order_widget.dart';

String? _selectedOption;
double circleAvatar = 30;
ScrollController _scrollController = ScrollController();
Color BackCategry = Colors.amber;

class TabletHomeScreen extends StatefulWidget {
  const TabletHomeScreen({Key? key}) : super(key: key);

  @override
  State<TabletHomeScreen> createState() => _TabletHomeScreenState();
}

class _TabletHomeScreenState extends State<TabletHomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  Color backgroundTrue = Colors.redAccent;
  Color backgroundFalse = Colors.white;

  List<PostFood> postData = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NetworkRequest.fetchPosts().then((dataFromServer) {
      postData = dataFromServer;
    });
  }

// kiểm tra xem category button
  void checkbutton(ItemInfo item) {
    for (ItemInfo a in itemList) {
      if (a.isSelected == true) {
        a.isSelected = !a.isSelected;
        a.backgroundColor = backgroundFalse;
        a.iconColor = Colors.black;
      }
      item.isSelected = true;
      item.backgroundColor = backgroundTrue;
      item.iconColor = Colors.white;
    }
  }

  bool _isButtonPressed = false;

  void _updateButtonState(bool isPressed) {
    setState(() {
      _isButtonPressed = isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    var food;
    return Stack(
      children: [
        Scaffold(
          appBar: null,
          body: Row(
            children: [
              SizedBox(
                width: Get.width / 16,
              ),
              // Lớp mẹ
              Container(
                width: Get.width - Get.width / 4 - Get.width / 16,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Column(children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: const [
                                  Text(
                                    'Menu',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Category',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              width: Get.width / 3.5,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black)),
                              child: const TextField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  hintText: 'Search for food, coffee, etc',
                                  border: InputBorder.none,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Veg
                      Scrollbar(
                          controller: _scrollController,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            controller: _scrollController,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for (int i = 0; i < foodList.length; i++)
                                  if (foodList[i].isCheck == true)
                                    buildFoodItem(foodList[i])
                                  else
                                    //  buildFoodItemFalse(foodList[i])
                                    ChildWidget(
                                      item: foodList[i],
                                      updateButtonState: _updateButtonState,
                                    )
                              ],
                            ),
                          )),
                      ChooseOrderWidget(updateButtonState: _updateButtonState),
                      // const FoodsListWidget(),
                    ]),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            width: Get.width / 16,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // Vị trí của đổ bóng
                  ),
                ],
              ),
              child: Scaffold(
                body: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 26.0, left: 8.0, right: 8.0, top: 26),
                      child: SizedBox(
                          width: Get.width / 16 - 10,
                          child: const Image(
                              image: AssetImage('images/splash_image1.png'))),
                    ),
                    for (int i = 0; i < itemList.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18.0),
                        child: Container(
                            width: Get.width / 16 - 10,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: itemList[i].backgroundColor,
                                //  shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white)),
                            child: IconButton(
                                onPressed: () {
                                  if (itemList[i].isSelected == false) {
                                    setState(() {
                                      checkbutton(itemList[i]);
                                    });
                                  }
                                },
                                icon: Icon(itemList[i].icon,
                                    color: itemList[i].iconColor))),
                      ),
                  ],
                ),
              ),
            )),

        /// Right Screen
        Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // Vị trí của đổ bóng
                  ),
                ],
              ),
              width: Get.width / 4,
              // height: Get.width * 0.1,
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 45,
                            child: Row(
                              children: const [
                                Text(
                                  'Order',
                                  textDirection: null,
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Menu',
                                  style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ListFoodsOrder(updateButtonState: _updateButtonState),
                          const SizedBox(
                            height: 30,
                          ),
                          DashedLine(),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: const Text(
                                      'Sub Total',
                                      style: TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration.none,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Container(
                                      child: const Text(
                                        'PB(5%)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          decoration: TextDecoration.none,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      '\$' + total.toStringAsFixed(2),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Container(
                                      child: Text(
                                        '\$' +
                                            (total * 0.05).toStringAsFixed(2),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          decoration: TextDecoration.none,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Container(
                          width: Get.width / 4 - 30,
                          decoration: BoxDecoration(
                              color: colorRed,
                              border: Border.all(color: colorRed),
                              borderRadius: BorderRadius.circular(8)),
                          height: 50,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Comfirm Payment',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      '\$' +
                                          (total + (total * 0.05))
                                              .toStringAsFixed(2),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ))),
                    )
                  ],
                ),
              ),
            ))
      ],
    );
  }
}

class ItemInfo {
  Color backgroundColor;
  Color iconColor;
  bool isSelected;
  IconData icon;

  ItemInfo({
    required this.backgroundColor,
    required this.iconColor,
    required this.isSelected,
    required this.icon,
  });
}

List<ItemInfo> itemList = [
  ItemInfo(
    backgroundColor: Colors.red,
    iconColor: Colors.white,
    isSelected: true,
    icon: Icons.home,
  ),
  ItemInfo(
    backgroundColor: Colors.white,
    iconColor: Colors.black,
    isSelected: false,
    icon: Icons.settings,
  ),
  ItemInfo(
    backgroundColor: Colors.white,
    iconColor: Colors.black,
    isSelected: false,
    icon: Icons.notifications,
  ),
  ItemInfo(
    backgroundColor: Colors.white,
    iconColor: Colors.black,
    isSelected: false,
    icon: Icons.person,
  ),
  ItemInfo(
    backgroundColor: Colors.white,
    iconColor: Colors.black,
    isSelected: false,
    icon: Icons.shopping_cart,
  ),
  ItemInfo(
    backgroundColor: Colors.white,
    iconColor: Colors.black,
    isSelected: false,
    icon: Icons.search,
  ),
];
