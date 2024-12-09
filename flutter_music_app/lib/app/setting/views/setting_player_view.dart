/*
 * @File     : setting_basic_page.dart
 * @Author   : jade
 * @Date     : 2024/11/28 9:23
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     : 基本设置
 */

import 'package:flutter/material.dart';
import 'package:flutter_music/generated/l10n.dart';

class SettingPlayerView extends StatefulWidget {
  const SettingPlayerView({super.key});

  @override
  State<StatefulWidget> createState() => _SettingPlayerView();
}

class _SettingPlayerView extends State<SettingPlayerView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.all(5)),
        Row(
          children: [
            const SizedBox(width: 5,),
            Container(
              width: 5,
              color: Colors.green,
              child: const Text(""),
            ),
            const SizedBox(width: 5,),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(S.of(context).setting_player))
          ],
        ),
      ],
    );
  }
}
