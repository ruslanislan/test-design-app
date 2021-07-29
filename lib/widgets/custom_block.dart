import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_design_app/constants/constants.dart';
import 'package:test_design_app/widgets/line1.dart';

class CustomBlock extends StatelessWidget {
  const CustomBlock({Key? key, required this.title, required this.text1, required this.text2, this.selected}) : super(key: key);
  final String title;
  final String text1;
  final String text2;
  final selected;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(top: (20 * height) / layoutHeight),
      width: (375 * width) / layoutWidth,
      height: (151 * height) / layoutHeight,
      child: Column(
        children: [
          Container(
            //color: Colors.orangeAccent,
            width: (345 * width) / layoutWidth,
            height: (23 * height) / layoutHeight,
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: (18 * height) / layoutHeight,
                      color: Color(0xFF8E8E93)),
                )),
          ),
          SizedBox(
            height: (10 * height) / layoutHeight,
          ),
          Line1(text: text1, selected: selected == 0,),
          SizedBox(
            height: (10 * height) / layoutHeight,
          ),
          Line1(text: text2, selected: selected == 1,)
        ],
      ),
    );
  }
}
