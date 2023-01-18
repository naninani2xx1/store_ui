import 'package:flutter/material.dart';
import 'package:store_ui/config/colors.dart';

ThemeData appTheme = ThemeData(
  primaryColor: primaryColor,
  brightness: Brightness.light,
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 0.0,
    iconTheme: IconThemeData(
      size: 18.0,
      color: Colors.black87,
    ),
    toolbarTextStyle: TextStyle(
      color: Colors.black87,
      fontSize: 20.0,
    ),
  ),
  scaffoldBackgroundColor: scaffoldBackgroundColor,
);
