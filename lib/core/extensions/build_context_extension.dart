import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextX on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  Size get size => MediaQuery.of(this).size;

  double get width => size.width;

  double get height => size.height;

  AppLocalizations get tr => AppLocalizations.of(this)!;
}
