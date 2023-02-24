import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';

class CreatePart extends StatelessWidget {
  final int color1;
  final int color2;
  final String text1;
  final String text2;
  const CreatePart({
    Key? key,
    required this.color1,
    required this.color2,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.h),
        height: 160.h,
        width: 155.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(color1),
              Color(color2),
            ],
          ),
          borderRadius: RadiusConst.r20,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.h,
              ),
              Text(
                text1,
                style: GoogleFonts.nunitoSans(
                  color: ColorConst.kWhiteColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                text2,
                style: GoogleFonts.nunitoSans(
                  color: ColorConst.kWhiteColor,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset("assets/icons/button_icon.svg"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
