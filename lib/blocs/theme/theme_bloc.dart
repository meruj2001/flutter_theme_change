import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_theme_changing/blocs/theme/theme_event.dart';
import 'package:flutter_theme_changing/blocs/theme/theme_state.dart';
import 'package:flutter_theme_changing/data/cache/preferences_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../theme/app_themes.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(
            theme:
                appThemes[PreferencesManager.getThemeValue()] ?? ThemeData())) {
    on<ThemeEvent>((event, emit) async {
      if (event is ChangeTheme) {
        PreferencesManager.setThemeValue(event.theme);
        emit(ThemeState(theme: appThemes[event.theme] ?? ThemeData()));
      }
    });
  }
}
