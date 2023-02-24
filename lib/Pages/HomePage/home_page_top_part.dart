// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';
import '../../widgets/custom_square_button.dart';

class HomePageTop extends StatefulWidget {
  Function? handle;
  HomePageTop({
    Key? key,
    this.handle,
  }) : super(key: key);

  @override
  State<HomePageTop> createState() => _HomePageTopState();
}

class _HomePageTopState extends State<HomePageTop> {
  void notification() {
    Navigator.of(context).pushNamed("/notification");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 496.w,
      decoration: BoxDecoration(
        color: ColorConst.kBlueColor,
        borderRadius: BorderRadius.only(
          bottomLeft: RadiusConst.r25,
          bottomRight: RadiusConst.r25,
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 0.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SquareButtun(
                    icon: "assets/icons/widget_icon.svg",
                    handle: widget.handle,
                    color: ColorConst.kBlue7Color,
                    shColor: ColorConst.kBlueShadowColor,
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
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back!",
                    style: GoogleFonts.nunitoSans(
                      color: ColorConst.kWhiteColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Saidikromkhon",
                    style: GoogleFonts.nunitoSans(
                      color: ColorConst.kWhiteColor,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
