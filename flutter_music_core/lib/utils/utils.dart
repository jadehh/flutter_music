/*
 * @File     : utils.dart
 * @Author   : jade
 * @Date     : 2024/12/6 9:34
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:package_info_plus/package_info_plus.dart';


class Utils {
  static late PackageInfo packageInfo;

  static DateFormat timeFormat = DateFormat("HH:mm:ss");



  static int stringToInt(String input) {
    // 正则表达式匹配整数，包括负数和整数
    RegExp exp = RegExp(r'\d+');
    // 使用正则表达式查找所有匹配的整数
    Iterable<Match> matches = exp.allMatches(input);
    // 将匹配的字符串提取出来
    return int.parse(matches.map((match) => match.group(0)).join());
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

}