import 'package:flutter/material.dart';
import 'package:get/get.dart';

const double circleAvatar = 30;
ScrollController _scrollController = ScrollController();

const Color redBorderColor = Colors.red;
const Color backGroundAppBar = Color(0xFF31363C);
const Color colorIconAppBar = Colors.white;
const Color backGroundScaffold = Color(0xFF212326);
const Color colorHinText = Colors.grey;
const Color colorNameText = Colors.white;
const Color backGroundFoods = Color(0xFF282E38);
const Color backgroundButton = Color(0xffff9897);
const Color colorNamefood = Color(0xff566172);
bool _isSearchBarVisible = false;

class DarkModeScreen extends StatefulWidget {
  const DarkModeScreen({Key? key}) : super(key: key);

  @override
  State<DarkModeScreen> createState() => _DarkModeScreenState();
}

class _DarkModeScreenState extends State<DarkModeScreen> {
  List<bool> isSelected = [true, false, false];
  final List<TextStyle> _isCheck = [
    const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    const TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.normal,
    ),
    const TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.normal,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundScaffold,
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
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: colorIconAppBar,
          )
        ],
        backgroundColor: backGroundAppBar,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // Padding(
              //   padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
              //   child: TextField(
              //     decoration: InputDecoration(
              //         hintText: 'Search By Name',
              //         hintStyle: TextStyle(color: colorHinText),
              //         suffixIcon: Icon(Icons.search, color: colorHinText),
              //         border: OutlineInputBorder(
              //           borderSide: BorderSide(
              //             color: colorHinText,
              //           ),
              //           borderRadius: BorderRadius.circular(8),
              //         )),
              //   ),
              // ),
              Scrollbar(
                  controller: _scrollController,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: _scrollController,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i <= 30; i++)
                          Padding(
                            padding: const EdgeInsets.all(18.5),
                            child: Column(
                              children: const [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'images/burger.png',
                                  ),
                                  radius: circleAvatar,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Burger',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: colorNameText),
                                )
                              ],
                            ),
                          ),
                      ],
                    ),
                  )),
              ToggleButtons(
                borderRadius: BorderRadius.circular(8),
                borderColor: backgroundButton,
                fillColor: backgroundButton,
                textStyle: const TextStyle(color: Colors.black),
                isSelected: isSelected,
                onPressed: (int index) {
                  setState(() {
                    if (isSelected[index] == false) {
                      for (int i = 0; i < isSelected.length; i++) {
                        if (isSelected[i] == true) {
                          isSelected[i] = !isSelected[i];
                        }
                      }
                      isSelected[index] = !isSelected[index];
                    }
                    for (int i = 0; i < 3; i++) {
                      if (isSelected[i] == true) {
                        _isCheck[i] = const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold);
                      } else {
                        _isCheck[i] = const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.normal);
                      }
                    }
                  });
                },
                children: [
                  SizedBox(
                    width: 80,
                    child: Text(
                      'ALL',
                      style: _isCheck[0],
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Image(
                          image: AssetImage('icons/non_veg.png'),
                          width: 30,
                          // height: 30,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Non-Veg',
                          style: _isCheck[1],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Image(
                          image: AssetImage('icons/veg.png'),
                          width: 30,
                          // height: 40,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Veg',
                          style: _isCheck[2],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                  child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: List.generate(foods.length, (index) {
                        return Center(
                          child: SelectCard(food: foods[index]),
                        );
                      })))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: backgroundButton,
        child: const Icon(Icons.settings),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class Food {
  final String name;
  final String imageUrl;
  final String price;
  const Food({required this.name, required this.imageUrl, required this.price});
}

const List<Food> foods = <Food>[
  Food(
      name: 'Set Menu 1', imageUrl: 'images/burger.png', price: '\$140.00'),
  Food(
      name: 'Set Menu 2', imageUrl: 'images/burger.png', price: '\$140.00'),
  Food(
      name: 'Set Menu 3', imageUrl: 'images/burger.png', price: '\$140.00'),
  Food(
      name: 'Set Menu 4', imageUrl: 'images/burger.png', price: '\$140.00'),
  Food(
      name: 'Set Menu 5', imageUrl: 'images/burger.png', price: '\$140.00'),
  Food(
      name: 'Set Menu 6', imageUrl: 'images/burger.png', price: '\$140.00'),
  Food(
      name: 'Set Menu 7', imageUrl: 'images/burger.png', price: '\$140.00'),
  Food(
      name: 'Set Menu 8', imageUrl: 'images/burger.png', price: '\$140.00'),
  Food(
      name: 'Set Menu 9', imageUrl: 'images/burger.png', price: '\$140.00'),
  Food(
      name: 'Set Menu 10', imageUrl: 'images/burger.png', price: '\$140.00'),
  Food(
      name: 'Set Menu 11', imageUrl: 'images/burger.png', price: '\$140.00'),
  Food(
      name: 'Set Menu 12', imageUrl: 'images/burger.png', price: '\$140.00'),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.food}) : super(key: key);
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      color: backGroundFoods,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Container(
              // decoration: BoxDecoration(color: Colors.blueGrey.shade800),
              alignment: Alignment.center,
              height: 50,
              child: Text(
                food.name,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: colorNamefood),
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(food.imageUrl), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(8)),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        width: double.infinity,
                        height: 70,
                        child: Center(
                          child: Text(
                            food.price,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
