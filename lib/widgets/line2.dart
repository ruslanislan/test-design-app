import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_design_app/constants/constants.dart';
import 'package:test_design_app/widgets/custom_icon_button.dart';

class Line2 extends StatelessWidget {
  const Line2(
      {Key? key, required this.text, this.tempText, this.iconButton = true, this.onTap})
      : super(key: key);
  final String text;
  final String? tempText;
  final bool iconButton;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      //color: Colors.orangeAccent,
      height: (44 * height) / layoutHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: (192 * width) / layoutWidth,
            height: (28 * height) / layoutHeight,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: TextStyle(fontSize: (15 * height) / layoutHeight),
              ),
            ),
          ),
          Container(
              child: Row(
            children: [
              if (tempText != null)
                Container(
                  width: (115 * width) / layoutWidth,
                  height: (28 * height) / layoutHeight,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      tempText!,
                      style: TextStyle(
                          fontSize: (15 * height) / layoutHeight,
                          color: Color(0xFF8E8E93)),
                    ),
                  ),
                ),
              if (iconButton)
                CustomIconButton(asset: 'assets/svg/show chevron.svg', onTap: onTap,),
            ],
          ))
        ],
      ),
    );
  }
}
