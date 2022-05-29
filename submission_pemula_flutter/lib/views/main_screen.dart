import 'package:flutter/material.dart';
import 'package:submission_pemula_flutter/views/button/floating_action_button.dart';

import 'package:submission_pemula_flutter/views/home/home_desktop.dart';
import 'package:submission_pemula_flutter/views/home/home_mobile.dart';
import 'package:submission_pemula_flutter/views/home/home_tablet.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SwitchThemeButton(),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return HomeMobileLayout();
            } else if (constraints.maxWidth <= 1200) {
              return HomeTabletLayout();
            } else {
              return HomeDesktopLayout();
        }
      }),
    );
  }
}
