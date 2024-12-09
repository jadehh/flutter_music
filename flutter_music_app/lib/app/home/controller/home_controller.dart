/*
 * @File     : home_controller.dart
 * @Author   : jade
 * @Date     : 2024/12/6 10:45
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
class HomeController extends GetxController {
  var navIndex = 0.obs;
  final zoomDrawerController = ZoomDrawerController();
  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
    update();
  }
  void open(){
    zoomDrawerController.open?.call();
    update();
  }

}