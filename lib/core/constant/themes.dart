import 'package:e_comerse_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: 'Lato',
  textTheme: const TextTheme(
    labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColor.primarytColor),
    titleLarge: TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    headlineLarge: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: AppColor.black),
    bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        height: 2,
        color: AppColor.grey),
  ),
);

ThemeData themeArabic = ThemeData(
  fontFamily: 'Rubik',
  textTheme: const TextTheme(
    labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColor.primarytColor),
    titleLarge: TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    headlineLarge: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: AppColor.black),
    bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        height: 2,
        color: AppColor.grey),
  ),
);
