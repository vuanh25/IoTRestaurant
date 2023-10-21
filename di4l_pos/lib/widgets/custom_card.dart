import 'package:flutter/material.dart';

class CustomCardTitle extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomCardTitle({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: OutlinedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0))),
          ),
          child: const Text("Select"),
        ),
      ),
    );
  }
}
