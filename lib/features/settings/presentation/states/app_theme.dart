import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tut/core/core.dart';
import 'package:tut/features/settings/domain/theme_state.dart';

part 'app_theme.g.dart';

@riverpod
class AppTheme extends _$AppTheme {
  @override
  ThemeState build() {
    final localStorage = ref.read(localStorageProvider);
    final theme = localStorage.read(PrefKeys.appTheme);

    return theme != null ? ThemeState.fromJson(jsonDecode(theme)) : ThemeState.defaultTheme();
  }

  _saveState() {
    final localStorage = ref.read(localStorageProvider);
    localStorage.save(PrefKeys.appTheme, jsonEncode(state.toJson()));
  }

  toggleThemeMode(ThemeMode themeMode) {
    state = state.copyWith(mode: themeMode);
    _saveState();
  }

  toggleScheme(ThemeSchemeColors scheme) {
    state = state.copyWith(colorScheme: scheme);
    _saveState();
  }
}
