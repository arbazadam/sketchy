import 'package:flutter/material.dart';
import 'package:sketchy/presentation/widgets/canvas_widget.dart';
import 'package:sketchy/presentation/widgets/collaboration_widget.dart';
import 'package:sketchy/presentation/widgets/side_toolbar_widget.dart';

class ParentWidget extends StatelessWidget {
  const ParentWidget({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          child: Stack(
        children: [
          CanvasWidget(),
          Positioned(left: 10, top: 10, child: SideToolBar()),
          Positioned(right: 8, top: 10, child: Collaboration())
        ],
      )),
    ));
  }
}
