import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_theme_changing/data/cache/preferences_manager.dart';
import 'package:flutter_theme_changing/routes/app_router.dart';

import 'blocs/theme/theme_bloc.dart';
import 'blocs/theme/theme_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferencesManager.initPreferences();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _router = AppRouter();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: _buildWithTheme,
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: state.theme,
      onGenerateRoute: _router.onGenerateRoutes,
    );
  }
}
