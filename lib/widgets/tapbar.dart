import 'package:flutter/material.dart';
import 'package:test_design_app/constants/constants.dart';
import 'package:test_design_app/widgets/custom_icon_button.dart';

class TapBar extends StatelessWidget {
  const TapBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: (375 * width) / layoutWidth,
      height: (82 * height) / layoutHeight,
      color: Color(0xFFF9F9F9),
      child: Column(
        children: [
          Container(
            width: (375 * width) / layoutWidth,
            height: (48 * height) / layoutHeight,
            //color: Colors.pinkAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TapBarItem(
                  asset: 'assets/svg/post.svg',
                  selected: true,
                ),
                TapBarItem(
                  asset: 'assets/svg/people.svg',
                ),
                TapBarItem(asset: 'assets/svg/chat.svg'),
                TapBarItem(asset: 'assets/svg/settings.svg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TapBarItem extends StatelessWidget {
  const TapBarItem({Key? key, this.selected = false, required this.asset})
      : super(key: key);
  final bool selected;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomIconButton(
        asset: asset,
        color: selected ? Color(0xFF3F8AE0) : Color(0xFF8E8E93),
      ),
    );
  }
}
