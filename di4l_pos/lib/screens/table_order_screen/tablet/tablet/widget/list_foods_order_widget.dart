import 'package:flutter/material.dart';
import 'package:get/get.dart';

double total = 0;

class ListFoodsOrder extends StatelessWidget {
  const ListFoodsOrder({Key? key, required this.updateButtonState})
      : super(key: key);
  final Function(bool) updateButtonState;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Get.height / 2,
          child: Padding(
            padding: const EdgeInsets.only(),
            child: ListView.builder(
              itemCount: foodOrders.length,
              itemBuilder: (context, index) {
                if (1 == 1) {
                  updateButtonState(true);
                }
                return SelectCardFoodOrder(
                  food: foodOrders[index],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class SelectCardFoodOrder extends StatefulWidget {
  FoodOrder food;

  SelectCardFoodOrder({
    Key? key,
    required this.food,
  }) : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  State<SelectCardFoodOrder> createState() => _SelectCardFoodOrderState(
        food: food,
      );
}

class _SelectCardFoodOrderState extends State<SelectCardFoodOrder> {
  FoodOrder food;

  _SelectCardFoodOrderState({
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    total += (food.number * food.price);
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          //  border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8)),
      height: 80,
      child: Row(children: [
        Container(
          height: 50,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            //border: Border.all(color: Colors.black)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              //image: AssetImage('images/burger.png'),
              food.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    food.name,
                    style: const TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '\$' + food.price.toString(),
                    style: const TextStyle(
                      fontSize: 12,
                      decoration: TextDecoration.none,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Text(
            'x' + food.number.toString(),
            style: const TextStyle(
              fontSize: 12,
              decoration: TextDecoration.none,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            child: Text(
              '\$' + (food.number * food.price).toString(),
              style: const TextStyle(
                fontSize: 12,
                decoration: TextDecoration.none,
                color: Colors.grey,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class FoodOrder {
  int id;
  String name;
  double price;
  int number;
  String imageUrl;

  FoodOrder({
    required this.id,
    required this.name,
    required this.price,
    required this.number,
    required this.imageUrl,
  });
}

final List<FoodOrder> foodOrders = [
  FoodOrder(
    id: 1,
    name: 'Burger',
    price: 5.99,
    number: 1,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_1280.jpg',
  ),
  FoodOrder(
    id: 2,
    name: 'Pizza',
    price: 10.99,
    number: 1,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_1280.jpg',
  ),
  FoodOrder(
    id: 3,
    name: 'Taco',
    price: 2.99,
    number: 1,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/7/73/001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg',
  ),
  FoodOrder(
    id: 4,
    name: 'Sushi',
    price: 12.99,
    number: 1,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Sushi_platter.jpg/450px-Sushi_platter.jpg',
  ),
  FoodOrder(
    id: 5,
    name: 'Salad',
    price: 4.99,
    number: 1,
    imageUrl: 'https://images.unsplash.com/photo-1432139509613-5c4255815697',
  ),
];
