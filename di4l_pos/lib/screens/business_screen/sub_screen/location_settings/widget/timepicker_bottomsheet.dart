// ignore_for_file: unused_local_variable

import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/business_screen/sub_screen/shop_info/cubit/shopInfo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimePickerBottmSheet extends StatefulWidget{
  static BlocProvider<ShopInfoCubit> provider() {
    return BlocProvider(
      create: (context) => ShopInfoCubit(),
      child: const TimePickerBottmSheet(),
    );
  }
  
  const TimePickerBottmSheet({Key? key}) : super(key: key);

  @override
  State<TimePickerBottmSheet> createState() => _TimePickerBottmSheetState();
}
class _TimePickerBottmSheetState extends State<TimePickerBottmSheet>{
  bool isChecked = false, isChecked1 = false;
  String? value;
  @override
  void initState() {
    super.initState();
    // context.read<ShopInfoCubit>().getlistInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.47,
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
        ),
        child: Column(children: [
          Text("Cập nhật giờ hoạt động", style: GlobalStyles.titleHeader(context),),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              CheckboxListTile(value: isChecked, 
                title: Text("Luôn mở cửa", style: GlobalStyles.titilliumSemiBold(context),),
                subtitle: Text("hoạt dộng 24/7", style: GlobalStyles.titilliumRegular(context),),
                onChanged: (bool? value){
                  setState(() {
                    isChecked = value!;
                  });
                }
              ),
              CheckboxListTile(value: isChecked1, 
                title: Text("Giờ làm việc tiêu chuẩn", style: GlobalStyles.titilliumSemiBold(context),),
                onChanged: (bool? value){
                  setState(() {
                    isChecked1 = value!;
                  });
                }
              ),
              Row(
                children: [
                  buildTimePicker1(),
                  const Spacer(),
                  buildTimePicker2()
                ],
              ),
              const Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.65,
                height: MediaQuery.of(context).size.height * 0.05,
                child: ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, 
                  child: Text("Lưu", style: GlobalStyles.robotoBold(context),)
                ),
              )
            ]),
          ),
        ],),
      );
  }

  BlocBuilder<ShopInfoCubit, ShopInfoState> buildTimePicker1(){
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(builder: (context, state){
      // final _menu = state.data?.listInfo ?? [];
      TextEditingController  txt = TextEditingController(text:"",);
      // if (_menu.isEmpty) {
      //   return const SizedBox.shrink();
      // }
      return SizedBox(
        width: MediaQuery.of(context).size.width * 0.42,
        child: TextFormField(
            controller: txt,
            readOnly: true,
            decoration: const InputDecoration(
              labelText: "Giờ mở cửa",
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff49545C),
                  fontSize: 18),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              icon: Icon(Icons.search, color: Color(0xff434345)),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffDFDFDF),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffDFDFDF),
                ),
              ),
            ),
            onTap: () async {
              setState(() {
                // _menu.elementAt(4).icon1 = subString;
                // txt.text = _menu.elementAt(4).icon1!;
              });
            },
          ),
      );
      }
    );
  }

  BlocBuilder<ShopInfoCubit, ShopInfoState> buildTimePicker2(){
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(builder: (context, state){
      // final _menu = state.data?.listInfo ?? [];
      TextEditingController  txt = TextEditingController(text: "",);
      // if (_menu.isEmpty) {
      //   return const SizedBox.shrink();
      // }
      return SizedBox(
        width: MediaQuery.of(context).size.width * 0.42,
        child: TextFormField(
            controller: txt,
            readOnly: true,
            decoration: const InputDecoration(
              labelText: "Giờ mở cửa",
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff49545C),
                  fontSize: 18),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon:
                  Icon(Icons.access_time_outlined, color: Color(0xff434345)),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffDFDFDF),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffDFDFDF),
                ),
              ),
            ),
            onTap: () async {
              TimeOfDay? selectedTime = (await showTimePicker(
                initialTime: TimeOfDay.now(),
                context: context,));
              String subString = selectedTime.toString().substring(10, 15);            
              setState(() {    
                // _menu.elementAt(4).icon2 = subString;        
                // txt.text = _menu.elementAt(4).icon2!;
              }
            );
          },
        ),
      );
    });
  }
}