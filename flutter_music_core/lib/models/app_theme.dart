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


  static getTextTheme(double fontSize){
    final basicFontSize = 14;
    final meanFontSize = fontSize - basicFontSize;
    return TextTheme(
      displayLarge: GoogleFonts.roboto(fontSize: 97 + meanFontSize, fontWeight: FontWeight.w300),
      displayMedium: GoogleFonts.roboto(fontSize: 61 + meanFontSize, fontWeight: FontWeight.w300),
      displaySmall: GoogleFonts.roboto(fontSize: 48 + meanFontSize, fontWeight: FontWeight.w400),
      headlineMedium: GoogleFonts.roboto(fontSize: 34 + meanFontSize, fontWeight: FontWeight.w400),
      headlineSmall: GoogleFonts.roboto(fontSize: 24 + meanFontSize, fontWeight: FontWeight.w400),
      titleLarge: GoogleFonts.roboto(fontSize: 18 + meanFontSize, fontWeight: FontWeight.w500,color: Colors.white),
      titleMedium: GoogleFonts.roboto(fontSize: 16 + meanFontSize, fontWeight: FontWeight.w400,color: Colors.white),
      titleSmall: GoogleFonts.roboto(fontSize: 14 + meanFontSize, fontWeight: FontWeight.w500,color: Colors.white),
      bodyLarge: GoogleFonts.roboto(fontSize: 16 + meanFontSize, fontWeight: FontWeight.w400),
      bodyMedium: GoogleFonts.roboto(fontSize: 14 + meanFontSize, fontWeight: FontWeight.w400),
      labelLarge: GoogleFonts.roboto(fontSize: 14 + meanFontSize, fontWeight: FontWeight.w500),
      bodySmall: GoogleFonts.roboto(fontSize: 12 + meanFontSize, fontWeight: FontWeight.w400),
      labelSmall: GoogleFonts.roboto(fontSize: 10 + meanFontSize, fontWeight: FontWeight.w400),
    );
  }


  static ThemeData changeLightTheme(FlexScheme scheme,double fontSize) {
    return FlexThemeData.light(
      scheme: scheme,
      subThemesData: subThemesData,
      visualDensity: visualDensity,
      cupertinoOverrideTheme: cupertinoOverrideTheme,
      textTheme: getTextTheme(fontSize)
    );
  }

  static ThemeData changeDarkTheme(FlexScheme scheme,double fontSize) {
    final baseTheme =  FlexThemeData.dark(
      scheme: scheme,
      subThemesData: subThemesData,
      visualDensity: visualDensity,
      cupertinoOverrideTheme: cupertinoOverrideTheme,
        textTheme: getTextTheme(fontSize)
    );
    return baseTheme;
  }

  static Color getThemeColor(FlexScheme scheme){
    return scheme.colors(Brightness.light).primary;
  }
}
