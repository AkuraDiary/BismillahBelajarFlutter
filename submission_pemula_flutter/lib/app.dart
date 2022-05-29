import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/material.dart';
import 'package:submission_pemula_flutter/views/themes_config.dart';

import 'views/main_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      themeCollection: themeCollection,
      builder:(context, theme) {
       return MaterialApp(
          title: 'Submission 1',
          theme: theme,
          home: MainScreen(),
        );
      }
    );
      }
  }

