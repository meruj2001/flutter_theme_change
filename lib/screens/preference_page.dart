import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_theme_changing/blocs/theme/theme_bloc.dart';
import 'package:flutter_theme_changing/theme/app_themes.dart';

import '../blocs/theme/theme_event.dart';

class PreferencePage extends StatelessWidget {
  const PreferencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Themes"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemBuilder: _buildButtons,
        itemCount: AppTheme.values.length,
      ),
    );
  }

  Widget _buildButtons(context, index) {
    final themeValue = AppTheme.values[index];
    final theme = appThemes[themeValue];
    return Theme(
      data: theme ?? ThemeData(),
      child: ElevatedButton(
        child: Text(themeValue.toString()),
        onPressed: () {
          BlocProvider.of<ThemeBloc>(context)
              .add(ChangeTheme(theme: themeValue));
        },
      ),
    );
  }
}
