import 'package:flutter/material.dart';

class Collaboraters extends StatelessWidget {
  const Collaboraters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        'https://scontent.ffjr1-1.fna.fbcdn.net/v/t1.6435-9/123516531_3528280460592147_3972400793832874028_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=C3ql0uB75aQAX8tZqz_&_nc_ht=scontent.ffjr1-1.fna&oh=cff92309b941b10a14923cf7b8b23057&oe=60CEFF9F';
    return Container(
      width: 70,
      child: Stack(children: [
        getUser('$imageUrl'),
        Positioned(left: 18, child: getUser('$imageUrl')),
        Positioned(left: 33, child: getUser('$imageUrl')),
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
