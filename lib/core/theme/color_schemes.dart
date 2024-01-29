import 'package:tut/core/core.dart';
import 'package:tut/core/theme/colors_schemes/blue_scheme.dart';
import 'package:tut/core/theme/colors_schemes/deep_purple_scheme.dart';
import 'package:tut/core/theme/colors_schemes/default_scheme.dart';
import 'package:tut/core/theme/colors_schemes/green_scheme.dart';
import 'package:tut/core/theme/colors_schemes/pink_scheme.dart';
import 'package:tut/core/theme/colors_schemes/purple_scheme.dart';
import 'package:tut/core/theme/colors_schemes/red_scheme.dart';
import 'package:tut/core/theme/colors_schemes/teal_scheme.dart';
import 'package:tut/core/theme/colors_schemes/white_scheme.dart';
import 'package:tut/core/theme/colors_schemes/yellow_scheme.dart';

final Map<ThemeSchemeColors, ThemeScheme> colorSchemes = {
  ThemeSchemeColors.defaultColor: defaultScheme,
  ThemeSchemeColors.red: redScheme,
  ThemeSchemeColors.blue: blueScheme,
  ThemeSchemeColors.pink: pinkScheme,
  ThemeSchemeColors.purple: purpleScheme,
  ThemeSchemeColors.deepPurple: deepPurpleScheme,
  ThemeSchemeColors.green: greenScheme,
  ThemeSchemeColors.teal: tealScheme,
  ThemeSchemeColors.yellow: yellowScheme,
  ThemeSchemeColors.white: whiteScheme,
};

ThemeScheme getThemeScheme(ThemeSchemeColors themeScheme) {
  return colorSchemes[themeScheme] ?? defaultScheme;
}
