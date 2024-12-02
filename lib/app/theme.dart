import 'dart:io';

import 'package:flutter_acrylic/flutter_acrylic.dart';

import 'package:fluent_ui/fluent_ui.dart';

enum NavigationIndicators { sticky, end }

class AppTheme extends ChangeNotifier {
  AccentColor? _color;
  AccentColor get color => _color ?? systemAccentColor;
  set color(AccentColor color) {
    _color = color;
    notifyListeners();
  }

  ThemeMode _mode = ThemeMode.system;
  ThemeMode get mode => _mode;
  set mode(ThemeMode mode) {
    _mode = mode;
    notifyListeners();
  }

  PaneDisplayMode _displayMode = PaneDisplayMode.auto;
  PaneDisplayMode get displayMode => _displayMode;
  set displayMode(PaneDisplayMode displayMode) {
    _displayMode = displayMode;
    notifyListeners();
  }

  NavigationIndicators _indicator = NavigationIndicators.sticky;
  NavigationIndicators get indicator => _indicator;
  set indicator(NavigationIndicators indicator) {
    _indicator = indicator;
    notifyListeners();
  }

  WindowEffect _windowEffect = WindowEffect.disabled;
  WindowEffect get windowEffect => _windowEffect;
  set windowEffect(WindowEffect windowEffect) {
    _windowEffect = windowEffect;
    notifyListeners();
  }

  void setEffect(WindowEffect effect, BuildContext context) {
    Window.setEffect(
      effect: effect,
      color: [
        WindowEffect.solid,
        WindowEffect.acrylic,
      ].contains(effect)
          ? FluentTheme.of(context).micaBackgroundColor.withOpacity(0.05)
          : Colors.transparent,
      dark: FluentTheme.of(context).brightness.isDark,
    );
  }

  TextDirection _textDirection = TextDirection.ltr;
  TextDirection get textDirection => _textDirection;
  set textDirection(TextDirection direction) {
    _textDirection = direction;
    notifyListeners();
  }

  Locale? _locale;
  Locale? get locale => _locale ?? systemLocale;
  set locale(Locale? locale) {
    _locale = locale;
    notifyListeners();
  }

  Locale get systemLocale{
    List<String> localeList = Platform.localeName.split("_");
    return Locale(localeList.first);
  }

  TextStyle? _textStyle;
  TextStyle? get textStyle => _textStyle ?? systemTextStyle;
  set textStyle(TextStyle? style) {
    _textStyle = style;
    notifyListeners();
  }

  TextStyle get systemTextStyle{
    return const TextStyle(

    );
  }

  // 设置
  // 显示桌面按钮
  bool _showBackStatus = false;
  //提供外部能够访问的数据
  bool get showBackStatus => _showBackStatus;

  set setBackStatus(bool value) {
    _showBackStatus = value;
    notifyListeners();
  }

  // 显示退出按钮
  bool _showExitStatus = false;
  //提供外部能够访问的数据
  bool get showExitStatus => _showExitStatus;

  set setExitStatus(bool value) {
    _showExitStatus = value;
    notifyListeners();
  }

}



AccentColor get systemAccentColor {
  // if ((defaultTargetPlatform == TargetPlatform.windows ||defaultTargetPlatform == TargetPlatform.android) && !kIsWeb) {
  //   return AccentColor.swatch({
  //     'darkest': SystemTheme.accentColor.darkest,
  //     'darker': SystemTheme.accentColor.darker,
  //     'dark': SystemTheme.accentColor.dark,
  //     'normal': SystemTheme.accentColor.accent,
  //     'light': SystemTheme.accentColor.light,
  //     'lighter': SystemTheme.accentColor.lighter,
  //     'lightest': SystemTheme.accentColor.lightest,
  //   });
  // }
  return Colors.green;
}
