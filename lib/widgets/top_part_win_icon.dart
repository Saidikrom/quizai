import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants/colors_const.dart';
import 'custom_square_button.dart';

class TopPartWithIcon extends StatelessWidget {
  Function? handle;
  final String text;
   TopPartWithIcon({
    Key? key,
    this.handle,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void notification() {
      Navigator.of(context).pushNamed("/notification");
    }

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
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SquareButtun(
                  icon: "assets/icons/widget_icon.svg",
                  handle: handle,
                  
                  color: ColorConst.kBlue7Color,
                  shColor: ColorConst.kBlueShadowColor,
                ),
                Text(
                  text,
                  style: GoogleFonts.nunitoSans(
                      color: ColorConst.kWhiteColor,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700),
                ),
                SquareButtun(
                  icon: "assets/icons/bell_icon.svg",
                  handle: notification,
                  
                  color: ColorConst.kBlue7Color,
                  shColor: ColorConst.kBlueShadowColor,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
