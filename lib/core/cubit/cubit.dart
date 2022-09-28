import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/core/cubit/state.dart';

import '../utils/app_colors.dart';
import '../utils/constants.dart';

class AppBloc extends Cubit<AppState> {
  AppBloc() : super(Empty());

  static AppBloc get(context) => BlocProvider.of<AppBloc>(context);

  // late TranslationModel translationModel;

  bool isRtl = false;

  bool isDark = false;

  late ThemeData lightTheme;

  late ThemeData darkTheme;

  late String family;

  void setThemes({
    required bool rtl,
  }) {
    debugPrint('rtl ------------- $rtl');
    isRtl = rtl;

    changeTheme();

    emit(ThemeLoaded());
  }

  void changeDarkMode() {
    isDark = !isDark;

    emit(ThemeChanged());
  }

  void changeTheme() {
    family = isRtl ? 'Cairo' : 'Poppins';

    lightTheme = ThemeData(
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
          size: 19.0,
        ),
        titleTextStyle: TextStyle(
          color: AppColors.mainColor,
          fontWeight: FontWeight.w500,
          fontSize: 13.0,
          fontFamily: family,
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
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 16.0,
          fontFamily: family,
          fontWeight: FontWeight.w600,
          color: AppColors.secondaryLight,
        ),
        titleMedium: TextStyle(
          fontSize: 14.0,
          fontFamily: family,
          fontWeight: FontWeight.w700,
          color: AppColors.secondaryLight,
        ),
        titleSmall: TextStyle(
          fontSize: 12.0,
          fontFamily: family,
          fontWeight: FontWeight.w400,
          color: AppColors.onSecondaryLight,
        ),
        labelLarge: TextStyle(
          fontSize: 20.0,
          fontFamily: family,
          fontWeight: FontWeight.w600,
          color: AppColors.secondaryLight,
        ),
        displaySmall: TextStyle(
          fontSize: 12.0,
          fontFamily: family,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
        displayMedium: TextStyle(
          fontSize: 14.0,
          fontFamily: family,
          fontWeight: FontWeight.w600,
          color: AppColors.onSecondaryContainerLight,
        ),
        displayLarge: TextStyle(
          fontSize: 16.0,
          fontFamily: family,
          fontWeight: FontWeight.w400,
          color: AppColors.secondaryLight,
        ),
        bodySmall: TextStyle(
          fontSize: 12.0,
          fontFamily: family,
          fontWeight: FontWeight.w300,
          color: AppColors.onSecondaryContainerLight,
        ),
        bodyMedium: TextStyle(
          fontSize: 12.0,
          fontFamily: family,
          fontWeight: FontWeight.w600,
          color: AppColors.secondaryLight,
        ),
        bodyLarge: TextStyle(
          fontSize: 18.0,
          fontFamily: family,
          fontWeight: FontWeight.w500,
          color: AppColors.secondaryLight,
        ),
      ),
    );

    darkTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.onBackgroundLight,
      appBarTheme: AppBarTheme(
        systemOverlayStyle: Platform.isIOS
            ? null
            : const SystemUiOverlayStyle(
                statusBarColor: AppColors.mainColor,
                statusBarIconBrightness: Brightness.dark,
              ),
        backgroundColor: AppColors.secondaryLight,
        elevation: 0.0,
        titleSpacing: 0.0,
        iconTheme: const IconThemeData(
          color: AppColors.mainColor,
          size: 16.0,
        ),
        titleTextStyle: TextStyle(
          color: AppColors.mainColor,
          fontWeight: FontWeight.w500,
          fontSize: 13.0,
          fontFamily: family,
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
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 20.0,
          fontFamily: family,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
        titleMedium: TextStyle(
          fontSize: 16.0,
          fontFamily: family,
          fontWeight: FontWeight.w400,
          color: AppColors.secondaryContainerLight,
        ),
        titleSmall: TextStyle(
          fontSize: 14.0,
          fontFamily: family,
          fontWeight: FontWeight.w400,
          color: AppColors.onSecondaryLight,
        ),
        labelLarge: TextStyle(
          fontSize: 20.0,
          fontFamily: family,
          fontWeight: FontWeight.w600,
          color: AppColors.backgroundLight,
        ),
        displaySmall: TextStyle(
          fontSize: 14.0,
          fontFamily: family,
          fontWeight: FontWeight.w300,
          color: AppColors.white,
        ),
        displayMedium: TextStyle(
          fontSize: 16.0,
          fontFamily: family,
          fontWeight: FontWeight.w500,
          color: AppColors.white,
        ),
        displayLarge: TextStyle(
          fontSize: 16.0,
          fontFamily: family,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
        bodySmall: TextStyle(
          fontSize: 12.0,
          fontFamily: family,
          fontWeight: FontWeight.w300,
          color: AppColors.lightBackground,
        ),
        bodyMedium: TextStyle(
          fontSize: 15.0,
          fontFamily: family,
          fontWeight: FontWeight.w500,
          color: AppColors.white,
        ),
        bodyLarge: TextStyle(
          fontSize: 18.0,
          fontFamily: family,
          fontWeight: FontWeight.w500,
          color: AppColors.white,
        ),
      ),
    );
  }

  // void setTranslation({
  //   required String translation,
  // }) {
  //   translationModel = TranslationModel.fromJson(json.decode(
  //     translation,
  //   ));
  //
  //   emit(LanguageLoaded());
  // }

  double pageViewHeight = 0.0;

  set setPageViewHeight(double value) {
    pageViewHeight = value;
    emit(PageViewHeightChanged());
  }

  int? lines = 3;

  set setLines(int? value) {
    lines = value;
    emit(LinesChanged());
  }

  // int currentTabIndex = 0;
  //
  // set setCurrentTabIndex(int value) {
  //   currentTabIndex = value;
  //   emit(CurrentTabIndexChanged());
  // }
}
