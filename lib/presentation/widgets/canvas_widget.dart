import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketchy/business_logic/cubit/painter_cubit.dart';

import 'custom_painter.dart';

class CanvasWidget extends StatelessWidget {
  CanvasWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Offset> list = [];
    return GestureDetector(
      child: CustomPaint(
        painter: MyCustomPainter(),
        child: Container(),
      ),
      onPanDown: (x) {
        list.add(x.localPosition);
        context.read<PainterCubit>().drawALine(list);
      },
      onPanUpdate: (x) {
        list.add(x.localPosition);
        context.read<PainterCubit>().drawALine(list);
      },
      onPanEnd: (y) {},
    );
  }
}
