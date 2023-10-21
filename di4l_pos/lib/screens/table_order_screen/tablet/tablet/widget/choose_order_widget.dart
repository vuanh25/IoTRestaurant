import 'package:flutter/material.dart';

String? _selectedOption = 'Popular';

class ChooseOrderWidget extends StatelessWidget {
  const ChooseOrderWidget({
    Key? key,
    required this.updateButtonState,
  }) : super(key: key);
  final Function(bool) updateButtonState;

  // final List<User> _users = [
  //   User(name: 'Alice', isVegetarian: true),
  //   User(name: 'Bob', isVegetarian: false),
  //   User(name: 'Charlie', isVegetarian: true),
  //   User(name: 'David', isVegetarian: false),
  // ];

  // List<User> get _filteredUsers {
  //   if (_selectedOption == 'Vegetarian') {
  //     return _users.where((user) => user.isVegetarian).toList();
  //   } else if (_selectedOption == 'Non-Vegetarian') {
  //     return _users.where((user) => !user.isVegetarian).toList();
  //   } else {
  //     return _users;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Text(
                'Choose ',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Order',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                'Sort By ',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Container(
                alignment: Alignment.topRight,
                child: DropdownButton<String>(
                  focusColor: Colors.white,
                  dropdownColor: Colors.white,
                  icon: const Icon(Icons.expand_more_rounded),
                  style: const TextStyle(fontWeight: FontWeight.w900),
                  underline: Container(),
                  value: _selectedOption,
                  items: const [
                    DropdownMenuItem(
                      value: 'Popular',
                      child: Text('Popular'),
                    ),
                    DropdownMenuItem(
                      value: 'Vegetarian',
                      child: Text('Vegetarian'),
                    ),
                    DropdownMenuItem(
                      value: 'Non-Vegetarian',
                      child: Text('Non-Vegetarian'),
                    ),
                  ],
                  onChanged: (value) {
                    updateButtonState(true);
                    _selectedOption = value;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class User {
  final String name;
  final bool isVegetarian;

  const User({
    required this.name,
    required this.isVegetarian,
  });
}
