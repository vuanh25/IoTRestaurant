// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:async';

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/business_screen/sub_screen/shop_info/cubit/shopInfo_cubit.dart';
import 'package:di4l_pos/screens/business_screen/sub_screen/location_settings/widget/commune_bottomsheet.dart';
import 'package:di4l_pos/screens/business_screen/widget/custom_textfield.dart';
import 'package:di4l_pos/screens/business_screen/sub_screen/location_settings/widget/diststrict_bottomsheet.dart';
import 'package:di4l_pos/screens/business_screen/sub_screen/location_settings/widget/province_bottomsheet.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dvhcvn/dvhcvn.dart' as dvhcvn;

class LocationSetting extends StatefulWidget{
  static BlocProvider<ShopInfoCubit> provider() {
    return BlocProvider(
      create: (context) => ShopInfoCubit(),
      child: const LocationSetting(),
    );
  }
  
  const LocationSetting({Key? key}) : super(key: key);

  @override
  State<LocationSetting> createState() => _LocationSettingState();
}
class _LocationSettingState extends State<LocationSetting>{
  TextEditingController txt = TextEditingController(text: "");
  TextEditingController txt1 = TextEditingController(text: "");
  TextEditingController txt2 = TextEditingController(text: "");
  TextEditingController txt3 = TextEditingController(text: "");
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(),
    );
    
  }

  SafeArea buildBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(children: [
            buildlistInfo(),
            SizedBox(
              height: 350,
              width: MediaQuery.of(context).size.width * 1,
              child: GoogleMap(
                mapType: MapType.hybrid,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);},
              ),
            ),
          ],),
        ) 
      ),
    );
  }

  BlocBuilder<ShopInfoCubit, ShopInfoState> buildlistInfo() {
    return BlocBuilder<ShopInfoCubit, ShopInfoState>(builder: (context, state) {
      return Column(children: [
        TextFormField(
            onTap: () async{
              var province = await getProvince();
              var district = await getDistrict(province.toString());
              var commune = await getCommune(province.toString(), district.toString());
              setState(() {
                txt.text = province.toString();
                txt1.text = district.toString();
                txt2.text = commune.toString();
              });
            },
            controller: txt,
            readOnly: true,
            decoration: const InputDecoration(
              hintText: "Chọn Tỉnh/ Thành phố",
              labelText: 'Tỉnh/ Thành phố',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff49545C),
                  fontSize: 18),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon:
                  Icon(Icons.keyboard_arrow_down, color: Color(0xff434345)),
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
        TextFormField(
            onTap: () async {
              if(dvhcvn.findLevel1ByName(txt.text) == null){
                var province = await getProvince();
                var district = await getDistrict(province.toString());
                var commune = await getCommune(province.toString(), district.toString());
                setState(() {
                  txt.text = province.toString();
                  txt1.text = district.toString();
                  txt2.text = commune.toString();
                });
              }else{
                var district = await getDistrict(txt.text);
                var commune = await getCommune(txt.text, district.toString());
                setState(() {
                  txt1.text = district.toString();
                  txt2.text = commune.toString();
                });
              }
            },
            readOnly: true,
            controller: txt1,
            decoration: const InputDecoration(
              hintText: "Chọn Quận/ Huyện",
              labelText: 'Quận/ Huyện',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff49545C),
                  fontSize: 18),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon:
                  Icon(Icons.keyboard_arrow_down, color: Color(0xff434345)),
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
        TextFormField(
            onTap: () async{
              var Tinh = dvhcvn.findLevel1ByName(txt.text);
              if(Tinh == null){
                var province = await getProvince();
                var district = await getDistrict(province.toString());
                var commune = await getCommune(province.toString(), district.toString());
                setState(() {
                  txt.text = province.toString();
                  txt1.text = district.toString();
                  txt2.text = commune.toString();
                });
              }
              else if(Tinh.findLevel2ByName(txt1.text) == null){
                var district = await getDistrict(txt.text);
                var commune = await getCommune(txt.text, district.toString());
                setState(() {
                  txt1.text = district.toString();
                  txt2.text = commune.toString();
                });
              }
              else{
                var commune = await getCommune(txt.text, txt1.text);
                setState(() {
                  txt2.text = commune.toString();
                });
              }
            },
            readOnly: true,
            controller: txt2,
            decoration: const InputDecoration(
              hintText: "Chọn Phường/ Xã",
              labelText: 'Phường/ Xã',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff49545C),
                  fontSize: 18),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon:
                  Icon(Icons.keyboard_arrow_down, color: Color(0xff434345)),
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
        // CustomTextField(
        //   info:  txt3.text,
        //   title: 'Địa chỉ chi tiết',  
        //   hint: "Nhập địa chỉ chi tiết",
        // )
      ],);
    });
  }
  // AIzaSyA5H3ET2woApg8poWgcfJxg8bqy9Ij7dX0
  MyAppBar buildAppBar(BuildContext context) {
    return MyAppBar(
      isShowBackButton: true,
      backgroundColor: GlobalColors.bgWebColor,
      title: Text(
        'Địa chỉ cửa hàng',
        style: GlobalStyles.titleHeader(context).copyWith(
            fontSize: 18,
            color: GlobalColors.primaryWebColor,
            fontWeight: FontWeight.w500),
      ),
    );
  }

  Future<String?> getProvince() async{
    var province = await showModalBottomSheet<String>(      
      isScrollControlled: true,        
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0)),
      ),
      context: context,
      builder: (BuildContext context) => const ProvinceBottomSheet()
    );
    return province;
  }

  Future<String?> getDistrict(String text) async{
    var district = await showModalBottomSheet<String>(      
      isScrollControlled: true,        
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0)),
      ),
      context: context,
      builder: (BuildContext context) => DistrictBottomSheet(province: text,)
    );
    return district;
  }

  Future<String?> getCommune(String text, String text1) async{
    var commnune = await showModalBottomSheet<String>(      
      isScrollControlled: true,        
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0)),
      ),
      context: context,
      builder: (BuildContext context) => CommuneBottomSheet(province: text, district: text1)
    );
    return commnune;
  }
}