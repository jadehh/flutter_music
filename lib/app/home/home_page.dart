/*
 * @File     : home_page.dart
 * @Author   : jade
 * @Date     : 2024/11/21 13:13
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_music/app/constant.dart';
import 'package:flutter_music/app/home/views/window_buttons.dart';
import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter_music/app/setting/setting_page.dart';
import 'package:flutter_music/app/theme.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:flutter_music/utils/device.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
// TODO: implement createState
}

class _HomePage extends State<HomePage> {
  var navIndex = 0;

  var settingNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();
    final List<NavIconItem> navItems = Constant.navItems(context).keys.map((key) => Constant.navItems(context)[key]!).toList();
    final List<String> footKeys = Constant.footItems(context).keys.toList();
    appTheme.showBackStatus ? footKeys: footKeys.remove("home");
    appTheme.showExitStatus ? footKeys: footKeys.remove("shut_down");
    final List<NavIconItem> footItems =footKeys.map((key) => Constant.footItems(context)[key]!).toList();
    final List<Widget> pages = [
      Container(child: Text("1")),
      Container(child: Text("2")),
      Container(child: Text("3")),
      Container(child: Text("4")),
      SettingPage(settingNavIndex: settingNavIndex),
    ];
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return fluent.ScaffoldPage.withPadding(
          padding: const EdgeInsets.all(0),
          content: pages[navIndex],
          bottomBar: fluent.BottomNavigation(
              items: navItems.map((item) => fluent.BottomNavigationItem(icon: getNavIcon(context, item.iconData, item.index == navIndex),)).toList(),
              index: navIndex,
              onChanged: (index) {
                setState(() {
                  navIndex = navItems[index].index;
                });
              }),
        );
      } else {
        return fluent.NavigationView(
          appBar: null,
          pane: fluent.NavigationPane(
            menuButton: SizedBox(
                height: 80,
                child: Align(
                  alignment: Alignment.center,
                  child: getNavIcon(
                      context, CupertinoIcons.music_house_fill, true),
                )),
            toggleable: false,
            displayMode: fluent.PaneDisplayMode.compact,
            size: const fluent.NavigationPaneSize(compactWidth: 100, headerHeight: 80),
            items: navItems.map((item) => fluent.PaneItem(icon: getNavRailIcon(context, item.iconData, item.index == navIndex), title: Text(item.title), body: pages[item.index]) as fluent.NavigationPaneItem).toList(),
            selected: navIndex,
            footerItems: footItems.map((item) => fluent.PaneItem(icon: getNavRailIcon(context, item.iconData, false), title: Text(item.title), body: const SizedBox.shrink(), onTap: () async {
              if (item.index == 5) {
                if (DeviceUtil.isDesktopDevice()) {
                  await windowManager.minimize();
                } else {
                  if (Platform.isAndroid) {
                    const MethodChannel("android_app_retain").invokeMethod("sendToBackground");
                  } else {
                    SmartDialog.showToast("返回桌面,暂不支持IOS平台");
                  }
                }
              } else if (item.index == 6) {
                final result = await showOkCancelAlertDialog(context: context, message: '确定要退出应用吗?', useActionSheetForIOS: true);
                if (result == OkCancelResult.ok) {
                  exit(0);
                }
              }
            }) as fluent.NavigationPaneItem).toList(),
            onChanged: (index) {
              setState(() {
                if (index < 5) {
                  navIndex = index;
                }
              });
            },
          ),
        );
      }
    });
  }

  static getAppBar(BuildContext context, AppTheme appTheme) =>
      fluent.NavigationAppBar(
        automaticallyImplyLeading: false,
        leading: () {
          return fluent.NavigationPaneTheme(
            data: fluent.NavigationPaneTheme.of(context),
            child: Builder(
              builder: (context) => fluent.PaneItem(
                icon: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(CupertinoIcons.music_house_fill,
                      size: 32.0, color: appTheme.color),
                ),
                body: const SizedBox.shrink(),
                enabled: false,
              ).build(
                context,
                false,
                () {},
                displayMode: fluent.PaneDisplayMode.compact,
              ),
            ),
          );
        }(),
        title: () {
          if (kIsWeb) {
            return Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(S.of(context).app_name),
            );
          }
          return DragToMoveArea(
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(S.of(context).app_name),
            ),
          );
        }(),
        actions: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(end: 8.0),
              child: fluent.ToggleSwitch(
                content: const Text('Dark Mode'),
                checked: fluent.FluentTheme.of(context).brightness.isDark,
                onChanged: (v) {
                  if (v) {
                    appTheme.mode = ThemeMode.dark;
                  } else {
                    appTheme.mode = ThemeMode.light;
                  }
                },
              ),
            ),
          ),
          if (!kIsWeb && DeviceUtil.isDesktopDevice()) const WindowButtons(),
        ]),
      );

  static getNavIcon(context, iconData, selected) {
    return Icon(
      iconData,
      size: 32,
      color: selected
          ? fluent.FluentTheme.of(context).accentColor
          : fluent.FluentTheme.of(context).inactiveColor.withOpacity(1),
    );
  }

  static getNavRailIcon(context, iconData, selected) => SizedBox(
      height: 80,
      child: Align(
        child: getNavIcon(context, iconData, selected),
        alignment: Alignment.center,
      ));
}

class NavIconItem {
  late IconData? iconData;
  final String title;
  final int index;

  NavIconItem({
    this.iconData,
    required this.title,
    required this.index,
  });
}
