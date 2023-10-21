import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashLinePainter(),
      size: Size(400, 1), // Đặt chiều dài và chiều rộng của đường gạch đứt
    );
  }
}

class DashLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;
    const int step =
        6; // Độ dài của mỗi phần gạch đứt và khoảng trống giữa chúng
    for (var i = 0; i < size.width; i += (step * 2) as int) {
      final startX = i;
      final endX = i + step;
      canvas.drawLine(
          Offset(startX as double, 0), Offset(endX as double, 0), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
