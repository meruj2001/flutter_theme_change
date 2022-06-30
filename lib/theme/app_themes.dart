import 'package:flutter/material.dart';

enum AppTheme { GreenLight, GreenDark, BlueLigth, BlueDark }

AppTheme themeValueFromInt(int value) => AppTheme.values[value];


final appThemes = {
  AppTheme.GreenLight: ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.lightGreen,
    primaryColor: Colors.lightGreen,
  ),
  AppTheme.GreenDark: ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.green,
    primaryColor: Colors.green,
  ),
  AppTheme.BlueLigth: ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.lightBlue,
    primaryColor: Colors.lightBlue,
  ),
  AppTheme.BlueDark: ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    primaryColor: Colors.blue,
  ),
};
