/*
 * @File     : global.dart
 * @Author   : jade
 * @Date     : 2024/9/6 9:19
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'dart:convert';

import 'package:flutter_log/flutter_log.dart';
import 'package:flutter_qjs/flutter_qjs.dart';
class Global{
  static IsolateFunction __lx_native__ = IsolateFunction((params) {
    Log.d("params:${params}");
  });

  static List setLxNative(){
    return ["__lx_native_call__",__lx_native__];
  }
}