import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';

class FollowersPart extends StatelessWidget {
  const FollowersPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 30.h,
          width: 120.w,
          decoration: BoxDecoration(
            color: ColorConst.kBlueColor,
            borderRadius: RadiusConst.r5,
            boxShadow: [
              BoxShadow(
                color: ColorConst.kBlueColor.withOpacity(.3),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Center(
            child: Text(
              "35 Followers",
              style: GoogleFonts.nunitoSans(
                color: ColorConst.kWhiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.h,
        ),
        Container(
          height: 30.h,
          width: 120.w,
          decoration: BoxDecoration(
            color: ColorConst.kBlueSecondaryColor,
            borderRadius: RadiusConst.r5,
            boxShadow: [
              BoxShadow(
                color: ColorConst.kBlueSecondaryColor.withOpacity(.3),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Center(
            child: Text(
              "150 Friends",
              style: GoogleFonts.nunitoSans(
                color: ColorConst.kWhiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
