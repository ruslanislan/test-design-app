import 'package:flutter/material.dart';
import 'package:test_design_app/constants/constants.dart';
import 'package:test_design_app/screens/settings_build_screen.dart';
import 'package:test_design_app/widgets/custom_block.dart';
import 'package:test_design_app/widgets/widgets.dart';

class MeasuresScreen extends StatelessWidget {
  const MeasuresScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            color: Color(0xFFF2F2F7),
          ),
          Column(
            children: [
              NavBar(
                onTap: (){
                  index.value = 0;
                },
                text: 'Measures',
                dWidth: (375 * width) / layoutWidth,
                dHeight: (87 * height) / layoutHeight,
              ),
              _BodyContainer(
                dWidth: (375 * width) / layoutWidth,
                dHeight: (473 * height) / layoutHeight,
              ),
            ],
          ),
        ],
      ),
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
      //color: Colors.greenAccent,
      width: dWidth ?? 375,
      height: dHeight ?? 473,
      child: Column(
        children: [
          CustomBlock(title: 'Distance', text1: 'Miles', text2: 'Kilometers', selected: 1,),
          CustomBlock(title: 'Length', text1: 'Feet', text2: 'Centimeters', selected: 0,),
          CustomBlock(title: 'Time', text1: 'AM/PM', text2: '24 hour clock', selected: 1,),
        ],
      ),
    );
  }
}
