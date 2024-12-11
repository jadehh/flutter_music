library flutter_music_core;

import 'dart:io';

import 'package:flutter_log/flutter_log.dart';
import 'package:flutter_music_core/models/db/user_api_info.dart';
import 'package:flutter_music_core/models/setting.dart';
import 'package:flutter_music_core/service/setting_service.dart';
import 'package:flutter_music_core/service/source_service.dart';
import 'package:flutter_music_core/utils/box.dart';
import 'package:flutter_music_core/utils/utils.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'common/prefers.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path/path.dart' as path;

export 'package:flutter_music_core/models/app_theme.dart';
export 'package:flutter_music_core/service/setting_service.dart';
export 'package:flutter_music_core/utils/box.dart';
export 'package:flutter_music_core/service/source_service.dart';
class FlutterMusicCore {
  static Future initServices() async {

    //本地存储
    await Hive.initFlutter((!Platform.isAndroid && !Platform.isIOS) ? path.join((await getApplicationCacheDirectory()).path, "hive") : null,);
    Hive.registerAdapter(UserApiInfoAdapter());


    //打开盒子
    await BoxUtil.init();
    //包信息
    Utils.packageInfo = await PackageInfo.fromPlatform();

    await Get.put(Prefers());


    //初始化路径
    await initPath();


    // 初始化设置服务
    Get.put(SourceService());
    Get.put(SettingService());


  }

  static Future initPath() async{
    Log.i("路径初始化");
    await Setting.setApplicationSupportDirectory((await getApplicationSupportDirectory()).absolute.path);
    Log.i("ApplicationSupportDirectory:${Setting.getApplicationSupportDirectory()}");
    await Setting.setApplicationCacheDirectory((await getApplicationCacheDirectory()).absolute.path);
    Log.i("ApplicationCacheDirectory:${Setting.getApplicationCacheDirectory()}");
    await Setting.setApplicationDocumentsDirectory((await getApplicationDocumentsDirectory()).absolute.path);
    Log.i("ApplicationDocumentsDirectory:${Setting.getApplicationDocumentsDirectory()}");
    await Setting.setDownloadsDirectory((await getDownloadsDirectory())?.absolute.path);
    Log.i("DownloadsDirectory:${Setting.getDownloadsDirectory()}");
  }

}