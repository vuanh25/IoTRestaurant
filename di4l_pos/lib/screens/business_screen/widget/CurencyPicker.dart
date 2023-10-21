// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, camel_case_types, prefer_const_constructors_in_immutables, file_names

import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/shopinfo/response/Currency.dart';
import 'package:di4l_pos/screens/business_screen/sub_screen/shop_info/cubit/shopInfo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurencyPicker extends StatefulWidget{
  CurencyPicker({Key? key}) : super(key: key);

  static BlocProvider<ShopInfoCubit> provider() {
    return BlocProvider(
      create: (context) => ShopInfoCubit(),
      child: CurencyPicker(),
    );
  }

  @override
  State<CurencyPicker> createState() => _CurencyPickerState();
}
class _CurencyPickerState extends State<CurencyPicker>{
  List<Currency> lstCur = [], items = [];
  TextEditingController ctr = TextEditingController();
  @override
  void initState() {
    context.read<ShopInfoCubit>().getListCurrency();
    super.initState();
  }

  void filterSearchResults(String query) {
    setState(() {
      items = lstCur
          .where((item) => item.info!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(builder: (context, state) {
      lstCur = state.data!.listCurrency;   
      if(items.isEmpty){
        items = lstCur;
      }  
      return Container(
        height: MediaQuery.of(context).size.height * 0.8,
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
          ),
        child: Column(children: [
          Text("Chọn đơn vị Tiền", style: GlobalStyles.titleHeader(context),),
          TextFormField(
            controller: ctr,
            onChanged: (value) => filterSearchResults(value),
            decoration: const InputDecoration(
              hintText: "Nhập đơn vị Tiền",
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
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: MediaQuery.of(context).size.height * 0.68,
            child: SingleChildScrollView(
              child: ListView.builder( 
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return 
                    ListTile(
                      onTap: (){
                        setState(() {
                          Navigator.of(context).pop(items[index]);
                        });
                      },
                      title: Text( 
                        items[index].info!,
                        style: GlobalStyles.robotoRegular(context),                     
                      ),
                    );
                  }
                ),
              ),
            )
        ]),
      );
    }
  );
}}