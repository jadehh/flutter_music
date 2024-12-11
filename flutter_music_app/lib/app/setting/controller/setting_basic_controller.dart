/*
 * @File     : setting_basic_controller.dart
 * @Author   : jade
 * @Date     : 2024/12/6 15:08
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter_music_core/main.dart';
import 'package:flutter_music_core/models/setting.dart';
import 'package:get/get.dart';

class SettingBasicController extends GetxController {
  RxList settingState = [].obs;
  var themeMode = 0.obs;
  var lang = 0.obs;
  final settingService = Get.find<SettingService>();
  var fontSize = 12.0.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    settingState.add(Setting.getSettingBasicStartupAutoPlay());
    settingState.add(Setting.getSettingBasicStartupPushPlayDetailScreen());
    settingState.add(Setting.getSettingBasicShowBackBtn());
    settingState.add(Setting.getSettingBasicShowExitBtn());
    settingState.add(Setting.getSettingBasicAutoHidePlayBar());
    settingState.add(Setting.getSettingBasicHomePageScroll());
    settingState.add(Setting.getSettingBasicUseSystemFileSelector());
    settingState.add(Setting.getSettingBasicAlwaysKeepStatusBarHeight());
    themeMode.value = Setting.getThemeMode();
    lang.value = Setting.getLanguage();
    fontSize.value = Setting.getFontSize();
  }

  Future<void> changeState({required int index, required bool value}) async {
    settingState[index] = value;
    switch (index) {
      case 0:
        await Setting.setSettingBasicStartupAutoPlay(value);
        break;
      case 1:
        await Setting.setSettingBasicStartupPushPlayDetailScreen(value);
        break;
      case 2:
        await Setting.setSettingBasicShowBackBtn(value);
        break;
      case 3:
        await Setting.setSettingBasicShowExitBtn(value);
        break;
      case 4:
        await Setting.setSettingBasicAutoHidePlayBar(value);
        break;
      case 5:
        await Setting.setSettingBasicHomePageScroll(value);
        break;
      case 6:
        await Setting.setSettingBasicUseSystemFileSelector(value);
        break;
      case 7:
        await Setting.setSettingBasicAlwaysKeepStatusBarHeight(value);
        break;
      default:
        break;
    }
  }

  void changeThemeMode(int value) async {
    themeMode.value = value;
    settingService.setThemeMode(value);
  }

  void changeLanguage(int i) async {
    if (lang.value != i) {
      lang.value = i;
      await settingService.setLocale(i);
      Get.updateLocale(settingService.locale.value);
    }
  }

  setFontSize(double value) async{
    double _fontSize = value.toInt().toDouble();
    if(fontSize.value != _fontSize){
      fontSize.value = _fontSize;
      await settingService.setFontSize(_fontSize);
    }
  }
}
