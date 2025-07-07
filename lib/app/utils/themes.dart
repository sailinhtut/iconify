import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const primaryColor = Colors.black;
const backgroundColor = Color(0xfff1f1f1);
const appBarColor = Color(0xffe5e5e5);
const textColor = Color(0xff333333);

class FlutconsTheme {
  static ThemeData lightTheme = ThemeData(
      primarySwatch: Colors.blue,
      useMaterial3: true,
      cardTheme:const CardTheme(surfaceTintColor: Colors.transparent),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: OpenUpwardsPageTransitionsBuilder()
      }),
      scaffoldBackgroundColor: const Color(0xfff1f1f1),
      cardColor: Colors.white,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark)),
      bottomNavigationBarTheme:
          const BottomNavigationBarThemeData(backgroundColor: appBarColor),
      textTheme: const TextTheme()
          .apply(displayColor: textColor, bodyColor: textColor));
}
