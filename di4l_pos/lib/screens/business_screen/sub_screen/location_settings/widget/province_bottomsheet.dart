// ignore_for_file: non_constant_identifier_names

import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:dvhcvn/dvhcvn.dart' as dvhcvn;

class ProvinceBottomSheet extends StatefulWidget{
  
  const ProvinceBottomSheet({Key? key}) : super(key: key);

  @override
  State<ProvinceBottomSheet> createState() => _ProvinceBottomSheetState();
}
class _ProvinceBottomSheetState extends State<ProvinceBottomSheet>{

  @override
  Widget build(BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.88,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0), 
            topLeft: Radius.circular(10.0)),),
        child: Column(children: [
          Text("Tỉnh/ Thành phố", style: GlobalStyles.titleHeader(context),),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Nhập Tỉnh/ Thành Phố",
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
            height: MediaQuery.of(context).size.height * 0.76,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: ListView.builder( 
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 99,
                itemBuilder: (context, index) {                 
                  return  dvhcvn.findLevel1ById(index < 10 ? "0$index" : index.toString()) == null ? const SizedBox.shrink() :
                  ListTile(
                    onTap: (){
                      setState(() {
                        var Tinh = dvhcvn.findLevel1ById(index < 10 ? "0$index" : index.toString());
                        Navigator.of(context).pop(Tinh!.name.toString());
                      });
                    },
                    title: Text( 
                      dvhcvn.findLevel1ById(index < 10 ? "0$index" : index.toString()).toString(),
                      style: GlobalStyles.robotoRegular(context),
                    ),
                  );
                }
              ),
            ),
          )
        ],
      ),
    );
  }
}