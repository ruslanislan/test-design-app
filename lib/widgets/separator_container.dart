import 'package:flutter/material.dart';
import 'package:test_design_app/constants/constants.dart';

class SeparatorContainer extends StatelessWidget {
  const SeparatorContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
        height: (20 * height) / layoutHeight,
        width: width,
        //color: Colors.white,
        child: Divider(
          height: (0.5 * height) / layoutHeight,
          color: Color(0xFFDDDDDD),
        ));
  }
}
