import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalendarListViewScreen extends StatefulWidget {
  const CalendarListViewScreen({Key? key}) : super(key: key);

  @override
  State<CalendarListViewScreen> createState() => _CalendarListViewScreenState();
}

class _CalendarListViewScreenState extends State<CalendarListViewScreen> {
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ScrollingFabAnimatedCustom(
        height: 48,
        text: 'add_todo'.tr,
        iconData: Icons.person_add_alt_1,
        scrollController: scrollController,
        onPress: () {
          navigator!.pushNamed(
            RouteGenerator.addTodoScreen,
          );
        },
      ),
    );
  }
}
