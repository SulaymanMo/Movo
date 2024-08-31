import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:movo/core/helper/colory.dart';

ThemeData darkTheme(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.dark(primary: Colory.yellow.color),
    appBarTheme: AppBarTheme(
      titleSpacing: 0,
      actionsIconTheme: IconThemeData(
        size: 20.sp,
        color: Colors.white70,
      ),
      titleTextStyle: TextStyle(
        fontSize: 16.sp,
        color: Colors.white70,
        fontWeight: FontWeight.w500,
      ),
      iconTheme: IconThemeData(
        size: 20.sp,
        color: Colors.white70,
      ),
    ),
    tabBarTheme: TabBarTheme(
      dividerColor: Colors.transparent,
      indicatorColor: Colory.yellow.color,
      labelStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelColor: Colors.white70,
    ),
    textTheme: TextTheme(
      // ! Headline
      headlineLarge: TextStyle(
        fontSize: 19.sp,
        fontWeight: FontWeight.bold,
        color: Colory.yellow.color,
      ),
      headlineMedium: TextStyle(
        height: 0,
        fontSize: 19.sp,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        // height: 1.2.sp,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      // ! Title
      // titleLarge: TextStyle(
      //   height: 1.2.sp,
      //   fontSize: 19.sp,
      //   fontWeight: FontWeight.bold,
      // ),
      titleMedium: TextStyle(
        height: 0,
        fontSize: 13.sp,
      ),
      titleSmall: TextStyle(
        height: 0,
        fontSize: 11.sp,
        fontWeight: FontWeight.normal,
      ),
      // ! Body
      bodyLarge: TextStyle(
        fontSize: 14.sp,
        // fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontSize: 12.sp,
        color: Colors.white70,
      ),
      // ! Label, variant colors.
      labelLarge: TextStyle(
        fontSize: 11.sp,
        color: Colors.white70,
        fontWeight: FontWeight.w400,
      ),
      labelMedium: TextStyle(
        fontSize: 11.sp,
        color: Colory.blue.color,
      ),
      labelSmall: TextStyle(
        fontSize: 10.sp,
        color: Colors.white70,
        fontWeight: FontWeight.w400,
      ),
    ),
    // outlinedButtonTheme: OutlinedButtonThemeData(
    // style: ButtonStyle(
    //   textStyle: MaterialStateTextStyle.resolveWith(
    //     (states) => TextStyle(
    //       fontSize: 10.sp,
    //       letterSpacing: 0.8,
    //       color: Colors.white,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    //   fixedSize: MaterialStateProperty.all(Size(30.w, 8.h)),
    // ),
    // ),
    // textButtonTheme: TextButtonThemeData(
    //   style: ButtonStyle(
    //     foregroundColor: MaterialStateProperty.all(Colors.green)
    //   )
    // ),
    switchTheme: SwitchThemeData(
      // thumbIcon: MaterialStatePropertyAll(
      //   Icon(
      //     size: 14.sp,
      //     Icons.dark_mode,
      //     color: Colory.yellow.color,
      //   ),
      // ),
      thumbColor: WidgetStateColor.resolveWith(
        (states) => Colory.dark.color,
      ),
      trackOutlineColor: WidgetStateColor.resolveWith(
        (states) => Colory.dark.color,
      ),
      trackColor: WidgetStateColor.resolveWith(
        (states) => Colory.yellow.color,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: false,
      // backgroundColor: Colors.white12,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 10.sp,
        color: Colors.white70,
      ),
      selectedIconTheme: IconThemeData(
        size: 20.sp,
        color: Colory.yellow.color,
      ),
      unselectedIconTheme: IconThemeData(size: 20.sp),
      selectedItemColor: Colory.yellow.color,
    ),
    listTileTheme: ListTileThemeData(
      titleTextStyle: TextStyle(
        fontSize: 13.sp,
        fontWeight: FontWeight.w500,
        color: Colory.light.color,
      ),
      subtitleTextStyle: TextStyle(
        fontSize: 11.sp,
        color: Colory.greyDark.color,
      ),
      iconColor: Colory.greyDark.color,
    ),
    iconTheme: IconThemeData(
      size: 19.sp,
      color: Colory.yellow.color,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(
          // ! Error when remove this property.
          inherit: false,
          fontSize: 10.sp,
        ),
        foregroundColor: Colory.blue.color,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colory.blue.color,
        textStyle: TextStyle(
          // ! Error when remove this property.
          inherit: false,
          fontSize: 11.sp,
          letterSpacing: 0.8,
        ),
        side: BorderSide(color: Colors.white38, width: 1.sp),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        textStyle: TextStyle(
          inherit: false,
          fontSize: 11.sp,
          fontWeight: FontWeight.w600,
        ),
        backgroundColor: Colory.yellow.color,
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        iconSize: 20.sp,
        foregroundColor: Colory.yellow.color,
      ),
    ),
  );
}
