
import 'package:flutter/material.dart';

class SwitchThemeButton extends StatefulWidget {
  @override
  _SwitchThemeButtonState createState() => _SwitchThemeButtonState();
}

class _SwitchThemeButtonState extends State<SwitchThemeButton> {
  bool _isDarkThemed = false;
  ThemeData _themeState = ThemeData.light();

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.deepOrange,
      child: IconButton(
          icon: Icon(_isDarkThemed ? Icons.light_mode : Icons.dark_mode),
          onPressed: () {
            setState(
                  () {
                _isDarkThemed = !_isDarkThemed;
                _isDarkThemed
                    ? _themeState = ThemeData.dark()
                    : _themeState = ThemeData.light();
              },
            );
          }),
    );
  }
}