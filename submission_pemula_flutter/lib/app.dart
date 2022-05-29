import 'package:flutter/material.dart';

import 'views/main_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Submission 1',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: MainScreen(),
    );
  }
}
