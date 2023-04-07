import 'package:nhlproj/src/domain/repository/theme_repository_interface.dart';
import 'package:nhlproj/src/presentation/screen_states/theme_state.dart';
import 'package:nhlproj/src/utils/const/themes_const.dart';

class ThemeCustomUsesCases {
  ThemeCustomState themeState;
  ThemeStoreRepository themeStore;
  ThemeCustomUsesCases({
    required this.themeState,
    required this.themeStore,
  });

  void setLightTheme() {
    themeState.setThemeLight();
    themeStore.saveTheme(storeLightTheme);
  }

  void setDarkTheme() {
    themeState.setThemeDark();
    themeStore.saveTheme(storeDarkTheme);
  }
}
