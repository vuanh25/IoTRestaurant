import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/calendar_booking_screen/widget/booking_event.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:get/get.dart';

class CalendarViewScreen extends StatefulWidget {
  const CalendarViewScreen({Key? key}) : super(key: key);

  @override
  State<CalendarViewScreen> createState() => _CalendarViewScreenState();
}

class _CalendarViewScreenState extends State<CalendarViewScreen> {
  final scrollController = ScrollController();
  DateTime _currentDate = DateTime.now();
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
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Get.height * 0.48,
                padding: const EdgeInsets.all(8),
                child: CalendarCarousel<BookingEvent>(
                  selectedDateTime: _currentDate,
                  daysHaveCircularBorder: null,
                  markedDateMoreShowTotal: true,
                  onDayPressed: (DateTime date, List<BookingEvent> events) {
                    setState(() {
                      _currentDate = date;
                    });
                  },
                  locale: Get.locale?.languageCode ?? 'en',
                  weekFormat: false,
                  weekendTextStyle: const TextStyle(
                    color: Colors.red,
                  ),
                  selectedDayTextStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  daysTextStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  weekDayFormat: WeekdayFormat.narrow,
                  thisMonthDayBorderColor: GlobalColors.primaryColor,
                  headerTitleTouchable: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
