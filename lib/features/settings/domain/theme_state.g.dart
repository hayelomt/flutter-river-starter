// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeStateImpl _$$ThemeStateImplFromJson(Map<String, dynamic> json) =>
    _$ThemeStateImpl(
      mode: $enumDecode(_$ThemeModeEnumMap, json['mode']),
      colorScheme: $enumDecode(_$ThemeSchemeColorsEnumMap, json['colorScheme']),
    );

Map<String, dynamic> _$$ThemeStateImplToJson(_$ThemeStateImpl instance) =>
    <String, dynamic>{
      'mode': _$ThemeModeEnumMap[instance.mode]!,
      'colorScheme': _$ThemeSchemeColorsEnumMap[instance.colorScheme]!,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

const _$ThemeSchemeColorsEnumMap = {
  ThemeSchemeColors.defaultColor: 'defaultColor',
  ThemeSchemeColors.red: 'red',
  ThemeSchemeColors.blue: 'blue',
  ThemeSchemeColors.pink: 'pink',
  ThemeSchemeColors.purple: 'purple',
  ThemeSchemeColors.deepPurple: 'deepPurple',
  ThemeSchemeColors.green: 'green',
  ThemeSchemeColors.teal: 'teal',
  ThemeSchemeColors.yellow: 'yellow',
  ThemeSchemeColors.orange: 'orange',
  ThemeSchemeColors.white: 'white',
};
