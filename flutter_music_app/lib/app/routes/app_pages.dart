import 'package:flutter_music/app/home/controller/home_controller.dart';
import 'package:flutter_music/app/home/home_page.dart';
import 'package:flutter_music/app/setting/controller/setting_basic_controller.dart';
import 'package:flutter_music/app/setting/pages/setting_basic_page.dart';
import 'package:get/get.dart';
import 'route_path.dart';

class AppPages {
  AppPages._();
  static final routes = [
    // 首页
    GetPage(
      name: RoutePath.kHome,
      page: () =>   HomePage(),
      bindings: [
        // BindingsBuilder.put(() => IndexedController()),
        BindingsBuilder.put(() => HomeController()),
      ],
    ),
    // 基本设置界面
    GetPage(
      name: RoutePath.kSettingBasic,
      page: () => SettingBasicPage(),
      bindings: [
        // BindingsBuilder.put(() => IndexedController()),
        BindingsBuilder.put(() => SettingBasicController()),
      ],
    ),

  ];
}
