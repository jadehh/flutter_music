import 'package:flutter_music/app/indexed/controllers/indexed_controller.dart';
import 'package:flutter_music/app/indexed/indexed_page.dart';
import 'package:flutter_music/app/search/controllers/search_page_controller.dart';
import 'package:flutter_music/app/search/search_page.dart';
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
      page: () =>   IndexedPage(),
      bindings: [
        // BindingsBuilder.put(() => IndexedController()),
        BindingsBuilder.put(() => IndexedController()),
      ],
    ),
    //搜索接买呢
    GetPage(
      name: RoutePath.kSearch,
      page: () => SearchPage(),
      bindings: [
        BindingsBuilder.put(() => SearchPageController()),
        // BindingsBuilder.put(() => SettingBasicController()),
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
