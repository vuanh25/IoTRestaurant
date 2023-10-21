import 'package:cupertino_date_textbox/cupertino_date_textbox.dart';
import 'package:di4l_pos/models/product_stock/request/add_product_stock_request.dart';
import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../../common/global_colors.dart';
import '../../../../widgets/custom_appbar.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';

class DetailProductStockScreen extends StatefulWidget {
  final Product? product;

  const DetailProductStockScreen({Key? key, this.product}) : super(key: key);

  @override
  _DetailProductStockScreenState createState() =>
      _DetailProductStockScreenState();
}

class _DetailProductStockScreenState extends State<DetailProductStockScreen> {
  DateTime _selectedDateTime = DateTime.now();
  double quantity = 0;
  @override
  Widget build(BuildContext context) {
    TextEditingController textarea = TextEditingController();
    Map<String, List<Purchase>> map = {};

    Map<String, Map<String, List<Purchase>>> map2 = {};

    List<String> jsonMap = widget.product!.getProductLocationId();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomAppBar(
          backgroundColor: GlobalColors.kGreenTextColor,
          title: widget.product!.name,
          centerTitle: true,
          textColor: GlobalColors.getTextTitle(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: jsonMap.map<ExpansionTile>((jsonMaps) {
                return ExpansionTile(
                  title: Text("Location :$jsonMaps"),
                  children: widget.product!.productVariations!
                      .map<ExpansionTile>((jsonMaps) {
                    return ExpansionTile(
                      expandedAlignment: Alignment.centerLeft,
                      childrenPadding:
                          const EdgeInsets.only(right: 10, left: 10),
                      title: Text("Variate ${jsonMaps!.id}"),
                      children:
                          widget.product!.purchaseLines!.map<Expandable>((e) {
                        return Expandable(
                          firstChild: const Text('Variate'),
                          secondChild: detailPurchaseLines(textarea, e!),
                        );
                      }).toList(),
                    );

                  }).toList(),
                );
              }).toList(),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Lưu"),
            ),
          ],
        ),
      ),
    );
  }

  Column detailPurchaseLines(
      TextEditingController textarea, PurchaseLine purchaseLine) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InputQty(
              btnColor1: Colors.green,
              btnColor2: Colors.green,
              //color of the increase and decrease icon
              maxVal: double.maxFinite, //max val to go
              initVal: purchaseLine.quantity!.toDouble(), //min starting val
              onQtyChanged: (val) {
             
                  quantity = val!.toDouble();
               
              },
            ),
            Text("${purchaseLine.purchasePrice}"),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(
            bottom: 5,
          ),
          child: Text("Exp Time"),
        ),
        CupertinoDateTextBox(
            initialValue: purchaseLine.expDate ?? _selectedDateTime,
            onDateChange: onBirthdayChange,
            hintText: DateFormat.yMd().format(_selectedDateTime)),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(
            bottom: 5,
          ),
          child: Text("Traction Time"),
        ),
        TextField(
          controller: textarea,
          keyboardType: TextInputType.multiline,
          textInputAction: TextInputAction.done,
          maxLines: 4,
          decoration: const InputDecoration(
            hintText: "Enter Remarks",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2.0,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  void onBirthdayChange(DateTime birthday) {
    setState(() {
      _selectedDateTime = birthday;
    });
  }
}
