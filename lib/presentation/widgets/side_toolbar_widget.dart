import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          ToolIcon(
            icon: FontAwesomeIcons.pencilAlt,
          ),
          ToolIcon(
            icon: FontAwesomeIcons.eraser,
          ),
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

Widget generateIcons(Icon icon, void Function() onPressed) {
  return IconButton(
      onPressed: () {
        //send a click event which will change the color of the icon
      },
      icon: icon);
}

class ToolIcon extends StatefulWidget {
  ToolIcon({Key? key, this.icon}) : super(key: key);
  IconData? icon;

  @override
  _ToolIconState createState() => _ToolIconState();
}

class _ToolIconState extends State<ToolIcon> {
  var _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          if (widget.icon == FontAwesomeIcons.pencilAlt) {
            print('pencil clicked');
          }
          setState(() {
            _isClicked = !_isClicked;
          });
        },
        color: _isClicked ? Color(0xff00ffff) : Colors.black,
        icon: Icon(widget.icon));
  }
}
