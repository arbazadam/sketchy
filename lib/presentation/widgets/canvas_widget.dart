import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketchy/business_logic/cubit/painter_cubit.dart';
import 'package:sketchy/business_logic/cubit/pen_cubit.dart';
import 'package:sketchy/business_logic/cubit/toolbar_cubit.dart';

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
      onTap: () {
        print('tap');
        context.read<ToolbarCubit>().changeIndex(11);
      },
      onPanDown: (x) {
        list.add(x.localPosition);
      },
      onPanUpdate: (x) {
        list.add(x.localPosition);
      },
      onPanEnd: (y) {},
    );
  }
}
