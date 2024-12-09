import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


sealed class AppTheme {
  static const subThemesData = FlexSubThemesData(
    interactionEffects: true,
    tintedDisabledControls: true,
    blendOnColors: true,
    useM2StyleDividerInM3: true,
    inputDecoratorIsFilled: true,
    inputDecoratorBorderType: FlexInputBorderType.outline,
    alignedDropdown: true,
    navigationRailUseIndicator: true,
    navigationRailLabelType: NavigationRailLabelType.all,
  );
  static  VisualDensity visualDensity = FlexColorScheme.comfortablePlatformDensity;
  static const cupertinoOverrideTheme =  CupertinoThemeData(applyThemeToAll: true);



  static  FlexScheme defaultScheme = theme_green;

  static get theme_green{
    return FlexScheme.green;
  }

  static get theme_red{
    return FlexScheme.red;
  }

  static get theme_purple{
    return FlexScheme.deepPurple;
  }

  static get theme_blue{
    return FlexScheme.blue;
  }

  static get theme_blue2{
    return FlexScheme.blueM3;
  }

  static get theme_blue_plus{
    return FlexScheme.blueWhale;
  }

  static get theme_brown{
    return FlexScheme.purpleBrown;
  }



  static get theme_pink{
    return FlexScheme.pinkM3;
  }

  static get theme_orange{
    return FlexScheme.orangeM3;
  }

  static get theme_grey{
    return FlexScheme.greyLaw;
  }

  static get theme_happy_new_year{
    return FlexScheme.hippieBlue;
  }



  static ThemeData changeLightTheme(FlexScheme scheme ) {
    return FlexThemeData.light(
      scheme: scheme,
      subThemesData: subThemesData,
      visualDensity: visualDensity,
      cupertinoOverrideTheme: cupertinoOverrideTheme,
    );
  }

  static ThemeData changeDarkTheme(FlexScheme scheme) {
    final baseTheme =  FlexThemeData.dark(
      scheme: scheme,
      subThemesData: subThemesData,
      visualDensity: visualDensity,
      cupertinoOverrideTheme: cupertinoOverrideTheme,
    );
    baseTheme.copyWith(
      textTheme: GoogleFonts.lobsterTextTheme(baseTheme.textTheme),
    );
    return baseTheme;
  }

  static Color getThemeColor(FlexScheme scheme){
    return AppTheme.changeLightTheme(scheme).primaryColor;
  }
}
