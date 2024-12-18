/*
 * @File     : app_scaffold.dart
 * @Author   : jade
 * @Date     : 2024/08/19 04:34:36
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_music/app/music_player/music_player_view.dart';
class AppScaffold extends StatelessWidget {
  final Key? scaffoldKey;
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  const AppScaffold({this.scaffoldKey,required this.body,this.appBar,this.drawer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: appBar,
      drawer: drawer,
      body: Column(
        children: [
          Expanded(child: body),
          MusicPlayerView()
        ],
      ),
    );
  }
}
