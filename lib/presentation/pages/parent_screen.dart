/// Flutter code sample for NavigationRail

// This example shows a [NavigationRail] used within a Scaffold with 3
// [NavigationRailDestination]s. The main content is separated by a divider
// (although elevation on the navigation rail can be used instead). The
// `_selectedIndex` is updated by the `onDestinationSelected` callback.

import 'package:flutter/material.dart';
import 'package:sketchy/presentation/widgets/collaboration_widget.dart';
import 'package:sketchy/presentation/widgets/side_toolbar_widget.dart';

class ParentWidget extends StatelessWidget {
  const ParentWidget({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 10),
                child: const VerticalDivider(
                  thickness: 1,
                  width: 1,
                  color: Colors.grey,
                )),
            SideToolBar(),
          ],
        ),
      ),
    );
  }
}
