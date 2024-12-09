/*
 * @File     : theme_button_view.dart
 * @Author   : jade
 * @Date     : 2024/11/28 13:50
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_music/app/base/views/text_view.dart';
import 'package:flutter_music_core/main.dart';
import 'package:get/get.dart';
class ThemeItem{
  final FlexScheme scheme;
  final String title;
  final int index;
  const ThemeItem({required this.scheme,required this.title,required this.index});
}

class ThemeButtonView extends StatelessWidget{
  final ThemeItem themeItem;
  const ThemeButtonView({required this.themeItem,super.key});
  @override
  Widget build(BuildContext context) {
    final settingService = Get.find<SettingService>();
    final color = AppTheme.getThemeColor(themeItem.scheme);
    // TODO: implement build
    return Padding(padding: EdgeInsets.all(5),child: SizedBox(
      width: 100,
      child: Obx(()=>InkWell(child: Column(
        children: [
          Center(child: Container(
            width: 80,
            height: 80,
            decoration: settingService.themeScheme.value == themeItem.scheme ?  BoxDecoration(
                border: Border.all(
                  color: color , // 设置边框颜色为蓝色
                  width: 1, // 设置边框宽度为2
                )):null,
            alignment: Alignment.center,
            // where to position the child
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),),
          TextView(themeItem.title, color: color,),
        ],
      ), onTap: () async{
        settingService.setThemeScheme(themeItem.index);
      })),
    ),);
  }
}

