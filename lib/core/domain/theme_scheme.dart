import 'package:flutter/material.dart';

enum ThemeSchemeColors {
  defaultColor,
  red,
  blue,
  pink,
  purple,
  deepPurple,
  green,
  teal,
  yellow,
  orange,
  white,
}

class ThemeScheme {
  final ColorScheme light;
  final ColorScheme dark;
  final String label;

  const ThemeScheme({
    required this.light,
    required this.dark,
    required this.label,
  });
}
