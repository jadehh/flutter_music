/*
 * @File     : divider_view.dart
 * @Author   : jade
 * @Date     : 2024/12/6 15:25
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';

class DividerView extends StatelessWidget{
  final String text;
  const DividerView(this.text,{super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.grey.withOpacity(0.1),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(8),
      child: Text(
        text,
        style: TextStyle(fontSize: 12),
      ),
    );
  }

}