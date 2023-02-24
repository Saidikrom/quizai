import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/colors_const.dart';

class BadgePart extends StatelessWidget {
  final String imgUrl;
  const BadgePart({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorConst.kBlueLighterColor.withOpacity(.3),
            spreadRadius: 0,
            blurRadius: 25,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            "assets/icons/hexagon_icon.svg",
            height: 75.h,
            width: 75.w,
            color: ColorConst.kBlueColor,
          ),
          Image.asset(
            imgUrl,
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}
