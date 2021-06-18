import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'collaboraters.dart';

class Collaboration extends StatelessWidget {
  const Collaboration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).orientation == Orientation.landscape
              ? MediaQuery.of(context).size.width * .3
              : MediaQuery.of(context).size.width * .45,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Icon(
                          Icons.person_add,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                  Collaboraters(),
                  Stack(
                    children: [
                      Container(
                        height: 52,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: NetworkImage(
                              'https://media-exp1.licdn.com/dms/image/C4D03AQGbH7xjLIZ3XQ/profile-displayphoto-shrink_800_800/0/1622409276361?e=1629331200&v=beta&t=J-wDk8JCYP_UQ2Msajqv2h-y6HAkNsKt-VLpDBcNCQw'),
                        ),
                      ),
                      Positioned(
                        bottom: -3,
                        left: 12,
                        child: Icon(
                          FontAwesomeIcons.chevronDown,
                          size: 13,
                        ),
                      ),
                    ],
                  )
                ],
              )),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color.fromRGBO(216, 214, 214, 1)),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        customBlackContainers()
      ],
    );
  }
}

Widget customBlackContainers() {
  return Container(
    height: 53.0,
    width: 53.0,
    padding: const EdgeInsets.all(10.0),
    child: Align(
      alignment: Alignment.center,
      child: Image.asset('assets/four-squares.jpeg'),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Color.fromRGBO(216, 214, 214, 1)),
      color: Colors.white,
    ),
  );
}

// Widget createGridViewOfBlackContainers() {
//   return Container(
//     child: GridView.builder(
//         itemCount: 4,
//         gridDelegate:
//             SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemBuilder: (context, index) => customBlackContainers()),
//   );
// }


//  Container(
//                   child: Stack(
//                     children: [
//                       CircleAvatar(
//                           radius: 20,
//                           backgroundColor: Colors.grey[300],
//                           backgroundImage: NetworkImage(
//                             'https://scontent.ffjr1-1.fna.fbcdn.net/v/t1.6435-9/123516531_3528280460592147_3972400793832874028_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=LWWwn-y8V3sAX8wMOe-&_nc_ht=scontent.ffjr1-1.fna&oh=ec2bf81de56afde1c6d5544d77db5e0c&oe=60C910DF',
//                           )),
//                       Positioned(
//                         bottom: 3,
//                         child: FaIcon(FontAwesomeIcons.chevronDown,
//                             size: 12, color: Colors.grey[400]),
//                       )
//                     ],
//                   ),
//                 )