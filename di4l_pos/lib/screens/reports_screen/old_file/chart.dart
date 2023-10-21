import 'package:di4l_pos/models/sell_report/reponse/sell_report_response.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

@override
Widget chartA(BuildContext context, SellReportResponse? data) {
  List<ChartData> lineA = [
    ChartData(2010, 0),
    ChartData(2011, 0),
    ChartData(2012, 0),
    ChartData(2013, 1),
    ChartData(2014, 1)
  ];
  List<ChartData> lineB = [
    ChartData(2010, 0),
    ChartData(2011, 0),
    ChartData(2012, 0),
    ChartData(2013, 0),
    ChartData(2014, 0)
  ];
  if (data != null) {
    lineA = [];
    lineB = [];
    
  }
  return Center(
    child: SizedBox(
      width: Get.width * 0.9,
      height: Get.height * 0.3,
      child: SfCartesianChart(
        isTransposed: false,
        title: ChartTitle(textStyle: const TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        series: <ChartSeries>[
          // Renders spline chart
          SplineSeries<ChartData, int>(
              color: Colors.green,
              width: 3,
              dataSource: lineA,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y),
          SplineSeries<ChartData, int>(
              color: Colors.yellow,
              dashArray: const [15, 10],
              width: 3,
              dataSource: lineB,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y),
        ],
      ),
    ),
  );
}

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double? y;
}
