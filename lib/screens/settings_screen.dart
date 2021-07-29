import 'package:flutter/material.dart';
import 'package:test_design_app/constants/constants.dart';
import 'package:test_design_app/screens/settings_build_screen.dart';
import 'package:test_design_app/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          color: Color(0xFFF2F2F7),
        ),
        Column(
          children: [
            NavBar(
              text: 'Settings',
              dWidth: (375 * width) / layoutWidth,
              dHeight: (87 * height) / layoutHeight,
            ),
            _BodyContainer(
              dWidth: (375 * width) / layoutWidth,
              dHeight: (460 * height) / layoutHeight,
            ),
          ],
        ),
      ],
    );
  }
}


class _BodyContainer extends StatelessWidget {
  const _BodyContainer({Key? key, this.dWidth, this.dHeight}) : super(key: key);
  final dWidth;
  final dHeight;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      //color: Colors.green,
      width: dWidth ?? width,
      height: dHeight ?? 460,
      padding: EdgeInsets.symmetric(horizontal: (15 * width) / layoutWidth, vertical: (20 * height) / layoutHeight),
      child: Column(
        children: [
          Line3(
            dHeight: (72 * height) / layoutHeight,
          ),
          SeparatorContainer(),
          Line2(text: 'Blocked users',onTap: (){},),
          Line2(text: 'Language', tempText: 'English', onTap: () {},),
          Line2(text: 'Measures', onTap: (){
            index.value = 1;
          },),
          Line2(text: 'Clean cache', tempText: '64 kb', iconButton: false, onTap: (){},),
          SeparatorContainer(),
          Line2(text: 'Share app', onTap: (){},),
          Line2(text: 'Support',onTap: (){},),
          Line2(text: 'Log out', iconButton: false, onTap: (){},),
        ],
      ),
    );
  }
}
