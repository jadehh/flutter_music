/*
 * @File     : drawer_view.dart
 * @Author   : jade
 * @Date     : 2024/12/13 10:59
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child: ListView(
      children: <Widget>[
        DrawerHeader(
          child: Text('Header'),
        ),
        ListTile(
          title: Text('First Menu Item'),
          onTap: () {},
        ),
        ListTile(
          title: Text('Second Menu Item'),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text('About'),
          onTap: () {},
        ),
      ],
    ));
  }
}
