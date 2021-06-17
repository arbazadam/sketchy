import 'package:flutter/material.dart';

//This is the custom painter widget which is responsible for drawing on the screen..
//This widget takes configuration from the pen dialog to draw..
class MyCustomPainter extends CustomPainter {
  final color;
  final strokeWidth;
  List<Offset>? offsets;
  MyCustomPainter({this.color, this.strokeWidth, this.offsets});
  @override
  void paint(Canvas canvas, Size size) {
    //To paint the entire canvas with white..
    final paint = Paint()..color = Colors.white;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);

    final linePainter = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.0;

    // for (int x = 0; x < offsets!.length - 1; x++) {
    //   if (offsets![x] != null && offsets![x + 1] != null) {
    //     canvas.drawLine(offsets![x], offsets![x + 1], linePainter);
    //   }
    // }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
