/*
 * @File     : prefers.dart
 * @Author   : jade
 * @Date     : 2024/12/5 13:40
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'dart:io';

import 'package:hive/hive.dart';

import 'log.dart';

class Prefers {
  static late Box box;



  Future init(String boxName) async {
    box = await Hive.openBox(boxName);
  }

  static String getString(dynamic key, {String defaultValue = ""}) {
    try {
      String value = box.get(key, defaultValue: defaultValue) as String;
      // Log.d("Get String Value：$key\r\n$value");
      return value;
    } catch (e) {
      Log.logPrint(e);
      return defaultValue;
    }
  }

  static int getInt(dynamic key, {int defaultValue = 0}) {
    try {
      int value = box.get(key, defaultValue: defaultValue) as int;
      // Log.d("Get int Value：$key\r\n$value");
      return value;
    } catch (e) {
      Log.logPrint(e);
      return defaultValue;
    }
  }

  static double getFloat(dynamic key, {double defaultValue = 0.0}) {
    try {
      double value = box.get(key, defaultValue: defaultValue) as double;
      // Log.d("Get double Value：$key\r\n$value");
      return value;
    } catch (e) {
      Log.logPrint(e);
      return defaultValue;
    }
  }

  static bool getBoolean(dynamic key, {bool defaultValue = false}) {
    try {
      bool value = box.get(key, defaultValue: defaultValue) as bool;
      // Log.d("Get bool Value：$key\r\n$value");
      return value;
    } catch (e) {
      Log.logPrint(e);
      return defaultValue;
    }
  }

  static Directory? getDirectory(dynamic key, {Directory? defaultValue }) {
    try {
      Directory value = box.get(key, defaultValue: defaultValue) as Directory;
      // Log.d("Get bool Value：$key\r\n$value");
      return value;
    } catch (e) {
      Log.logPrint(e);
      return defaultValue;
    }
  }

  static Future put<T>(dynamic key, T value) async {
    // Log.d("Set LocalStorage：$key\r\n$value");
    return await box.put(key, value);
  }


}
