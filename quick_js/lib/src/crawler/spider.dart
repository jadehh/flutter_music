/*
 * @File     : spider.dart
 * @Author   : jade
 * @Date     : 2024/8/23 下午3:11
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/services.dart';
import 'package:flutter_qjs/flutter_qjs.dart';
import 'package:flutter_log/flutter_log.dart';

class Spider{
  IsolateQjs? _ctx;

  Spider() {
    _ctx = null;
  }

  Future init(String ext) async {
    await initEngine();
    await _ctx!.evaluate("__JS_SPIDER__.init(ext)");
  }

  Future initEngine() async {
    await _createObj();
  }

  _createObj() async {
    try {
      _ctx!.evaluate((await rootBundle.loadString( "packages/quick_js/assets/js/lib/spider.js")), evalFlags: JSEvalFlag.MODULE);
      Log.i("Java Script 环境初始化完成");
    } catch (e, stackTrace) {
      Log.e("Java Script 环境初始化失败:${e.toString()}", stackTrace);
    }
  }
}
