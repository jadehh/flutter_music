import 'package:flutter/material.dart';
import 'package:flutter_music/app/constant.dart';
import 'package:flutter_music/app/indexed/controllers/indexed_controller.dart';
import 'package:flutter_music/app/music_albums/music_albums_page.dart';
import 'package:flutter_music/app/setting/setting_page.dart';
import 'package:get/get.dart';

class IndexedPage extends GetView<IndexedController> {
  final List<Widget> pages = [
    MusicAlbumsPage(),
    Text("2"),
    Text("3"),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx((){
      final bottomItems = Constant.navItems(context);
      final tabBarItems =  bottomItems.keys.toList().map((key)=>BottomNavigationBarItem(icon: Icon(bottomItems[key]?.iconData),label: bottomItems[key]?.title ,tooltip: bottomItems[key]?.title)).toList();
      return Scaffold(
        body: pages[controller.navIndex.value],
        bottomNavigationBar:BottomNavigationBar(
          items: tabBarItems,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.navIndex.value,
          onTap: (index)=>controller.navIndex.value = index,
        ),
      );
    });
  }
}


