import 'package:flutter/material.dart';

import '../screens/home_page.dart';
import '../screens/preference_page.dart';

class AppRouter {
  Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/preference':
        return MaterialPageRoute(builder: (_) => const PreferencePage());
      default:
        return null;
    }
  }
}
