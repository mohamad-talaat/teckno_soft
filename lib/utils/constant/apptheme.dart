import 'package:flutter/material.dart';
import 'package:teckno_soft/utils/constant/color.dart';

ThemeData themeEnglish = ThemeData(
  appBarTheme: const AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(color: AppColor.primaryColor, fontSize: 30)),
  floatingActionButtonTheme:const FloatingActionButtonThemeData(backgroundColor: AppColor.primaryColor),
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
      bodyText1: TextStyle(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyText2: TextStyle(height: 2, color: AppColor.grey, fontSize: 14)), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: AppColor.primaryColor),
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
      bodyText1: TextStyle(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyText2: TextStyle(height: 2, color: AppColor.grey, fontSize: 14)),
  primarySwatch: Colors.blue,
);
