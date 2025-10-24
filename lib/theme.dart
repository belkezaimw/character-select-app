import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = Color.fromRGBO(236, 17, 1, 1);
  static Color primaryaCcent = Color.fromRGBO(120, 14, 14, 1);
  static Color secondaryColor = Color.fromRGBO(45, 45, 45, 1);
  static Color seconderyaccent = Color.fromRGBO(36, 36, 36, 1);
  static Color titleColor = Color.fromRGBO(200, 200, 200, 1);
  static Color textColor = Color.fromRGBO(150, 150, 150, 1);
  static Color successcolor = Color.fromRGBO(9, 149, 110, 1);
  static Color highlightcolor = Color.fromRGBO(212, 172, 13, 1);
}

ThemeData primaryTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
  scaffoldBackgroundColor: AppColors.seconderyaccent,

  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.secondaryColor,
    foregroundColor: AppColors.textColor,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.textColor,
      fontSize: 16,
      letterSpacing: 1,
    ),
    headlineMedium: TextStyle(
      color: AppColors.titleColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
    ),
    titleMedium: TextStyle(
      color: AppColors.titleColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
    ),
  ),

  cardTheme: CardThemeData(
    color: AppColors.secondaryColor.withOpacity(0.5),
    surfaceTintColor: Colors.transparent,
    shape: RoundedRectangleBorder(),
    shadowColor: Colors.transparent,
    margin: EdgeInsets.only(bottom: 16)
  )
);


