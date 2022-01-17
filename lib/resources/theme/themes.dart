import 'package:flutter/material.dart';
import 'package:pet_selection/constants.dart';
import 'package:pet_selection/resources/theme/typography.dart';
import 'colours.dart';

RoundedRectangleBorder rRectWithCircularBR10 = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10.0),
);

ThemeData getThemes() {
  return ThemeData(
    colorScheme: ColorScheme.light(
      primary: primaryColour,
      primaryVariant: pVariantColour,
      //secondary: grey, //secondaryColour,
      //secondaryVariant: sVariantColour,
      surface: surfaceColour,
      background: backgroundColour,
      error: errorColour,
      onPrimary: onPrimaryColour,
      //onSecondary: onSecondaryColour,
      onSurface: onSurfaceColour,
      onBackground: onBackgroundColour,
      onError: onErrorColour,
    ),
    fontFamily: 'DMSans',
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: red,
        textStyle: textButtonTextStyle,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primaryColour,
        onPrimary: onPrimaryColour,
        textStyle: elevatedButtonTextStyle,
        fixedSize: sizeOfEBtn,
        shape: rRectWithCircularBR10,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      //filled: true,
      //fillColor: white,
      hintStyle: hintTextStyle,
      /*enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: white,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),*/
      /*focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: white,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),*/
    ),
  );
}
