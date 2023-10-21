import 'package:flutter/material.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/stock_screen/widgets/custom_card_stock.dart';

class ValueBox extends StatelessWidget {
  const ValueBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // This is the box for "Giá trị tồn"
          Container(
            width: 180,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              // Change this to Row
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align the children to the start
              children: [
                Expanded(
                  // Add this widget
                  flex: 2, // Set the flex to 2
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.attach_money,
                        color: Colors.green,
                      ),
                      Text(''),
                    ],
                  ),
                ),
                Expanded(
                  // Add this widget
                  flex: 8, // Set the flex to 8
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Align the children to the start
                    children: const [
                      Text('Giá trị tồn',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        '1000000',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // This is the box for "Số lượng"
          Container(
            width: 180,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              // Change this to Row
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align the children to the start
              children: [
                Expanded(
                  // Add this widget
                  flex: 2, // Set the flex to 2
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.inventory_2,
                        color: Colors.green,
                      ),
                      Text(''),
                    ],
                  ),
                ),
                Expanded(
                  // Add this widget
                  flex: 8, // Set the flex to 8
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Align the children to the start
                    children: const [
                      Text('Số lượng',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        '99',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
