import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sketchy/business_logic/cubit/pen_cubit.dart';
import 'package:sketchy/presentation/widgets/pen_dialog_body.dart';

class SideToolBar extends StatelessWidget {
  const SideToolBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), boxShadow: [
        BoxShadow(
          offset: const Offset(0.4, 0.0),
          blurRadius: 0.2,
          spreadRadius: 0.0,
        ), //BoxShadow
        BoxShadow(
          color: Colors.white,
          //offset: const Offset(0.2, 0.2),
          blurRadius: 0.0,
          spreadRadius: 0.0,
        ), //B
      ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(padding: EdgeInsets.all(10), child: Icon(Icons.volume_up)),
          SizedBox(
            child: Container(
              height: .8,
              width: 45,
              color: Colors.black,
            ),
          ),
          IconButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            content: PenDialog(),
                          ));
                }
                if (Platform.isIOS) {
                  showCupertinoDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            content: PenDialog(),
                          ));
                }
              },
              icon: FaIcon(FontAwesomeIcons.pen)),
          IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.eraser)),
          IconButton(
              onPressed: () {}, icon: FaIcon(FontAwesomeIcons.handSpock)),
          IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.fillDrip)),
          IconButton(
              onPressed: () {}, icon: FaIcon(FontAwesomeIcons.layerGroup)),
          IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.plus)),
        ],
      ),
    );
  }
}
