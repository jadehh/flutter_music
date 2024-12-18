/*
 * @File     : setting_page.dart
 * @Author   : jade
 * @Date     : 2024/11/27 16:48
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:flutter/material.dart';
import 'package:flutter_music/app/base/views/app_scaffold.dart';
import 'package:flutter_music/app/setting/views/setting_view.dart';
import 'package:flutter_music/generated/l10n.dart';

class SettingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppScaffold(
      appBar: AppBar(title: Center(child: Text(S.of(context).nav_setting))),
      body: SettingView(),
    );
  }
}