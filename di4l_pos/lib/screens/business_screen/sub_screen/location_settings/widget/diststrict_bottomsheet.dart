// ignore_for_file: non_constant_identifier_names

import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:dvhcvn/dvhcvn.dart' as dvhcvn;

class DistrictBottomSheet extends StatefulWidget{
  
  const DistrictBottomSheet({Key? key, this.province}) : super(key: key);
  final String? province;

  @override
  State<DistrictBottomSheet> createState() => _DistrictBottomSheetState();
}
class _DistrictBottomSheetState extends State<DistrictBottomSheet>{

  @override
  Widget build(BuildContext context) {
      var Tinh = dvhcvn.findLevel1ByName(widget.province!);
      var listHuyen = Tinh!.children;
      return Container(
        height: MediaQuery.of(context).size.height * 0.9,
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),),
        child: Column(children: [
          Text("Quận/ Huyện", style: GlobalStyles.titleHeader(context),),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Nhập Quận/ Huyện",
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
              child: ListView.builder( 
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: listHuyen.length,
                itemBuilder: (context, index) {
                  return 
                    ListTile(
                      onTap: (){
                        setState(() {
                          Navigator.of(context).pop(listHuyen[index].name);
                        });
                      },
                      title: Text( 
                        listHuyen[index].name,
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