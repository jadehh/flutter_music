/*
 * @File     : device.dart
 * @Author   : jade
 * @Date     : 2024/12/5 13:58
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'dart:io';

import 'package:flutter/material.dart';

class DeviceUtil{
  static bool isDesktopDevice(){
    if (Platform.isMacOS || Platform.isWindows || Platform.isLinux){
      return true;
    }else{
      return false;
    }
  }
  static bool isWidthGreaterThanHeight(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width > size.height;
  }
}