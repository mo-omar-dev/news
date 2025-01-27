import 'package:flutter/material.dart';
import 'package:news/theme/app_color.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
      primaryColor: AppColor.black,
      secondaryHeaderColor: AppColor.white,
      indicatorColor: AppColor.black,
      scaffoldBackgroundColor: AppColor.white,
      appBarTheme:
          const AppBarTheme(centerTitle: true, backgroundColor: AppColor.white),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            color: AppColor.black, fontSize: 24, fontWeight: FontWeight.normal),
        displayMedium: TextStyle(
            color: AppColor.black, fontSize: 16, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(
            color: AppColor.black, fontSize: 14, fontWeight: FontWeight.normal),
        headlineLarge: TextStyle(
            color: AppColor.black, fontSize: 16, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(
            color: AppColor.white, fontSize: 14, fontWeight: FontWeight.normal),
        headlineSmall: TextStyle(
            color: AppColor.grey, fontSize: 12, fontWeight: FontWeight.normal),
      ));
  static final ThemeData darkTheme = ThemeData(
      primaryColor: AppColor.white,
      secondaryHeaderColor: AppColor.black,
      indicatorColor: AppColor.white,
      scaffoldBackgroundColor: AppColor.black,
      appBarTheme:
          const AppBarTheme(centerTitle: true, backgroundColor: AppColor.black),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            color: AppColor.white, fontSize: 24, fontWeight: FontWeight.normal),
        displayMedium: TextStyle(
            color: AppColor.white, fontSize: 16, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(
            color: AppColor.white, fontSize: 14, fontWeight: FontWeight.normal),
        headlineLarge: TextStyle(
            color: AppColor.white, fontSize: 16, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(
            color: AppColor.black, fontSize: 14, fontWeight: FontWeight.normal),
        headlineSmall: TextStyle(
            color: AppColor.grey, fontSize: 12, fontWeight: FontWeight.normal),
      ));
}
