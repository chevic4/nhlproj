import 'package:flutter/material.dart';
import 'package:nhlproj/src/domain/uscases/theme_usecase.dart';
import 'package:nhlproj/src/presentation/screen_states/theme_state.dart';

class ThemeStoreRepositoryImpl implements ThemeStoreRepository {
  @override
  ThemeCustomState state;
  ThemeStoreRepositoryImpl({
    required this.state,
  }) {
    _initStore();
  }

  Future<void> _initStore() async {
    await Future.delayed(const Duration(seconds: 1));
    state.setThemeDark();
  }

  @override
  Future<ThemeData> getTheme() async {
    await Future.delayed(const Duration(seconds: 1));
    return ThemeData.light();
  }

  @override
  Future<void> saveTheme(String nameThemeData) async {
    await Future.delayed(const Duration(seconds: 1));
    print('SAVE! THEME');
  }
}
