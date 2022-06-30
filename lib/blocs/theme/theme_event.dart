import 'package:equatable/equatable.dart';

import '../../theme/app_themes.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ChangeTheme extends ThemeEvent {
  final AppTheme theme;

  ChangeTheme({required this.theme});

  @override
  List<Object> get props => [theme];
}
