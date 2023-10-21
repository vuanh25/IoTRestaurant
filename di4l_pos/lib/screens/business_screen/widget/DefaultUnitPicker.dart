// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, camel_case_types, prefer_const_constructors_in_immutables, file_names, prefer_interpolation_to_compose_strings

import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/business_screen/sub_screen/shop_info/cubit/shopInfo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/shopinfo/response/DefaultUnit.dart';

class DefaultUnitPicker extends StatefulWidget{
  DefaultUnitPicker({Key? key}) : super(key: key);

  static BlocProvider<ShopInfoCubit> provider() {
    return BlocProvider(
      create: (context) => ShopInfoCubit(),
      child: DefaultUnitPicker(),
    );
  }

  @override
  State<DefaultUnitPicker> createState() => _DefaultUnitPickerState();
}
class _DefaultUnitPickerState extends State<DefaultUnitPicker>{
  List<Data> lstUnit = [], items = [];
  TextEditingController ctr = TextEditingController();
  @override
  void initState() {
    context.read<ShopInfoCubit>().getListUnit();
    super.initState();
  }

  void filterSearchResults(String query) {
    setState(() {
      items = lstUnit
          .where((item) => item.actualName!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
        ),
      child: Column(children: [
        Text("Chọn đơn vị mặc định", style: GlobalStyles.titleHeader(context),),
        TextFormField(
          controller: ctr,
          onChanged: (value) => filterSearchResults(value),
            decoration: const InputDecoration(
              hintText: "Nhập đơn vị",
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
        BlocBuilder<ShopInfoCubit, ShopInfoState>(builder: (context, state) {
          lstUnit = state.data!.listDFUnit?.data ?? [];
          if(items.isEmpty){
            items = lstUnit;
          } 
          return Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: MediaQuery.of(context).size.height * 0.5,
            child: SingleChildScrollView(
              child: ListView.builder( 
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      onTap: (){
                        setState(() {
                          Navigator.of(context).pop(items[index]);
                        });
                      },
                      title: Text( 
                        (items[index].actualName ?? "") + " (" + (items[index].shortName ?? "") + ")",
                        style: GlobalStyles.robotoRegular(context),                     
                      ),
                    );
                  }
                ),
              ),
            );
        })
      ]),
    );
  }
}