// Copyright © 2020 Birju Vachhani. All rights reserved.
// Use of this source code is governed by an Apache license that can be
// found in the LICENSE file.


import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_music/app/home/home_page.dart';
import 'package:flutter_music/app/theme.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:flutter_music/utils/device.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:provider/provider.dart';
import 'package:system_theme/system_theme.dart';
import 'package:window_manager/window_manager.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if it's not on the web, windows or android, load the accent color
  if (!kIsWeb && [TargetPlatform.windows,TargetPlatform.android,
      ].contains(defaultTargetPlatform)) {
    SystemTheme.accentColor.load();
  }

  if (DeviceUtil.isDesktopDevice()) {
    await flutter_acrylic.Window.initialize();
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
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}


class MyApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const MyApp({super.key, this.savedThemeMode});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:  [
        ChangeNotifierProvider(create: (_) => AppTheme()),
    ], builder: (context,child){
      final appTheme = context.watch<AppTheme>();
      return  ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        child: fluent.FluentApp(
          darkTheme: FluentThemeData(
            accentColor: appTheme.color,
            brightness: Brightness.dark,
          ),
          theme: FluentThemeData(
            accentColor: appTheme.color,
            visualDensity: VisualDensity.standard,
            navigationPaneTheme: fluent.NavigationPaneThemeData(
              tileColor: fluent.WidgetStateProperty.resolveWith((state){
                if( state.isHovered){
                  return appTheme.color.withOpacity(0.1);
                }
                return null;
              }),
            ),

            inactiveColor: fluent.Colors.grey,
            focusTheme: FocusThemeData(
              glowFactor: is10footScreen(context) ? 2.0 : 0.0,
            ),
          ),
          themeMode: appTheme.mode,
          home: const HomePage(),
          locale: appTheme.locale,
          supportedLocales: FluentLocalizations.supportedLocales,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            S.delegate
          ],
          builder: FlutterSmartDialog.init(
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
              child: Stack(
                children: [
                  child!,
                  Visibility(
                    visible: !kReleaseMode,
                    child: Positioned(
                      right: 12,
                      bottom: 200 ,
                      child: Opacity(
                        opacity: 0.4,
                        child: ElevatedButton(
                          child: const Text("DEBUG LOG"),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } );
  }
}


