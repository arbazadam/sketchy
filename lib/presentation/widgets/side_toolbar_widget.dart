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
          Padding(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                child: FaIcon(FontAwesomeIcons.pen),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            elevation: 1,
                            content: PenDialog(),
                          ));
                },
              )),
          Padding(
              padding: EdgeInsets.all(10),
              child: FaIcon(FontAwesomeIcons.eraser)),
          Padding(
              padding: EdgeInsets.all(10),
              child: FaIcon(FontAwesomeIcons.handSpock)),
          Padding(
              padding: EdgeInsets.all(10),
              child: FaIcon(FontAwesomeIcons.fillDrip)),
          Padding(
              padding: EdgeInsets.all(10),
              child: FaIcon(FontAwesomeIcons.layerGroup)),
          Padding(
              padding: EdgeInsets.all(10), child: FaIcon(FontAwesomeIcons.plus))
        ],
      ),
    );
  }
}
