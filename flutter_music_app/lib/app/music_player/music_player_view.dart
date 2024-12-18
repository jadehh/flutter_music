/*
 * @File     : music_player_view.dart
 * @Author   : jade
 * @Date     : 2024/12/13 11:08
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:flutter/material.dart';

class MusicPlayerView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    print(double.maxFinite);
    // TODO: implement build
    return Container(
      height: 40,
      width: double.maxFinite,
      color: Colors.red,
      child: Text("Player",textAlign: TextAlign.center,),
    );
  }

}