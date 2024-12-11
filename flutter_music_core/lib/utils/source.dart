/*
 * @File     : music_source.dart
 * @Author   : jade
 * @Date     : 2024/12/4 9:36
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     : 源工具类
 */


import 'dart:math';
import 'package:flutter_log/flutter_log.dart';
import 'package:flutter_music_core/app/constant.dart';
import 'package:flutter_music_core/models/db/user_api_info.dart';
import 'package:intl/intl.dart';

class SourceUtil{

  static UserApiInfo loadScript(info){
    // 定义正则表达式规则
    final RegExp noteRegExp = RegExp(r'^\/\*[\S|\s]+?\*\/');
    var result = noteRegExp.stringMatch(info);
    Map<String,String> scriptInfo = matchInfo(result!);
    scriptInfo["name"] = scriptInfo["name"]!.isNotEmpty ? scriptInfo["name"]! : "user_api_${DateFormat('yyyy/MM/dd HH:mm:ss').format(DateTime.now())}";
    var userApiInfo = UserApiInfo.fromJson(scriptInfo);
    userApiInfo.id = "`user_api_${Random().nextDouble().toString().substring(2,5)}_${DateTime.now().millisecondsSinceEpoch}";
    userApiInfo.allowShowUpdateAlert = true;
    userApiInfo.script = info;
    return userApiInfo;
  }

  static Map<String,String> matchInfo(String scriptInfo){
    var infoArr = scriptInfo.split("\n");
    var rxp = RegExp(r"^\s?\*\s?@(\w+)\s(.+)$");
    Map<String,String> infos = {};
    for(var info in infoArr){
      var result = rxp.allMatches(info);
      if (result.isNotEmpty){
        var keyList = Constant.infoNames.keys.toList().where((item)=>result.first.group(0)!.contains(item));
        if(keyList.isNotEmpty){
          infos[keyList.first] = result.first.group(2).toString();
        }
      }
    }

    for(String key in Constant.infoNames.keys){
      if(!infos.containsKey(key)) {
        infos[key] = "";
      }
      else{
        if (infos[key]!.length > Constant.infoNames[key]!){
          infos[key] = "${infos[key]?.substring(0, Constant.infoNames[key])}...";
        }
      }
    }
    return infos;
  }


  static initJS(UserApiInfo userApiInfo) async{
    if (userApiInfo.selected) {
      userApiInfo.initStatus.value = 0;
      Log.i("${userApiInfo.name},准备开始初始化");
      Future.delayed(Duration(seconds: 1),(){
        userApiInfo.initStatus.value = 1;
        Log.i("${userApiInfo.name},正在初始化中");
        Future.delayed(Duration(seconds: 5),(){
          userApiInfo.initStatus.value = 3;
          Log.i("${userApiInfo.name},初始化成功");
        });
      });
    }
  }
  static removeInitJs(UserApiInfo userApiInfo) async{
    userApiInfo.initStatus.value = 0;
  }

}