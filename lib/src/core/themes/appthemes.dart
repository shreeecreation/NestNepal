import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appcolors.dart';
import 'appstyles.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primary,

    textTheme: GoogleFonts.robotoTextTheme(),
    useMaterial3: true,
    // brightness: Brightness.dark,
    fontFamily: GoogleFonts.lato().fontFamily,
    colorScheme: ColorScheme.fromSeed(brightness: Brightness.dark, seedColor: AppColors.primary, primary: AppColors.primary),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.scaffoldBackground,
      surfaceTintColor: AppColors.scaffoldBackground,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarContrastEnforced: true,
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      labelPadding: EdgeInsets.symmetric(horizontal: 20.w),
      labelStyle: AppStyles.text14PxBold,
      labelColor: AppColors.textDark,
      unselectedLabelColor: AppColors.textLight,
      overlayColor: MaterialStateProperty.all(AppColors.transparent),
      unselectedLabelStyle: AppStyles.text14PxBold,
    ),
    splashColor: AppColors.white,
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w).copyWith(bottom: 20.h),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r), borderSide: BorderSide.none),
      filled: true,
      hintStyle: AppStyles.text16Px,
      fillColor: AppColors.white,
      constraints: BoxConstraints(
        minHeight: 48.h,
        maxWidth: double.infinity,
        minWidth: double.infinity,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
    ),
  );

  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    textTheme: GoogleFonts.robotoTextTheme(),
    useMaterial3: true,
    fontFamily: GoogleFonts.lato().fontFamily,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary, primary: AppColors.primary),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.scaffoldBackground,
      surfaceTintColor: AppColors.scaffoldBackground,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarContrastEnforced: true,
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      labelPadding: EdgeInsets.symmetric(horizontal: 20.w),
      labelStyle: AppStyles.text14PxBold,
      labelColor: AppColors.textDark,
      unselectedLabelColor: AppColors.textLight,
      overlayColor: MaterialStateProperty.all(AppColors.transparent),
      unselectedLabelStyle: AppStyles.text14PxBold,
    ),
    splashColor: AppColors.white,
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w).copyWith(bottom: 20.h),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r), borderSide: BorderSide.none),
      filled: true,
      hintStyle: AppStyles.text16Px,
      fillColor: AppColors.white,
      constraints: BoxConstraints(
        minHeight: 48.h,
        maxWidth: double.infinity,
        minWidth: double.infinity,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.r),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
