
import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/material.dart';

class AppThemes {

  static const int Dark = 0;
  static const int Light = 1;
}
final themeCollection = ThemeCollection(
  themes: {
    AppThemes.Dark: ThemeData.dark(),
    AppThemes.Light: ThemeData.light(),
  },

);