import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemes {
  AppThemes._();

  // Input border
  static OutlineInputBorder _inputBorder({
    Color borderColor = const Color(0x56545456),
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(width: 0.5.w, color: borderColor),
      gapPadding: 0,
    );
  }

  // Input decoration theme
  static final _inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 16.w),
    filled: true,
    fillColor: Colors.white,
    hintStyle: _textStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      textColor: const Color(0x4C3C3C43),
    ),
    labelStyle: const TextStyle(color: Colors.black87),
    border: _inputBorder(),
    enabledBorder: _inputBorder(),
    focusedBorder: _inputBorder(borderColor: const Color(0xFFFBB355)),
    errorBorder: _inputBorder(borderColor: Colors.red),
    focusedErrorBorder: _inputBorder(borderColor: const Color(0xFFFBB355)),
    suffixIconColor: Colors.grey,
    disabledBorder: _inputBorder(),
    errorStyle: _textStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      textColor: Colors.red,
    ),
  );

  static TextStyle _textStyle({
    required double fontSize,
    Color? textColor = const Color(0xFF57544A),
    FontWeight? fontWeight,
    double? height,
    double? letterSpacing,
  }) => TextStyle(
    color: textColor,
    fontSize: fontSize,
    fontWeight: fontWeight,
    height: height,
    letterSpacing: letterSpacing,
  );

  // Text theme
  static final TextTheme _textTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 57.sp),
    displayMedium: TextStyle(fontSize: 45.sp),
    displaySmall: TextStyle(fontSize: 36.sp),
    headlineLarge: TextStyle(fontSize: 32.sp),
    headlineMedium: TextStyle(fontSize: 28.sp),
    headlineSmall: TextStyle(fontSize: 24.sp),
    titleLarge: TextStyle(fontSize: 22.sp),
    titleMedium: TextStyle(fontSize: 16.sp),
    titleSmall: TextStyle(fontSize: 14.sp),
    bodyLarge: TextStyle(fontSize: 16.sp),
    bodyMedium: TextStyle(fontSize: 14.sp),
    bodySmall: TextStyle(fontSize: 12.sp),
    labelLarge: TextStyle(fontSize: 14.sp),
    labelMedium: TextStyle(fontSize: 12.sp),
    labelSmall: TextStyle(fontSize: 10.sp),
  ).apply(bodyColor: const Color(0xFF57544A), fontFamily: "Inter");

  // Date picker theme data
  static final DatePickerThemeData _datePickerThemeData = DatePickerThemeData(
    backgroundColor: Colors.white,
    headerBackgroundColor: Colors.white,
    headerForegroundColor: const Color(0xFF57544A),
    // Day foreground
    dayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF57544A);
      }
      return const Color(0xFF57544A);
    }),

    // Day background
    dayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFFFBB355);
      }
      return Colors.transparent;
    }),

    // Today background
    todayBackgroundColor: const WidgetStatePropertyAll(Color(0xFFFBB355)),

    // Today foreground
    todayForegroundColor: const WidgetStatePropertyAll(Colors.white),
    todayBorder: BorderSide.none,

    // Year foreground
    yearForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      }
      return const Color(0xFF57544A);
    }),

    // Year background
    yearBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFFFBB355);
      }
      return Colors.transparent;
    }),

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
    dayStyle: _textStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      textColor: const Color(0xFF57544A),
    ),
    cancelButtonStyle: TextButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.red,
    ),
    confirmButtonStyle: TextButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: const Color(0xFFFBB355),
    ),
  );

  // Appbar icon theme
  static final IconThemeData _appbarIconTheme = IconThemeData(
    color: const Color(0xFFFBB355),
    applyTextScaling: false,
    size: 22.sp,
  );

  // Elevated button theme data
  static final ElevatedButtonThemeData _elevatedButtonThemeData =
      ElevatedButtonThemeData(
        style: ButtonStyle(
          shadowColor: const WidgetStatePropertyAll(Colors.transparent),
          backgroundColor: const WidgetStatePropertyAll(Color(0xFFFBB355)),
          foregroundColor: const WidgetStatePropertyAll(Colors.white),
          elevation: const WidgetStatePropertyAll(0.0),
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
          ),
          alignment: Alignment.center,
          visualDensity: VisualDensity.compact,
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      );

  // App bar theme
  static final AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: Colors.white,
    titleTextStyle: _textStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      height: 24 / 14,
      letterSpacing: 0.5,
      textColor: const Color(0xFF57544A),
    ),
    centerTitle: true,
    iconTheme: _appbarIconTheme,
    foregroundColor: const Color(0xFF57544A),
    surfaceTintColor: Colors.white,
    actionsIconTheme: _appbarIconTheme,
    elevation: 0,
  );

  /*
    ==================== LIGHT THEME ====================
  */

  static final lightTheme = ThemeData(
    // Brightness
    brightness: Brightness.light,

    // Scaffold background
    scaffoldBackgroundColor: Colors.white,

    // Primary and secondary color
    colorScheme: const ColorScheme.light(primary: Color(0xFFFBB355)),

    // App theme
    appBarTheme: _appBarTheme,

    // Input decoration theme
    inputDecorationTheme: _inputDecorationTheme,

    // Font family
    fontFamily: 'Inter',

    // Selection text theme
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: const Color(0xFFFBB355),
      selectionColor: const Color(0xFFFBB355).withValues(alpha: 0.3),
      selectionHandleColor: const Color(0xFFFBB355).withValues(alpha: 0.3),
    ),

    // Text theme
    textTheme: _textTheme,

    // Date picker theme data
    datePickerTheme: _datePickerThemeData,

    // Elevated button theme
    elevatedButtonTheme: _elevatedButtonThemeData,

    // Divider
    dividerColor: Colors.grey,
  );
}
