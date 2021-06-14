import 'package:flutter/material.dart';

class Collaboraters extends StatelessWidget {
  const Collaboraters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: Stack(children: [
        getUser(
            'https://scontent.ffjr1-1.fna.fbcdn.net/v/t1.6435-9/123516531_3528280460592147_3972400793832874028_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=LWWwn-y8V3sAX8wMOe-&_nc_ht=scontent.ffjr1-1.fna&oh=ec2bf81de56afde1c6d5544d77db5e0c&oe=60C910DF'),
        Positioned(
            left: 18,
            child: getUser(
                'https://scontent.ffjr1-1.fna.fbcdn.net/v/t1.6435-9/123516531_3528280460592147_3972400793832874028_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=LWWwn-y8V3sAX8wMOe-&_nc_ht=scontent.ffjr1-1.fna&oh=ec2bf81de56afde1c6d5544d77db5e0c&oe=60C910DF')),
        Positioned(
            left: 33,
            child: getUser(
                'https://scontent.ffjr1-1.fna.fbcdn.net/v/t1.6435-9/123516531_3528280460592147_3972400793832874028_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=LWWwn-y8V3sAX8wMOe-&_nc_ht=scontent.ffjr1-1.fna&oh=ec2bf81de56afde1c6d5544d77db5e0c&oe=60C910DF')),
      ]),
    );
  }
}

Widget getUser(String imagePath) {
  return CircleAvatar(
    radius: 20,
    backgroundColor: Colors.white,
    child: CircleAvatar(
      backgroundImage: NetworkImage('$imagePath'),
      radius: 18,
    ),
  );
}
