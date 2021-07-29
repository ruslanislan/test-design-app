import 'package:flutter/material.dart';
import 'package:test_design_app/constants/constants.dart';
import 'package:test_design_app/widgets/custom_icon_button.dart';

class Line3 extends StatelessWidget {
  const Line3({Key? key, this.dHeight}) : super(key: key);
  final dHeight;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      //color: Colors.white,
      height: dHeight ?? 72,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: (2 * width) / layoutWidth),
            height: (56 * height) / layoutHeight,
            width: (312 * width) / layoutWidth,
            //color: Colors.purple,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Image.asset('assets/png/avatar.png'),
                ),
                Container(
                  width: (246 * width) / layoutWidth,
                  height: (42 * height) / layoutHeight,
                  //color: Colors.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'rustamivanov',
                        style:
                            TextStyle(fontSize: (15 * height) / layoutHeight),
                      ),
                      Text(
                        'Moscow, Russia',
                        style: TextStyle(
                            fontSize: (15 * height) / layoutHeight,
                            color: Color(0xFF8E8E93)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          CustomIconButton(
            asset: 'assets/svg/show chevron.svg',
          ),
        ],
      ),
    );
  }
}
