import 'package:flutter/material.dart';

import 'custom_painter.dart';

class CanvasWidget extends StatelessWidget {
  const CanvasWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tap recieved');
      },
      child: CustomPaint(
        painter: MyCustomPainter(),
        child: Container(),
      ),
      onPanDown: (x) {},
      onPanUpdate: (x) {},
      onPanEnd: (y) {},
    );
  }
}
