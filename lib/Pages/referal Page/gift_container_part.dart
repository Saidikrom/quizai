import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';

class GiftContainer extends StatelessWidget {
  const GiftContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        height: 350,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: ColorConst.kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: ColorConst.kBlackColor.withOpacity(.3),
              spreadRadius: 3,
              blurRadius: 50,
              offset: const Offset(0, 0),
            ),
          ],
          borderRadius: RadiusConst.r20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/gift_image.png",
              height: 150.h,
              width: 150.h,
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 40.h,
              width: 150.w,
              decoration: BoxDecoration(
                color: ColorConst.kBlueSecondaryColor,
                borderRadius: RadiusConst.r12,
              ),
              child: Center(
                child: Text(
                  "MghWOP",
                  style: GoogleFonts.nunitoSans(
                      color: ColorConst.kWhiteColor,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 250.w,
              child: Text(
                textAlign: TextAlign.center,
                "Share your code with your friends and get bonus point",
                style: GoogleFonts.nunitoSans(
                    color: ColorConst.kBlackColor.withOpacity(.5),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
