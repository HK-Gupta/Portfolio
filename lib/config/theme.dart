import 'package:flutter/material.dart';
import 'package:portfolio/config/colors.dart';

var darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,

  appBarTheme: AppBarTheme(),
  colorScheme: ColorScheme.dark(
    primary: primaryColor,
    background: bgColor,
    primaryContainer: containerColor,
    onPrimaryContainer: labelColor,
    onBackground: fontColor,
  ),

  textTheme: TextTheme(
      headlineMedium: TextStyle(
          fontSize: 34,
          fontFamily: "Console",
          color: fontColor,
          fontWeight: FontWeight.w700
      ),
      bodyLarge: TextStyle(
          fontSize: 24,
          fontFamily: "Console",
          color: fontColor,
          fontWeight: FontWeight.w700
      ),
      bodyMedium: TextStyle(
          fontSize: 20,
          fontFamily: "Console",
          color: fontColor,
          fontWeight: FontWeight.w400
      ),
      bodySmall: TextStyle(
          fontSize: 18,
          fontFamily: "Console",
          color: fontColor,
          fontWeight: FontWeight.w400
      ),
      labelMedium: TextStyle(
          fontSize: 16,
          fontFamily: "Console",
          color: labelColor,
          fontWeight: FontWeight.w400
      ),
  )
);

