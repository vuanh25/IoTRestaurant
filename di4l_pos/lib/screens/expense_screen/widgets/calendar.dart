import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:get/get.dart';

const TextStyle _textStyle =
    TextStyle(color: Colors.green, fontWeight: FontWeight.bold);
DateTime _currentDate = DateTime(2023, 1, 1);
String currentDate = '';
String currenDate = DateFormat.yMEd().format(_currentDate);
String _currentMonth = DateFormat.yM().format(DateTime.now());
DateTime _targetDateTime = DateTime(2023, 2, 2);
String target = '';
String setDateTime = '';

class TableCalendar extends StatefulWidget {
  const TableCalendar({Key? key, required this.onTextInput}) : super(key: key);
  @override
  State<TableCalendar> createState() => _TableCalendar();
  final ValueSetter<String> onTextInput;
}

class _TableCalendar extends State<TableCalendar> {
  @override
  Widget build(BuildContext context) {
    final calendarCarouselNoHeader = CalendarCarousel<Event>(
      weekdayTextStyle: const TextStyle(color: Colors.grey),
      todayBorderColor: Colors.green,
      onDayPressed: (date, events) {
        setState(() => _currentDate = date);
        // ignore: avoid_function_literals_in_foreach_calls
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: null,
      showOnlyCurrentMonthDate: false,
      daysTextStyle:
          const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      weekendTextStyle:
          const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
      height: MediaQuery.of(context).size.height / 3,
      selectedDateTime: _currentDate,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
          const CircleBorder(side: BorderSide(color: Colors.yellow)),
      markedDateCustomTextStyle: const TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      showHeader: false,
      todayTextStyle: const TextStyle(
          color: Color.fromARGB(255, 249, 252, 255),
          fontWeight: FontWeight.bold),
      todayButtonColor: Colors.green,
      selectedDayTextStyle:
          const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      minSelectedDate: _currentDate.subtract(const Duration(days: 360)),
      maxSelectedDate: _currentDate.add(const Duration(days: 360)),
      prevDaysTextStyle:
          const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
      inactiveDaysTextStyle: const TextStyle(
        color: Colors.tealAccent,
        fontSize: 16,
      ),
      onCalendarChanged: (DateTime date) {
        setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yM().format(_targetDateTime);
        });
      },
    );

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
      ),
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  setState(() {
                    _targetDateTime = DateTime(
                        _targetDateTime.year, _targetDateTime.month - 1);
                    _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                  });
                },
                icon: const Icon(
                  Icons.arrow_left,
                  color: Colors.blue,
                ),
              ),
              Text(
                _currentMonth,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _targetDateTime = DateTime(
                          _targetDateTime.year, _targetDateTime.month + 1);
                      _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_right,
                    color: Colors.blue,
                  )),
            ],
          ),
          calendarCarouselNoHeader,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text(
                    'cancel'.tr,
                    style: _textStyle,
                  )),
              TextButton(
                onPressed: () {
                  currentDate = DateFormat('dd/MM/yyyy').format(_currentDate);
                  widget.onTextInput.call(currentDate);
                  Navigator.of(context).pop(true);
                },
                child: Text(
                  'ok'.tr,
                  style: _textStyle,
                ),
              )
            ],
          ) //
        ],
      ),
    );
  }
}
