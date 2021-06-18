import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketchy/business_logic/cubit/painter_cubit.dart';
import 'package:sketchy/business_logic/cubit/toolbar_cubit.dart';
import 'package:sketchy/constants/custom_arrow_clipper.dart';
import 'package:sketchy/presentation/widgets/canvas_widget.dart';
import 'package:sketchy/presentation/widgets/collaboration_widget.dart';
import 'package:sketchy/presentation/widgets/pen_dialog_body.dart';
import 'package:sketchy/presentation/widgets/side_toolbar_widget.dart';

class ParentWidget extends StatelessWidget {
  const ParentWidget({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          CanvasWidget(),
          Positioned(
              left: 9,
              top: MediaQuery.of(context).orientation == Orientation.landscape
                  ? 40
                  : 70,
              child: SideToolBar()),
          Positioned(right: 10, top: 10, child: Collaboration()),
          BlocBuilder<ToolbarCubit, ToolbarState>(
            builder: (context, state) {
              print(state.penIndex.toString());

              return state.penIndex == 0
                  ? Positioned(top: 85, left: 70, child: PenDialog())
                  : Container(
                      height: 0,
                      width: 0,
                    );
            },
          ),
          //CustomArrow()
        ],
      )),
    );
  }
}
