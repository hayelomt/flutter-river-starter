import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tut/core/core.dart';

part 'theme_state.freezed.dart';
part 'theme_state.g.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    required ThemeMode mode,
    required ThemeSchemeColors colorScheme,
  }) = _ThemeState;

  factory ThemeState.fromJson(Map<String, Object?> json) => _$ThemeStateFromJson(json);

  factory ThemeState.defaultTheme() => const ThemeState(
        mode: ThemeMode.system,
        colorScheme: ThemeSchemeColors.defaultColor,
      );
}
