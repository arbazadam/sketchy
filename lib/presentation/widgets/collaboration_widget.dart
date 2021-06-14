import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'collaboraters.dart';

class Collaboration extends StatelessWidget {
  const Collaboration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * .45,
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.person_add,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
                Collaboraters(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[300],
                        backgroundImage: NetworkImage(
                          'https://scontent.ffjr1-1.fna.fbcdn.net/v/t1.6435-9/123516531_3528280460592147_3972400793832874028_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=LWWwn-y8V3sAX8wMOe-&_nc_ht=scontent.ffjr1-1.fna&oh=ec2bf81de56afde1c6d5544d77db5e0c&oe=60C910DF',
                        )),
                    FaIcon(FontAwesomeIcons.chevronDown,
                        size: 12, color: Colors.grey[400])
                  ],
                ),
              ],
            )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color.fromRGBO(216, 214, 214, 1)),
        ));
  }
}

Widget customBlackContainers() {
  return Container(
    color: Colors.black,
    height: 40,
  );
}
