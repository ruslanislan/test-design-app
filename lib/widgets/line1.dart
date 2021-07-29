import 'package:flutter/material.dart';
import 'package:test_design_app/constants/constants.dart';

import 'custom_icon_button.dart';

class Line1 extends StatelessWidget {
  const Line1({Key? key, required this.text, this.selected = false})
      : super(key: key);
  final String text;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: (15 * width) / layoutWidth),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular((10 * width) / layoutWidth),
        color: Color(0xFFFFFFFF),
      ),
      width: (345 * width) / layoutWidth,
      height: (44 * height) / layoutHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Align(
              child: Text(
                text,
                style: TextStyle(fontSize: (15 * height) / layoutHeight),
              ),
            ),
          ),
          CustomIconButton(
            color: selected ? Color(0xFF3F8AE0) : Color(0xFF8E8E93),
              asset: selected
                  ? 'assets/svg/checked.svg'
                  : 'assets/svg/unchecked.svg'),
        ],
      ),
    );
  }
}
