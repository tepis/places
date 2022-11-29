import 'package:flutter/material.dart';
import 'package:places/domain/app_colors.dart';
import 'package:places/domain/app_typography.dart';
import 'package:places/main.dart';

class AppTheme {
  AppTheme();

  static ThemeData buildTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      canvasColor: AppColors.lmColorWhite,
      primaryColorDark: AppColors.lmPrimaryColorDark,
      primaryColor: AppColors.lmPrimaryColor,
      primaryColorLight: AppColors.lmBrightness,
      scaffoldBackgroundColor: AppColors.lmColorWhite,
      highlightColor: AppColors.lmBrightness,
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          color: AppColors.lmPrimaryColorDark,
        ),
      ),
      tabBarTheme: TabBarTheme(
        indicator: BoxDecoration(
          color: AppColors.lmPrimaryColorDark,
          borderRadius: BorderRadius.circular(40),
        ),
        unselectedLabelColor: const Color(0xFF7C7E92),
        unselectedLabelStyle: const TextStyle(
          color: AppColors.lmColorWhite,
        ),
        labelColor: AppColors.lmColorWhite,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: AppColors.lmColorWhite,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.lmColorWhite,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      textTheme: TextTheme(
        headline6: AppTypography.styleText18Regular.copyWith(
          color: AppColors.lmPrimaryColor,
        ),
        headline4: AppTypography.styleText14Bold.copyWith(
          color: AppColors.lmPrimaryColor,
        ),
        headline5: AppTypography.styleText14Normal.copyWith(
          color: AppColors.lmLigthGrey,
        ),
        subtitle1: AppTypography.styleText16Normal.copyWith(
          color: AppColors.lmPrimaryColor,
        ),
        subtitle2: AppTypography.styleText14Normal.copyWith(
          color: AppColors.lmGreenColor,
        ),
      ),
    );
  }

  static ThemeData buildThemeDark() {
    final ThemeData base = ThemeData.dark();

    return base.copyWith(
      canvasColor: AppColors.dmPrimaryColor,
      primaryColor: Colors.white,
      primaryColorLight: AppColors.dmTabDark,
      scaffoldBackgroundColor: AppColors.dmPrimaryColor,
      primaryColorDark: AppColors.dmPrimaryColor,
      cardColor: AppColors.dmDarkBG,
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          color: AppColors.lmColorWhite,
        ),
      ),
      tabBarTheme: TabBarTheme(
        indicator: BoxDecoration(
          color: AppColors.dmTabDark,
          borderRadius: BorderRadius.circular(40),
        ),
        unselectedLabelColor: const Color(0xFF7C7E92),
        unselectedLabelStyle: const TextStyle(
          color: Colors.white,
        ),
        labelColor: AppColors.lmColorWhite,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.dmPrimaryColor,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
        headline6: AppTypography.styleText18Regular.copyWith(
          color: AppColors.dmWhiteColor,
        ),
        headline5: AppTypography.styleText14Normal.copyWith(
          color: AppColors.dmligthGrey,
        ),
        subtitle1: AppTypography.styleText16Normal.copyWith(
          color: AppColors.dmWhiteColor,
        ),
        subtitle2: AppTypography.styleText14Normal.copyWith(
          color: AppColors.dmGreenColor,
        ),
      ),
    );
  }
}
