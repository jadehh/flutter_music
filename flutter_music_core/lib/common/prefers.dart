/*
 * @File     : prefers.dart
 * @Author   : jade
 * @Date     : 2024/12/5 13:40
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'dart:io';


import 'package:flutter_log/flutter_log.dart';
import 'package:flutter_music_core/main.dart';


class Prefers {

  static String getString(dynamic key, {String defaultValue = ""}) {
    try {
      String value = BoxUtil.settingBox.get(key, defaultValue: defaultValue) as String;
      // Log.d("Get String Value：$key\r\n$value");
      return value;
    } catch (e) {
      Log.logPrint(e);
      return defaultValue;
    }
  }

  static int getInt(dynamic key, {int defaultValue = 0}) {
    try {
      int value = BoxUtil.settingBox.get(key, defaultValue: defaultValue) as int;
      // Log.d("Get int Value：$key\r\n$value");
      return value;
    } catch (e) {
      Log.logPrint(e);
      return defaultValue;
    }
  }

  static double getFloat(dynamic key, {double defaultValue = 0.0}) {
    try {
      double value = BoxUtil.settingBox.get(key, defaultValue: defaultValue) as double;
      // Log.d("Get double Value：$key\r\n$value");
      return value;
    } catch (e) {
      Log.logPrint(e);
      return defaultValue;
    }
  }

  static bool getBoolean(dynamic key, {bool defaultValue = false}) {
    try {
      bool value = BoxUtil.settingBox.get(key, defaultValue: defaultValue) as bool;
      // Log.d("Get bool Value：$key\r\n$value");
      return value;
    } catch (e) {
      Log.logPrint(e);
      return defaultValue;
    }
  }

  static Directory? getDirectory(dynamic key, {Directory? defaultValue }) {
    try {
      Directory value = BoxUtil.settingBox.get(key, defaultValue: defaultValue) as Directory;
      // Log.d("Get bool Value：$key\r\n$value");
      return value;
    } catch (e) {
      Log.logPrint(e);
      return defaultValue;
    }
  }

  static Future put<T>(dynamic key, T value) async {
    // Log.d("Set LocalStorage：$key\r\n$value");
    return await BoxUtil.settingBox.put(key, value);
  }


}
