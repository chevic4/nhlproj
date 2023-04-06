import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nhlproj/src/presentation/screen_states/theme_state.dart';

final themeCustomStateProvider =
    StateNotifierProvider<ThemeCustomState, ThemeData>((ref) {
  return ThemeCustomState();
});

// final themeCustomStateProvider = Provider<ThemeCustomState>((ref) {
//   return ThemeCustomState();
// });

/// controller main screen
// final controllerMainScreenProvider = Provider<ControllerMainScreen>((ref) {
//   final themeData = ref.watch(themeCustomStateProvider);
//   return ControllerMainScreen(stateCustomTheme: themeData);
// });

