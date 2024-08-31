import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:movo/core/helper/colory.dart';

ThemeData lightTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(primary: Colory.yellow.color),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        size: 20.sp,
      ),
    ),
    tabBarTheme: TabBarTheme(
      dividerColor: Colors.transparent,
      labelStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelColor: Colory.light.color,
      unselectedLabelStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 12.sp,
        letterSpacing: 1,
        color: Colory.greyDark.color,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        fontSize: 10.sp,
        letterSpacing: 1,
        color: Colory.blue.color,
        fontWeight: FontWeight.bold,
        decorationColor: Colory.yellow.color,
      ),
    ),
    switchTheme: SwitchThemeData(
      // thumbIcon: MaterialStatePropertyAll(
      //   Icon(
      //     size: 14.sp,
      //     Icons.dark_mode,
      //     color: Colory.dark.color,
      //   ),
      // ),
      thumbColor: WidgetStateColor.resolveWith(
        (states) => Colory.yellow.color,
      ),
      trackOutlineColor: WidgetStateColor.resolveWith(
        (states) => Colory.greyLight.color,
      ),
      trackColor: WidgetStateColor.resolveWith(
        (states) => Colory.light.color,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        fontSize: 10.sp,
        letterSpacing: 1,
        fontWeight: FontWeight.w800,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 10.sp,
        letterSpacing: 1,
      ),
      selectedIconTheme: IconThemeData(size: 20.sp),
      unselectedIconTheme: IconThemeData(size: 20.sp),
      selectedItemColor: Colory.dark.color,
    ),
    listTileTheme: ListTileThemeData(
      titleTextStyle: TextStyle(
        fontSize: 13.sp,
        color: Colory.dark.color,
        fontWeight: FontWeight.w500,
      ),
      subtitleTextStyle: TextStyle(
        fontSize: 11.sp,
        color: Colory.greyLight.color,
      ),
      iconColor: Colory.greyLight.color,
    ),
    iconTheme: IconThemeData(
      size: 20.sp,
      color: Colory.greyLight.color,
    ),
  );
}
