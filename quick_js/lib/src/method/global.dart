/*
 * @File     : global.dart
 * @Author   : jade
 * @Date     : 2024/9/6 9:19
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:flutter_log/flutter_log.dart';
import 'package:flutter_qjs/flutter_qjs.dart';
class Global {
  late String key;
  Global({required this.key});
  static IsolateFunction __lx_native_call__ = IsolateFunction((String key,String event,String data) {
    Log.JSDebug("params:${key},event:${event},data:${data}");
    return null;
  });

  List setLxNative(){
    return ["__lx_native_call__",__lx_native_call__];
  }
}