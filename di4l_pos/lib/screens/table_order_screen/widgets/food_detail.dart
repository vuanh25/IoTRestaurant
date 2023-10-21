// ignore_for_file: unnecessary_const

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/screens/cart_table_order_screen/cubit/cart_table_order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

double circleAvatar = 30;
ScrollController _scrollController = ScrollController();
Color redBorderColor = Colors.red;
bool isOrderDetail = true;

Color colorRed = Colors.redAccent;

class FoodDetailScreen extends StatefulWidget {
  static BlocProvider<CartCubit> provider() {
    return BlocProvider(
      create: (BuildContext context) => CartCubit(),
      child: const FoodDetailScreen(),
    );
  }

  const FoodDetailScreen({Key? key}) : super(key: key);

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<CartCubit>().getCart();
  }

  List<bool> isSelected = [true, false, false];
  bool _isSearchBarVisible = false;


  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        appBar: AppBar(
          title: _isSearchBarVisible
              ? const TextField()
              : Image(
                  image: const AssetImage(
                    'images/foodOder_logo.png',
                  ),
                  width: Get.width * 0.4,
                ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              setState(() {
                _isSearchBarVisible = !_isSearchBarVisible;
              });
            },
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              color: Colors.black,
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0),
          child: Column(children: [
            SizedBox(
              height: Get.width * 0.3,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                          image: AssetImage('images/burger.png'),
                          fit: BoxFit.cover),
                    ),
                    width: Get.width * 0.3,
                    //  height: Get.width * 0.3,
                    child: Container(),
                  ),
                  Expanded(
                    // width: Get.width * 0.4,
                    // height: Get.width * 0.3,
                    // decoration:
                    //     BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Buddy Zinger Combo',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: const Text(
                              '\$12.00',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
              child: Container(
                alignment: Alignment.topLeft,
                //  alignment: Alignment.topRight,
                child: const Text(
                  'Desscriptipn',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),
            const Text(
              'DesscriptipnDesscriptipnDesscriptipnDesscriptipnDesscriptipnDesscriptipnDesscriptipn',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                  fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add, size: 25, color: Colors.black),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add, size: 20, color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Text(
                  'Addos',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '(Optional)',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                )
              ],
            ),
            Scrollbar(
                controller: _scrollController,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (int i = 0; i <= 3; i++)
                        const Padding(
                            padding: EdgeInsets.only(
                              top: 18.5,
                              right: 10,
                            ),
                            child: AddonsCard()),
                    ],
                  ),
                )),
          ]),
        ),
        floatingActionButton: SizedBox(
          width: 45,
          height: 45,
          child: FloatingActionButton(
            materialTapTargetSize: MaterialTapTargetSize.padded,
            mini: false,
            backgroundColor: Colors.white,
            onPressed: () {},
            child: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          ),
        ),
        floatingActionButtonLocation: CustomFloatingActionButtonLocation(),
      ),
      Positioned(
        right: 0,
        bottom: 0,
        left: 0,
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
          width: Get.width,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total: \$100',
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: colorRed,
                        border: Border.all(color: colorRed),
                        borderRadius: BorderRadius.circular(8)),
                    height: 50,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Comfirm Payment',
                          style: TextStyle(color: Colors.white),
                        ))),
              )
            ],
          ),
        ),
      )
    ]);
  }
}

class Food {
  final String name;
  final String imageUrl;
  final String price;
  const Food({required this.name, required this.imageUrl, required this.price});
}

class AddonsCard extends StatefulWidget {
  const AddonsCard({
    Key? key,
  }) : super(key: key);
  // final Food food;

  @override
  _AddonsCardState createState() => _AddonsCardState();
}

class _AddonsCardState extends State<AddonsCard> {
  int _index = 1;
  int _number = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (_index == 1) {
            _index = 0;
          } else {
            _index = 1;
          }
        });
      },
      child: Card(
          elevation: 6.0,
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: IndexedStack(index: _index, children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(8)),
                height: Get.width * 0.2,
                width: Get.width * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Cheese',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '\$20.00',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.redAccent,
              ),
              height: Get.width * 0.25,
              width: Get.width * 0.25,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Cheese',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          '\$20.00',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          // height: Get.width * 0.18,
                          width: Get.width * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (_number > 0) {
                                      _number--;
                                    }
                                  });
                                },
                                icon: const Icon(Icons.add,
                                    size: 20, color: Colors.black),
                              ),
                              Container(
                                width: 20,
                                alignment: Alignment.center,
                                child: Text(
                                  _number.toString(),
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _number++;
                                  });
                                },
                                icon: const Icon(Icons.add,
                                    size: 20, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ])),
    );
  }
}

const List<Food> foods = <Food>[
  const Food(
      name: 'Set Menu 1', imageUrl: 'images/burger.png', price: '\$140.00'),
  const Food(
      name: 'Set Menu 2', imageUrl: 'images/burger.png', price: '\$140.00'),
  const Food(
      name: 'Set Menu 3', imageUrl: 'images/burger.png', price: '\$140.00'),
  const Food(
      name: 'Set Menu 4', imageUrl: 'images/burger.png', price: '\$140.00'),
  const Food(
      name: 'Set Menu 5', imageUrl: 'images/burger.png', price: '\$140.00'),
  const Food(
      name: 'Set Menu 6', imageUrl: 'images/burger.png', price: '\$140.00'),
  const Food(
      name: 'Set Menu 7', imageUrl: 'images/burger.png', price: '\$140.00'),
  const Food(
      name: 'Set Menu 8', imageUrl: 'images/burger.png', price: '\$140.00'),
  const Food(
      name: 'Set Menu 9', imageUrl: 'images/burger.png', price: '\$140.00'),
  const Food(
      name: 'Set Menu 10', imageUrl: 'images/burger.png', price: '\$140.00'),
  const Food(
      name: 'Set Menu 11', imageUrl: 'images/burger.png', price: '\$140.00'),
  const Food(
      name: 'Set Menu 12', imageUrl: 'images/burger.png', price: '\$140.00'),
];

class CustomFloatingActionButtonLocation extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    // Tính toán vị trí của nút tùy chỉnh
    return const Offset(5, 5);
  }

  @override
  String toString() => 'CustomFloatingActionButtonLocation';
}
