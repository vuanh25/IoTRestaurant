// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, camel_case_types

import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';

class datePicker extends StatelessWidget{
  datePicker({Key? key}) : super(key: key);
  List<DateTime?> result = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
        ),
      child: Column(children: [
        Text("Chọn ngày bắt đầu", style: GlobalStyles.titleHeader(context),),
        CalendarDatePicker2(
        config: CalendarDatePicker2Config(
            calendarType: CalendarDatePicker2Type.range,
        ),
        value: result,
        onValueChanged: (dates) => result = dates,),
        const Spacer(),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.65,
          height: MediaQuery.of(context).size.height * 0.05,
          child: ElevatedButton(onPressed: (){
            Navigator.of(context).pop(result.toString());
          }, 
            child: Text("Lưu", style: GlobalStyles.robotoBold(context),)
          ),
        )
      ]),
    );
  }
}