import 'package:flutter/material.dart';

class FoodList {
  final int id;
  final String name;
  final String image;
  bool isCheck;

  FoodList({
    required this.id,
    required this.name,
    required this.image,
    required this.isCheck,
  });
}

List<FoodList> foodList = [
  FoodList(
    id: 1,
    name: 'Burger',
    image: 'images/foods_icon_burger.jpg',
    isCheck: true,
  ),
  FoodList(
    id: 2,
    name: 'Bread',
    image: 'images/foods_icon_bread.jpg',
    isCheck: false,
  ),
  FoodList(
    id: 3,
    name: 'Meat',
    image: 'images/foods_icon_meat.jpg',
    isCheck: false,
  ),
  FoodList(
    id: 4,
    name: 'French fries',
    image: 'images/foods_icon_French_fries.jpg',
    isCheck: false,
  ),
  FoodList(
    id: 5,
    name: 'Pizza',
    image: 'images/foods_icon_pizza.jpg',
    isCheck: false,
  ),
  FoodList(
    id: 6,
    name: 'Meat',
    image: 'images/foods_icon_meat.jpg',
    isCheck: false,
  ),
  FoodList(
    id: 7,
    name: 'Meat',
    image: 'images/foods_icon_meat.jpg',
    isCheck: false,
  ),
];

class ChildWidget extends StatelessWidget {
  final Function(bool) updateButtonState;
  final FoodList item;

  ChildWidget({required this.updateButtonState, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        changeIsCheck(item.id);
        updateButtonState(true);
      },
      child: Padding(
        padding: const EdgeInsets.all(12.5),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
              color: Colors.white),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black)),
                  child: Image(
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                    image: AssetImage(
                      item.image,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  item.name + '2',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildFoodItem(FoodList item) {
  return Padding(
    padding: const EdgeInsets.all(12.5),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black),
          color: Colors.amber),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black),
                  color: Colors.white),
              child: Image(
                height: 60,
                width: 60,
                fit: BoxFit.cover,
                image: AssetImage(
                  item.image,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              item.name + '1',
              style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildFoodItemFalse(FoodList item) {
  return InkWell(
    onTap: () {
      changeIsCheck(item.id);
    },
    child: Padding(
      padding: const EdgeInsets.all(12.5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black),
            color: Colors.white),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: Image(
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    item.image,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                item.name + '2',
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

int LostNumber = 0;

void changeIsCheck(int numberID) {
  foodList[LostNumber].isCheck = false;
  LostNumber = numberID - 1;
  foodList[LostNumber].isCheck = true;
  print(LostNumber.toString() +
      'da check' +
      foodList[LostNumber].isCheck.toString());
}
