/*
 * @File     : setting.dart
 * @Author   : jade
 * @Date     : 2024/12/5 13:39
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter_music_core/app/constant.dart';
import 'package:flutter_music_core/common/prefers.dart';

class Setting {

  // [
  // SettingItem(title: S.of(context).setting_basic_startup_auto_play, subTitle:S.of(context).setting_basic , index: 0),
  // SettingItem(title: S.of(context).setting_basic_startup_push_play_detail_screen, subTitle:S.of(context).setting_basic , index: 0),
  // SettingItem(title: S.of(context).setting_basic_show_back_btn, subTitle:S.of(context).setting_basic , index: 0),
  // SettingItem(title: S.of(context).setting_basic_show_exit_btn, subTitle:S.of(context).setting_basic , index: 0),
  // ];

  // 基本设置
  static bool getSettingBasicStartupAutoPlay(){
    return Prefers.getBoolean("settingBasicStartupAutoPlay",defaultValue: false);
  }
  static  setSettingBasicStartupAutoPlay(bool value) async{
     await Prefers.put("settingBasicStartupAutoPlay",value);
  }

  static bool getSettingBasicStartupPushPlayDetailScreen(){
    return Prefers.getBoolean("settingBasicStartupPushPlayDetailScreen",defaultValue: false);
  }
  static  setSettingBasicStartupPushPlayDetailScreen(bool value) async{
     await Prefers.put("settingBasicStartupPushPlayDetailScreen",value);
  }

  static bool getSettingBasicShowBackBtn(){
    return Prefers.getBoolean("settingBasicShowBackBtn",defaultValue: false);
  }
  static setSettingBasicShowBackBtn(bool value) async{
     await Prefers.put("settingBasicShowBackBtn",value);
  }

  static bool getSettingBasicShowExitBtn(){
    return Prefers.getBoolean("settingBasicShowExitBtn",defaultValue: true);
  }
  static  setSettingBasicShowExitBtn(bool value) async{
     await Prefers.put("settingBasicShowExitBtn",value);
  }

  static bool getSettingBasicAutoHidePlayBar(){
    return Prefers.getBoolean("settingBasicAutoHidePlayBar",defaultValue: true);
  }
  static  setSettingBasicAutoHidePlayBar(bool value) async{
    await Prefers.put("settingBasicAutoHidePlayBar",value);
  }

  static bool getSettingBasicHomePageScroll(){
    return Prefers.getBoolean("settingBasicHomePageScroll",defaultValue: true);
  }
  static  setSettingBasicHomePageScroll(bool value) async{
    await Prefers.put("settingBasicHomePageScroll",value);
  }

  static bool getSettingBasicUseSystemFileSelector(){
    return Prefers.getBoolean("settingBasicUseSystemFileSelector",defaultValue: true);
  }
  static  setSettingBasicUseSystemFileSelector(bool value) async{
    await Prefers.put("settingBasicUseSystemFileSelector",value);
  }

  static bool getSettingBasicAlwaysKeepStatusBarHeight(){
    return Prefers.getBoolean("settingBasicAlwaysKeepStatusBarHeight",defaultValue: false);
  }
  static  setSettingBasicAlwaysKeepStatusBarHeight(bool value) async{
    await Prefers.put("settingBasicAlwaysKeepStatusBarHeight",value);
  }



  static int getThemeMode() {
    return Prefers.getInt("themeMode",defaultValue: 0);
  }

  static setThemeMode(int value) async{
    return await Prefers.put("themeMode",value);
  }

  static int getThemeScheme() {
    return Prefers.getInt("themeScheme",defaultValue: 0);
  }

  static setThemeScheme(int value) async{
    return await Prefers.put("themeScheme",value);
  }


  static setWall(int value) async{
    return await Prefers.put("wall",value);
  }


  static int getWall() {
    return Prefers.getInt("wall", defaultValue: 0);
  }

  //内部路径
  static  setApplicationSupportDirectory(String path) async {
    await Prefers.put("application_support_directory", path);
  }

  static String getApplicationSupportDirectory(){
    return Prefers.getString("application_support_directory",defaultValue: "");
  }

  static setApplicationCacheDirectory(String path) async{
    await Prefers.put("application_cache_directory", path);
  }

  static String getApplicationCacheDirectory(){
    return Prefers.getString("application_cache_directory",defaultValue: "");
  }

  static setApplicationDocumentsDirectory(String path) async{
    await Prefers.put("application_documents_directory",path);
  }

  static String getApplicationDocumentsDirectory(){
    return Prefers.getString("application_documents_directory",defaultValue: "");
  }

  static setDownloadsDirectory(String? path) async{
    await Prefers.put("downloads_directory",path);
  }

  static String getDownloadsDirectory(){
    return Prefers.getString("downloads_directory",defaultValue: "");
  }

  static setLibraryDirectory(String path) async{
    await Prefers.put("library_directory",path);
  }

  static String getLibraryDirectory(){
    return Prefers.getString("library_directory",defaultValue: "");
  }

  static setTemporaryDirectory(String path) async {
    await Prefers.put("temporary_directory",path);
  }

  static String getTemporaryDirectory(){
    return Prefers.getString("temporary_directory",defaultValue: "");
  }

  static setExternalStorageDirectory(String path) async{
    await Prefers.put("external_storage_directory",path);
  }

  static String getExternalStorageDirectory(){
    return Prefers.getString("external_storage_directory",defaultValue: "");
  }

  static int getLanguage() {
    return Prefers.getInt("language",defaultValue:0);
  }
  static setLanguage(value) async{
    await Prefers.put("language", value);
  }

  static double getFontSize() {
    return Prefers.getFloat("fontSize",defaultValue:Constant.settingBasicFontSize90);
  }
  static setFontSize(value) async{
    await Prefers.put("fontSize", value);
  }
}