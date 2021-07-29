import 'package:flutter/material.dart';
import 'package:test_design_app/constants/constants.dart';
import 'package:test_design_app/widgets/custom_icon_button.dart';

class NavBar extends StatelessWidget {
  const NavBar(
      {Key? key,
      this.dWidth,
      this.dHeight,
      this.tempButton = false,
      required this.text,
      this.onTap})
      : super(key: key);
  final dWidth;
  final dHeight;
  final bool tempButton;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: (15 * width) / layoutWidth),
      width: dWidth ?? width,
      height: dHeight ?? 87,
      //color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(),
          Container(
            height: (28 * height) / layoutHeight,
            child: Row(
              children: [
                if (onTap != null)
                  CustomIconButton(asset: 'assets/svg/back.svg', onTap: onTap,),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: (15 * width) / layoutWidth),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: (24 * height) / layoutHeight),
                  ),
                ),
                Spacer(),
                if (tempButton)
                  InkWell(
                    onTap: () {
                      print('tappedp');
                    },
                    child: Container(
                      //color: Colors.green,
                      child: Text(
                        'Button',
                        style: TextStyle(
                          fontSize: (18 * height) / layoutHeight,
                          color: Color(0xFF3F8AE0),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
