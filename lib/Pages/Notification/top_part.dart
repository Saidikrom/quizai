import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors_const.dart';
import '../../widgets/top_back_button.dart';

class TopPart extends StatelessWidget {
  const TopPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 170.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: ColorConst.kBlueColor),
        ),
        Positioned(
          left: 270.w,
          child: Container(
            height: 160.h,
            width: 160.w,
            decoration: BoxDecoration(
              color: ColorConst.kBlueLighterColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 50.h,
          left: 20.w,
          child: Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: ColorConst.kBlueLighterColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
         TopBackButton(
          text: "Notification",
          width: 80,
          
          color: ColorConst.kBlue7Color,
          shColor: ColorConst.kBlueShadowColor,
        ),
      ],
    );
  }
}
