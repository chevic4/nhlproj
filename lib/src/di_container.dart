import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nhlproj/src/data/repository/theme_repository_impl.dart';
import 'package:nhlproj/src/domain/repository/theme_repository_interface.dart';
import 'package:nhlproj/src/domain/uscases/theme_usecase.dart';
import 'package:nhlproj/src/presentation/screen_states/theme_state.dart';

// стейт темы

final themeCustomStateProvider =
    StateNotifierProvider<ThemeCustomState, ThemeData>((ref) {
  return ThemeCustomState();
});

// хранилище темы

final themeCustomStoreProvider = Provider<ThemeStoreRepository>((ref) {
  final state = ref.read(themeCustomStateProvider.notifier);
  return ThemeStoreRepositoryImpl(state: state);
});
final themeCustomControllerProvider = Provider(
  (ref) {
    final state = ref.watch(themeCustomStateProvider.notifier);
    final themeStore = ref.watch(themeCustomStoreProvider);
    return ThemeCustomUsesCases(themeState: state, themeStore: themeStore);
  },
);
