/*
 * @File     : setting_service.dart
 * @Author   : jade
 * @Date     : 2024/12/6 9:27
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'dart:io';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_core/main.dart';
import 'package:flutter_music_core/model/setting.dart';
import 'package:get/get.dart';

class SettingService extends GetxService {
  // 语言
  Rx<Locale> locale = defaultLangLocale.obs;

  // 字体大小
  final fontSize = defaultFontSize.obs;

  static double get defaultFontSize {
    return Setting.getFontSize();
  }

  static Locale get defaultLangLocale {
    switch (Setting.getLanguage()) {
      case 0:
        return Locale(Platform.localeName.split("_").first);
      case 1:
        return Locale("zh");
      default:
        return Locale("en");
    }
  }

  setLocale(int value) async {
    await Setting.setLanguage(value);
    locale.value = defaultLangLocale;
  }

  Rx<ThemeMode> themeMode = defaultThemeMode.obs;

  static ThemeMode get defaultThemeMode {
    switch (Setting.getThemeMode()) {
      case 0:
        return ThemeMode.system;
      case 1:
        return ThemeMode.light;
      default:
        return ThemeMode.dark;
    }
  }

  setThemeMode(int value) async{
    await Setting.setThemeMode(value);
    themeMode.value = defaultThemeMode;
  }

  Rx<FlexScheme> themeScheme = defaultThemeScheme.obs;

  static FlexScheme get defaultThemeScheme {
    switch (Setting.getThemeScheme()) {
      case 0:
        return AppTheme.theme_green;
      case 1:
        return AppTheme.theme_pink;
      case 2:
        return AppTheme.theme_orange;
      case 3:
        return AppTheme.theme_purple;
      case 4:
        return AppTheme.theme_blue;
      case 5:
        return AppTheme.theme_blue2;
      case 6:
        return AppTheme.theme_blue_plus;
      case 7:
        return AppTheme.theme_brown;
      case 8:
        return AppTheme.theme_red;
      case 9:
        return AppTheme.theme_grey;
      case 10:
        return AppTheme.theme_happy_new_year;
      default:
        return AppTheme.theme_happy_new_year;
    }
  }

  setThemeScheme(int value)  async{
    await Setting.setThemeScheme(value);
    themeScheme.value = defaultThemeScheme;
  }

  setFontSize(double _fontSize) async {
    fontSize.value = _fontSize;
    await Setting.setFontSize(_fontSize);
  }

}
