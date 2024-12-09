import 'package:flutter/material.dart';
import 'package:flutter_music/app/constant.dart';
import 'package:flutter_music/app/home/controller/home_controller.dart';
import 'package:flutter_music/app/setting/setting_page.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  final List<Widget> pages = [
    Text("1"),
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


