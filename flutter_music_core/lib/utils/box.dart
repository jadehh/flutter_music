/*
 * @File     : box.dart
 * @Author   : jade
 * @Date     : 2024/12/11 10:41
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:flutter_log/flutter_log.dart';
import 'package:flutter_music_core/models/db/user_api_info.dart';
import 'package:hive/hive.dart';

class BoxUtil{
  static const String userApiInfoBoxName = "source";
  static const String settingBoxName = "setting";

  static late Box<UserApiInfo> userApiInfoBox;
  static late Box settingBox;
  static init() async{
    await Hive.deleteBoxFromDisk(userApiInfoBoxName);
    await Hive.deleteBoxFromDisk(settingBoxName);
    Log.i("Init User Api Info Box");
    userApiInfoBox = await Hive.openBox<UserApiInfo>(userApiInfoBoxName);
    Log.i("Init Setting Box");
    settingBox = await Hive.openBox(settingBoxName);
  }

  static saveUserApiInfo(UserApiInfo userApiInfo) async{
    await userApiInfoBox.add(userApiInfo);
  }

  static editUserApiInfo(int index,UserApiInfo editUserApiInfo) async{
    await userApiInfoBox.putAt(index, editUserApiInfo);
  }

  static List<UserApiInfo> getUserApiInfoList() {
    return userApiInfoBox.values.toList();
  }

}