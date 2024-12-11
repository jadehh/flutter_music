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
import 'package:quick_js/src/method/console.dart';
import 'package:quick_js/src/method/global.dart';
import 'package:uuid/uuid.dart';

class Spider {
  late IsolateQjs _ctx;

  late String key;

  Spider() {
    key = Uuid().v4();
  }

  Future<bool> createJSEnv(String id, String name, String desc, String version, String author, String homepage, String rawScript) async {
    try{
      _ctx = IsolateQjs();
      JSInvokable setToGlobalObject = await _ctx.evaluate("(key, val) => { this[key] = val; }");
      await setToGlobalObject.invoke(Console.setConsole());
      await setToGlobalObject.invoke(Global(key: key).setLxNative());
      String? preloadScript = await _getPreloadScript();
      if (preloadScript == null) return false;
      _ctx.evaluate(preloadScript);
      _ctx.evaluate("lx_setup('${key}','${id}','${name}','${desc}','${version}','${author}','${homepage}','')");
      await _ctx.evaluate(rawScript);
      return true;
    }catch(e,s){
      Log.e(e.toString(), s);
      return false;
    }

  }

  Future<String?> _getPreloadScript() async {
    try {
      return await rootBundle.loadString("packages/quick_js/assets/js/lib/user-api-preload.js");
    } catch (e, s) {
      Log.e(e.toString(), s);
      return null;
    }
  }

  Future init(String id, String name, String desc, String version, String author, String homepage, String rawScript) async {
    await createJSEnv(id,name,desc,version,author,homepage,rawScript);
    // await _ctx!.evaluate("__JS_SPIDER__.init(ext)");
  }
}
