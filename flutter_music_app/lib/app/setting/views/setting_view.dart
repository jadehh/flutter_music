/*
 * @File     : setting_view.dart
 * @Author   : jade
 * @Date     : 2024/12/6 13:40
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:flutter/material.dart';
import 'package:flutter_music/app/base/views/divider_view.dart';
import 'package:flutter_music/app/routes/route_path.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:get/get.dart';

class SettingItem{
  final String title;
  final String subTitle;
  final String? pageString;
  final int index;
  const SettingItem({required this.title,required this.subTitle, this.pageString,required this.index});

}

class SettingView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final items = [
        SettingItem(title: S.of(context).setting_basic,subTitle: S.of(context).nav_setting,pageString: RoutePath.kSettingBasic,index: 0),
        SettingItem(title: S.of(context).setting_player,subTitle: S.of(context).nav_setting,pageString: "/",index: 0),
    ];



    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        if (index==0){
          return SizedBox.shrink();
        }else{
          return InkWell(child: ListTile(
            title: Text(items[index-1].title),
            trailing: Icon(Icons.chevron_right),
          ),onTap: (){
            Get.toNamed(items[index-1].pageString!);
          },);
        }
      },
      separatorBuilder: (BuildContext context, int index) {
        if (index == items[index].index){
          return DividerView(items[index].subTitle);
        }else{
          return Divider();
        }
      },
      itemCount: items.length+1,
    );
  }


}