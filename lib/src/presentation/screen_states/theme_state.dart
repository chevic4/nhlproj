import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nhlproj/src/config/themes/theme_change.dart';

class ThemeCustomState extends StateNotifier<ThemeData> {
  ThemeCustomState() : super(ThemeDataChange.light);
  ThemeData get getTheme => state;
  void setThemeLight() => state = ThemeDataChange.light;
  void setThemeDark() {
    state = ThemeDataChange.dark;
  }
}
