import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class StockButtons extends StatelessWidget {
  const StockButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        // This is the button for "Sổ kho"
        // Expanded(
        //   child: SizedBox(
        //     width: 100,
        //     height: 100,
        //     child: ElevatedButton(
        //       onPressed: () {
        //         // Hành động khi nhấn nút Sổ kho
        //       },
        //       style: ElevatedButton.styleFrom(
        //         backgroundColor: Colors.white,
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(10),
        //         ),
        //       ),
        //       child: Padding(
        //         padding: const EdgeInsets.all(8),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: const [
        //             // This is the icon for "Sổ kho"
        //             Icon(
        //               FontAwesomeIcons.book,
        //               color: Colors
        //                   .purple, // This changes the icon color to purple
        //               size: 32, // This makes the icon size bigger
        //             ),
        //             SizedBox(
        //                 height:
        //                     4), // This creates a gap between the icon and the text
        //             // This is the text for "Sổ kho"
        //             Text(
        //               'Sổ kho',
        //               style: TextStyle(
        //                 color: Colors.black,
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: 8, // This makes the font size smaller
        //               ),
        //               textAlign:
        //                   TextAlign.center, // This makes the text in the middle
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        SizedBox(width: 8), // This creates a gap between the buttons
        // This is the button for "Sổ nhập hàng"
        //   Expanded(
        //     child: SizedBox(
        //       child: ElevatedButton(
        //         onPressed: () =>
        //             navigator?.pushNamed(RouteGenerator.stockTransfersScreen),
        //         style: ElevatedButton.styleFrom(
        //           backgroundColor: Colors.white,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(10),
        //           ),
        //         ),
        //         child: Padding(
        //           padding: const EdgeInsets.all(8),
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: const [
        //               // This is the icon for "Sổ nhập hàng"
        //               Icon(
        //                 FontAwesomeIcons.truckLoading,
        //                 color:
        //                     Colors.green, // This changes the icon color to green
        //                 size: 32, // This makes the icon size bigger
        //               ),
        //               SizedBox(
        //                   height:
        //                       4), // This creates a gap between the icon and the text
        //               // This is the text for "Sổ nhập hàng"
        //               Text(
        //                 'Chuyển kho',
        //                 style: TextStyle(
        //                   color: Colors.black,
        //                   fontWeight: FontWeight.bold,
        //                   fontSize: 8, // This makes the font size smaller
        //                 ),
        //                 textAlign:
        //                     TextAlign.center, // This makes the text in the middle
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        //   const SizedBox(width: 8), // This creates a gap between the buttons
        //   // This is the button for "In tem mã vạch"
        //   Expanded(
        //     child: SizedBox(
        //       width: 100,
        //       height: 100,
        //       child: ElevatedButton(
        //         onPressed: () {
        //           // Hành động khi nhấn nút In tem mã vạch
        //         },
        //         style: ElevatedButton.styleFrom(
        //           backgroundColor: Colors.white,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(10),
        //           ),
        //         ),
        //         child: Padding(
        //           padding: const EdgeInsets.all(8),
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: const [
        //               // This is the icon for "In tem mã vạch"
        //               Icon(
        //                 FontAwesomeIcons.barcode,
        //                 color: Colors.blue, // This changes the icon color to blue
        //                 size: 32, // This makes the icon size bigger
        //               ),
        //               SizedBox(
        //                   height:
        //                       4), // This creates a gap between the icon and the text
        //               // This is the text for "In tem mã vạch"
        //               Text(
        //                 'In tem mã vạch',
        //                 style: TextStyle(
        //                   color: Colors.black,
        //                   fontWeight: FontWeight.bold,
        //                   fontSize: 8, // This makes the font size smaller
        //                 ),
        //                 textAlign:
        //                     TextAlign.center, // This makes the text in the middle
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        //   // This is the remaining part of the row
        //   const Spacer(),
      ],
    );
  }
}
