import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';

class LocalGlobalFriends extends StatelessWidget {
  const LocalGlobalFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 300.w,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 43, 117, 255),
        borderRadius: RadiusConst.r5,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Text(
                "Local",
                style: GoogleFonts.nunitoSans(
                    color: ColorConst.kWhiteColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 45.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: ColorConst.kBlueSecondaryColor,
                borderRadius: RadiusConst.r5,
                boxShadow: [
                  BoxShadow(
                    color: ColorConst.kBlueSecondaryColor.withOpacity(.5),
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "Global",
                  style: GoogleFonts.nunitoSans(
                      color: ColorConst.kWhiteColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Center(
              child: Text(
                "Friends",
                style: GoogleFonts.nunitoSans(
                    color: ColorConst.kWhiteColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
