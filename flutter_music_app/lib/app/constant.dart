/*
 * @File     : constant.dart
 * @Author   : jade
 * @Date     : 2024/11/26 14:53
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:remixicon/remixicon.dart';

class NavIconItem {
  late IconData? iconData;
  final String title;
  final int index;

  NavIconItem({
    this.iconData,
    required this.title,
    required this.index,
  });
}

class SettingThemeItem {
  late MaterialAccentColor? color;
  final String? title;
  SettingThemeItem(this.color, this.title);
}


class Constant{
  static Map<String,NavIconItem> navItems(BuildContext context)=> {
    "music_albums": NavIconItem(iconData: CupertinoIcons.music_albums, title: S.of(context).nav_songlist, index: 1),
    "chart_bar_alt_fill": NavIconItem(iconData: CupertinoIcons.chart_bar_alt_fill, title: S.of(context).nav_top, index: 2),
    "collections": NavIconItem(iconData: CupertinoIcons.heart, title: S.of(context).nav_love, index: 3),
    "settings": NavIconItem(iconData: Icons.settings, title: S.of(context).nav_setting, index: 4),
  };

  static Map<String,NavIconItem> footItems(BuildContext context) => {
    "home": NavIconItem(iconData: Icons.home_filled, title: S.of(context).back_home, index: 5),
    "shut_down": NavIconItem(iconData: Remix.shut_down_line, title: S.of(context).close, index: 6),
  };

  static Map<String,NavIconItem> settingItems(BuildContext context)=>{
    "setting_basic": NavIconItem( title: S.of(context).setting_basic, index: 0),
    "setting_player":NavIconItem( title: S.of(context).setting_player, index: 1),
    "setting_lyric_desktop":NavIconItem( title: S.of(context).setting_lyric_desktop, index: 1)
  };

  static List<SettingThemeItem> settingThemeItems(BuildContext context)=>[
    SettingThemeItem(Colors.accents.first, S.of(context).theme_green),
    SettingThemeItem(Colors.accents.first, S.of(context).theme_mid_autumn),
    SettingThemeItem(Colors.accents.first, S.of(context).theme_happy_new_year),
    SettingThemeItem(Colors.accents.first, S.of(context).theme_blue),
    SettingThemeItem(Colors.accents.first, S.of(context).theme_orange),
    SettingThemeItem(Colors.accents.first, S.of(context).theme_brown),
    SettingThemeItem(Colors.accents.first, S.of(context).theme_purple),
    SettingThemeItem(Colors.accents.first, S.of(context).theme_red),
  ];


}