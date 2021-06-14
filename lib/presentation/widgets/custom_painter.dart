import 'package:flutter/material.dart';

//This is the custom painter widget which is responsible for drawing on the screen..
//This widget takes configuration from the pen dialog to draw..
class MyCustomPainter extends CustomPainter {
  final paintBrush;
  MyCustomPainter({this.paintBrush});
  @override
  void paint(Canvas canvas, Size size) {
    //To paint the entire canvas with white..
    final paint = Paint()..color = Colors.white;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);

    //To draw a line
    final linePainter = Paint()
      ..color = Colors.black
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
