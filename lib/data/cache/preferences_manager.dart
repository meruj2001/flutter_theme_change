// ignore_for_file: constant_identifier_names

import 'package:flutter_theme_changing/theme/app_themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesManager {
  static late SharedPreferences _pref;

  // keys
  static const THEME_VALUE = "theme_value";

  static Future<void> initPreferences() async {
    _pref = await SharedPreferences.getInstance();
  }

  static void setThemeValue(AppTheme theme) {
    _pref.setInt(THEME_VALUE, theme.index);
  }

  static AppTheme getThemeValue() {
    final index = _pref.getInt(THEME_VALUE) ?? 0;
    return themeValueFromInt(index);
  }
}
