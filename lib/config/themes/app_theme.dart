import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/constants.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundLight,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: Platform.isIOS
          ? null
          : const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
            ),
      backgroundColor: AppColors.backgroundLight,
      elevation: 0.0,
      titleSpacing: 0.0,
      iconTheme: const IconThemeData(
        color: AppColors.mainColor,
        size: 16.0,
      ),
      titleTextStyle: const TextStyle(
        color: AppColors.mainColor,
        fontWeight: FontWeight.w500,
        fontSize: 13.0,
        fontFamily: AppStrings.fontFamily,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.backgroundLight,
      elevation: 50.0,
      selectedItemColor: AppColors.mainColor,
      unselectedItemColor: Colors.grey[400],
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(
        height: 1.5,
      ),
    ),
    primarySwatch:
        MaterialColor(int.parse('0xff${AppColors.mainColor.value}'), color),
    colorScheme: const ColorScheme(
      primary: AppColors.mainColor,
      onPrimary: AppColors.mainColor,
      primaryContainer: AppColors.mainColor,
      secondary: AppColors.secondaryLight,
      onSecondary: AppColors.onSecondaryLight,
      secondaryContainer: AppColors.secondaryContainerLight,
      onSecondaryContainer: AppColors.onSecondaryContainerLight,
      tertiary: AppColors.tertiaryLight,
      onTertiary: AppColors.onTertiaryLight,
      surface: AppColors.surfaceLight,
      onSurface: AppColors.onSurfaceLight,
      background: AppColors.backgroundLight,
      onBackground: AppColors.onBackgroundLight,
      error: AppColors.errorLight,
      onError: AppColors.onErrorLight,
      brightness: Brightness.light,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 16.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w600,
        color: AppColors.secondaryLight,
      ),
      titleMedium: TextStyle(
        fontSize: 14.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w700,
        color: AppColors.secondaryLight,
      ),
      titleSmall: TextStyle(
        fontSize: 12.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w400,
        color: AppColors.onSecondaryLight,
      ),
      labelLarge: TextStyle(
        fontSize: 20.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w600,
        color: AppColors.backgroundLight,
      ),
      displaySmall: TextStyle(
        fontSize: 12.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      ),
      displayMedium: TextStyle(
        fontSize: 14.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w600,
        color: AppColors.onSecondaryContainerLight,
      ),
      displayLarge: TextStyle(
        fontSize: 16.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w400,
        color: AppColors.secondaryLight,
      ),
      bodySmall: TextStyle(
        fontSize: 12.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w300,
        color: AppColors.onSecondaryContainerLight,
      ),
      bodyMedium: TextStyle(
        fontSize: 12.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w600,
        color: AppColors.secondaryLight,
      ),
      bodyLarge: TextStyle(
        fontSize: 18.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w500,
        color: AppColors.secondaryLight,
      ),
    ),
  );

  ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundLight,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: Platform.isIOS
          ? null
          : const SystemUiOverlayStyle(
              statusBarColor: AppColors.mainColor,
              statusBarIconBrightness: Brightness.dark,
            ),
      backgroundColor: AppColors.backgroundLight,
      elevation: 0.0,
      titleSpacing: 0.0,
      iconTheme: const IconThemeData(
        color: AppColors.mainColor,
        size: 16.0,
      ),
      titleTextStyle: const TextStyle(
        color: AppColors.mainColor,
        fontWeight: FontWeight.w500,
        fontSize: 13.0,
        fontFamily: AppStrings.fontFamily,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.backgroundLight,
      elevation: 50.0,
      selectedItemColor: AppColors.mainColor,
      unselectedItemColor: Colors.grey[400],
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(
        height: 1.5,
      ),
    ),
    primarySwatch:
        MaterialColor(int.parse('0xff${AppColors.mainColor.value}'), color),
    colorScheme: const ColorScheme(
      primary: AppColors.mainColor,
      onPrimary: AppColors.mainColor,
      primaryContainer: AppColors.mainColor,
      secondary: AppColors.secondaryLight,
      onSecondary: AppColors.onSecondaryLight,
      secondaryContainer: AppColors.secondaryContainerLight,
      onSecondaryContainer: AppColors.onSecondaryContainerLight,
      tertiary: AppColors.tertiaryLight,
      onTertiary: AppColors.onTertiaryLight,
      surface: AppColors.surfaceLight,
      onSurface: AppColors.onSurfaceLight,
      background: AppColors.backgroundLight,
      onBackground: AppColors.onBackgroundLight,
      error: AppColors.errorLight,
      onError: AppColors.onErrorLight,
      brightness: Brightness.light,
    ),
    textTheme: const TextTheme(
      titleLarge: const TextStyle(
        fontSize: 20.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w400,
        color: AppColors.secondaryLight,
      ),
      titleMedium: const TextStyle(
        fontSize: 16.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w400,
        color: AppColors.secondaryContainerLight,
      ),
      titleSmall: const TextStyle(
        fontSize: 14.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w400,
        color: AppColors.onSecondaryLight,
      ),
      labelLarge: TextStyle(
        fontSize: 20.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w600,
        color: AppColors.backgroundLight,
      ),
      displaySmall: const TextStyle(
        fontSize: 14.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w300,
        color: AppColors.onSecondaryContainerLight,
      ),
      displayMedium: TextStyle(
        fontSize: 16.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
      displayLarge: TextStyle(
        fontSize: 16.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w400,
        color: AppColors.secondaryLight,
      ),
      bodySmall: TextStyle(
        fontSize: 12.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w300,
        color: AppColors.onSecondaryContainerLight,
      ),
      bodyMedium: TextStyle(
        fontSize: 15.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 18.0,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.w500,
        color: AppColors.secondaryLight,
      ),
    ),
  );
}
