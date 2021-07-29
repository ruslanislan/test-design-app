import 'package:flutter/material.dart';
import 'package:test_design_app/screens/measures_screen.dart';
import 'package:test_design_app/screens/settings_screen.dart';

ValueNotifier<int> index = ValueNotifier(0);

class SettingsBuildScreen extends StatelessWidget {
  const SettingsBuildScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: index,
      builder: (BuildContext context, int value, Widget? child) {
        if (value == 0) return SettingsScreen();
        if (value == 1) return MeasuresScreen();
        return Container();
      },
    );
  }
}
