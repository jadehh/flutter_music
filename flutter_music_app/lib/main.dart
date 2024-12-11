import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_music_core/utils/device.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:flutter_music_core/main.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/route_path.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if it's not on the web, windows or android, load the accent color
  if (DeviceUtil.isDesktopDevice()) {
    await Window.initialize();
    // if (defaultTargetPlatform == TargetPlatform.windows) {
    //   await flutter_acrylic.Window.hideWindowControls();
    // }
    await WindowManager.instance.ensureInitialized();
    windowManager.waitUntilReadyToShow().then((_) async {
      // await windowManager.setTitleBarStyle(
      //   TitleBarStyle.hidden,
      //   windowButtonVisibility: false,
      // );
      await windowManager.setMinimumSize(const Size(400, 400));
      await windowManager.show();
      await windowManager.setPreventClose(true);
      await windowManager.setSkipTaskbar(false);
    });
  }
  await FlutterMusicCore.initServices();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final settingService = Get.find<SettingService>();
    return Obx(() => ScreenUtilInit(
        designSize: const Size(320, 720),
        minTextAdapt: true,
        splitScreenMode: true,
        child: GetMaterialApp(
          builder: FlutterSmartDialog.init(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Music',
          locale: settingService.locale.value,
          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            S.delegate,
          ],
          theme: AppTheme.changeLightTheme(settingService.themeScheme.value),
          darkTheme: AppTheme.changeDarkTheme(settingService.themeScheme.value),
          themeMode: settingService.themeMode.value,
          initialRoute: RoutePath.kHome,
          getPages: AppPages.routes,
        )));
  }
}
