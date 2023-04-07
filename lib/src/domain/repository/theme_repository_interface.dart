import 'package:flutter/material.dart';
import 'package:nhlproj/src/presentation/screen_states/theme_state.dart';

abstract class ThemeStoreRepository {
  ThemeCustomState state;
  ThemeStoreRepository({
    required this.state,
  }) {
    _initStore();
  }
  Future<void> _initStore();
  Future<ThemeData> getTheme() async {
    return ThemeData();
  }

  Future<void> saveTheme(String nameThemeData) async {}
}
