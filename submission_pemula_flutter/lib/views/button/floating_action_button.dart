
import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/material.dart';

import '../themes_config.dart';


class SwitchThemeButton extends StatefulWidget {
  @override
  _SwitchThemeButtonState createState() => _SwitchThemeButtonState();
}

class _SwitchThemeButtonState extends State<SwitchThemeButton> {
  bool _isDarkThemed = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 30,
      backgroundColor: Colors.deepOrange,
      child: IconButton(
          icon: Icon(_isDarkThemed ? Icons.light_mode : Icons.dark_mode , color: Colors.white,),
          onPressed: () {
            setState(
                  () {
                _isDarkThemed = !_isDarkThemed;
                _isDarkThemed? DynamicTheme.of(context)?.setTheme(AppThemes.Dark) : DynamicTheme.of(context)?.setTheme(AppThemes.Light);
              },
            );
          }),
    );
  }
}