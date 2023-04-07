import 'package:flutter/material.dart';
import 'package:nhlproj/src/domain/repository/theme_repository_interface.dart';
import 'package:nhlproj/src/presentation/screen_states/theme_state.dart';
import 'package:nhlproj/src/utils/const/themes_const.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeStoreRepositoryImpl implements ThemeStoreRepository {
  final _sharedPref = SharedPreferences.getInstance();
  @override
  ThemeCustomState state;
  ThemeStoreRepositoryImpl({
    required this.state,
  }) {
    _initStore();
  }

  Future<void> _initStore() async {
    final SharedPreferences store = await _sharedPref;
    final res = store.getString('storePreferencesNmae');
    if (res == null) {
      state.setThemeLight();
    } else {
      switch (res) {
        case storeLightTheme:
          state.setThemeLight();
          break;
        case storeDarkTheme:
          state.setThemeDark();
          break;
        default:
          state.setThemeLight();
      }
    }
  }

  @override
  Future<ThemeData> getTheme() async {
    return state.getTheme;
  }

  @override
  Future<void> saveTheme(String nameThemeData) async {
    final SharedPreferences store = await _sharedPref;
    store.setString('storePreferencesNmae', nameThemeData);
  }
}
