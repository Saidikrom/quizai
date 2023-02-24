import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/colors_const.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 120.h,
          width: 120.w,
          decoration: BoxDecoration(
            color: ColorConst.kWhiteColor,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: ColorConst.kBlackColor.withOpacity(.2),
                spreadRadius: 0,
                blurRadius: 30,
                offset: const Offset(0, 0),
              ),
            ],
          ),
        ),
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imgUrl,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: ColorConst.kBlueLighterColor.withOpacity(.7),
                  spreadRadius: 0,
                  blurRadius: 40,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/hexagon_icon.svg",
                  height: 45.h,
                  width: 45.w,
                ),
                SvgPicture.asset(
                  "assets/icons/hexagon_icon.svg",
                  height: 40.h,
                  width: 40.w,
                  color: ColorConst.kBlueColor,
                ),
                Image.asset(
                  "assets/images/badge_icon.png",
                  height: 25,
                  width: 25,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
