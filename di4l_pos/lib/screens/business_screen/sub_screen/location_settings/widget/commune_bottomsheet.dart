// ignore_for_file: non_constant_identifier_names

import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:dvhcvn/dvhcvn.dart' as dvhcvn;

class CommuneBottomSheet extends StatefulWidget{
  
  const CommuneBottomSheet({Key? key, this.district, this.province}) : super(key: key);
  final String? district, province;

  @override
  State<CommuneBottomSheet> createState() => _CommuneBottomSheetState();
}
class _CommuneBottomSheetState extends State<CommuneBottomSheet>{

  @override
  Widget build(BuildContext context) {
      var Tinh = dvhcvn.findLevel1ByName(widget.province!);
      var Huyen = Tinh!.findLevel2ByName(widget.district!);
      var ListXa = Huyen!.children;
      return Container(
        height: MediaQuery.of(context).size.height * 0.9,
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),),
        child: Column(children: [
          Text("Phường/ Xã", style: GlobalStyles.titleHeader(context),),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Nhập Phường/ Xã",
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
            child: SingleChildScrollView(
              child: Column(children: [
                  ListView.builder( 
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: ListXa.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          onTap: (){
                            Navigator.of(context).pop(ListXa[index].name);
                          },
                          title: Text( 
                            ListXa[index].name,
                            style: GlobalStyles.robotoRegular(context),                     
                          ),
                        );
                      }
                    )
                  ],
                )
              ),
            )
          ],
        ),
      );
    }
  }