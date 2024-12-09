/*
 * @File     : app_settings_controller.dart
 * @Author   : jade
 * @Date     : 2024/12/5 13:35
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_music_core/model/setting.dart';
import 'package:flutter_music_core/utils/file.dart';
import 'package:get/get.dart';

class AppSettingsController extends GetxController{
  static AppSettingsController get instance => Get.find<AppSettingsController>();
  var themeMode = 0.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  ImageProvider? refreshImage() {
    if (Setting.getWall() == 0){
      final file = File(FileUtil.getWall(Setting.getWall()));
      if (file.existsSync()){
        return MemoryImage(file.readAsBytesSync());
      }else{
        final file = File(FileUtil.getWall(1));
        return MemoryImage(file.readAsBytesSync());
      }
    }else{
      return AssetImage(FileUtil.getWall(Setting.getWall()));
    }
  }
}