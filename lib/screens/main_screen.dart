import 'package:flutter/material.dart';
import 'package:test_design_app/screens/settings_build_screen.dart';
import 'package:test_design_app/widgets/tapbar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SettingsBuildScreen(),
          Positioned(bottom: 0, left: 0, child: TapBar()),
        ],
      ),
    );
  }
}
