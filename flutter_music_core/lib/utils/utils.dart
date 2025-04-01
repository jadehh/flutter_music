/*
 * @File     : utils.dart
 * @Author   : jade
 * @Date     : 2024/12/6 9:34
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_music_core/app/constant.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:package_info_plus/package_info_plus.dart';


class Utils {
  static late PackageInfo packageInfo;

  static DateFormat timeFormat = DateFormat("HH:mm:ss");

  static const encodeNames = {'&nbsp;': ' ', '&amp;': '&', '&lt;': '<', '&gt;': '>', '&quot;': '"', '&apos;': "'", '&#039;': "'"};

  static String decodeName ({String str=""}){
   for(var key in encodeNames.keys){
     str = str.replaceAll(key, encodeNames[key]!);
   }
   return str;
  }
  static String numFix(int n) => n < 10 ? ("0${n}") : n.toString();

  static int stringToInt(String input) {
    // 正则表达式匹配整数，包括负数和整数
    RegExp exp = RegExp(r'\d+');
    // 使用正则表达式查找所有匹配的整数
    Iterable<Match> matches = exp.allMatches(input);
    // 将匹配的字符串提取出来
    return int.parse(matches.map((match) => match.group(0)).join());
  }


  /**
   * 格式化播放数量
   * @param {*} num
   */
  static String formatPlayCount(int num) {
    if (num > 100000000) return ((num / 10000000) / 10).toStringAsFixed(1) + '亿';
    if (num > 10000) return ( (num / 1000) / 10).toStringAsFixed(1) + '万';
    return num.toString();
  }
  /**
   * 格式化歌手
   * @param {*} String
   */
  static String formatSinger(String rawData) => rawData.replaceAll(RegExp("/&/g"), '、');
  /**
   * 格式化播放时间
   * @param {*} String
   */
  static  formatPlayTime (int time) {
    final m = int.parse((time / 60).toString().split(".")[0]);
    final s = int.parse((time % 60).toString().split(".")[0]);
    return m == 0 && s == 0 ? '00:00' : numFix(m) + ':' + numFix(s);
  }



  static String onlineToString(int num) {
    if (num >= 10000) {
      return "${(num / 10000.0).toStringAsFixed(1)}万";
    }
    return num.toString();
  }


  static Future<bool> showAlertDialog(
      EdgeInsetsGeometry padding,
      String content, {
        String title = '',
        String confirm = '',
        String cancel = '',
        bool selectable = false,
        List<Widget>? actions,
      }) async {
    var result = await Get.dialog(
      AlertDialog(
        title: Text(title),
        content: Container(
          constraints: const BoxConstraints(
            maxHeight: 400,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: padding,
              child: selectable ? SelectableText(content) : Text(content),
            ),
          ),
        ),
        actions: [
          ...?actions,
          TextButton(
            onPressed: (() => Get.back(result: false)),
            child: Text(cancel.isEmpty ? "取消" : cancel),
          ),
          TextButton(
            onPressed: (() => Get.back(result: true)),
            child: Text(confirm.isEmpty ? "确定" : confirm),
          ),
        ],
      ),
    );
    return result ?? false;
  }

  static Map<String,dynamic> formatPicUrl(String picUrl) {
    var headers = {Constant.UserAgentHeader:Constant.userAgent};
    var pic = picUrl;
    if (pic.startsWith("//")) {
      pic = 'https:$pic';
    }else if (pic.contains("@")){
      final strList = picUrl.split("@");
      pic = strList[0];
      for (var i = 1; i < strList.length;i++){
        if(strList[i].contains("=")){
          final headerSplit = strList[i].split("=");
          headers[headerSplit[0]] = headerSplit[1];
        }
      }
    }
    return {"pic":pic,"headers":headers};
  }


  static bool hasMatch(String str,String exp) {
    final RegExp regex = RegExp(exp);
    return regex.hasMatch(str);
  }
}