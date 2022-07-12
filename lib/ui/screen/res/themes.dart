import 'package:flutter/material.dart';
import 'package:places/domain/app_colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      canvasColor: lmColorwhite,
      primaryColorDark: lmPrimaryColor2,
      primaryColor: lmPrimarycolor,
      primaryColorLight: lmBrightness,
      scaffoldBackgroundColor: lmColorwhite,
      highlightColor: lmBrightness,
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          color: lmPrimaryColor2,
        ),
      ),
      tabBarTheme: TabBarTheme(
        indicator: BoxDecoration(
          color: lmPrimaryColor2,
          borderRadius: BorderRadius.circular(40),
        ),
        unselectedLabelColor: const Color(0xFF7C7E92),
        unselectedLabelStyle: const TextStyle(
          color: Colors.white,
        ),
        labelColor: lmColorwhite,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: lmColorwhite,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: lmColorwhite,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      canvasColor: dmPrimaryColor,
      primaryColor: Colors.white,
      primaryColorLight: dmTabDark,
      scaffoldBackgroundColor: dmPrimaryColor,
      primaryColorDark: dmPrimaryColor,
      cardColor: darkBG,
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          color: lmColorwhite,
        ),
      ),
      tabBarTheme: TabBarTheme(
        indicator: BoxDecoration(
          color: dmTabDark,
          borderRadius: BorderRadius.circular(40),
        ),
        unselectedLabelColor: const Color(0xFF7C7E92),
        unselectedLabelStyle: const TextStyle(
          color: Colors.white,
        ),
        labelColor: lmColorwhite,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: dmPrimaryColor,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}

