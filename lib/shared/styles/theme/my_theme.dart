import 'package:coffee_ui/shared/styles/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightTheme() => ThemeData(
  fontFamily: 'Poppins',
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.cyan,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    )
  )
);

ThemeData darkTheme() => ThemeData(
  fontFamily: 'Poppins',
  brightness: Brightness.dark,
  primarySwatch: Colors.orange,
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.grey[900],
  appBarTheme: AppBarTheme(
    color: Colors.grey[900],
    elevation: 0,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.grey,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    )
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.orange,
  )
);