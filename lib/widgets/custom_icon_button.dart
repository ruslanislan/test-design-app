import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_design_app/constants/constants.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({Key? key, required this.asset, this.color, this.onTap}) : super(key: key);
  final String asset;
  final Color? color;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onTap,
      child: Container(
        //color: Colors.pinkAccent,
          width: (28 * width) / layoutWidth,
          height: (28 * height) / layoutHeight,
          child: SvgPicture.asset(asset, color: color ?? null,)),
    );
  }
}
