import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizai/core/constants/colors_const.dart';
import 'package:quizai/core/constants/radius_const.dart';

import '../../models/onBoarding_text_model.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 926 / 3.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ColorConst.kBlueColor,
              borderRadius: BorderRadius.only(
                bottomLeft: RadiusConst.r60,
                bottomRight: RadiusConst.r60,
              ),
            ),
          ),
          SizedBox(
            height: 85.h,
          ),
          SizedBox(
            height: 195.h,
            child: Column(
              children: [
                Text(
                  OnBoardingText[0 > counter || counter > 2 ? 0 : counter]![0],
                  style: GoogleFonts.nunitoSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 30.sp,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                SizedBox(
                  width: 350.h,
                  child: Text(
                    textAlign: TextAlign.center,
                    OnBoardingText[0 > counter || counter > 2 ? 0 : counter]![
                        1],
                    style: GoogleFonts.nunitoSans(
                      color: Colors.black.withOpacity(.5),
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
            width: 135.w,
            height: 10.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    height: 10.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      color: counter == index
                          ? ColorConst.kBlueColor
                          : ColorConst.kBlueColor.withOpacity(.2),
                      borderRadius: RadiusConst.r50,
                    ),
                  );
                }),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pushNamed("/bottom");
                        });
                      },
                      child: Text(
                        "Skip",
                        style: GoogleFonts.nunitoSans(
                          color: Colors.black.withOpacity(.5),
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        counter == 2
                            ? setState(() {
                                counter = 2;
                                Navigator.of(context).pushNamed("/signUp");
                              })
                            : setState(() {
                                counter++;
                              });
                      },
                      child: counter == 2
                          ? Container(
                              height: 60.w,
                              width: 150.w,
                              decoration: BoxDecoration(
                                color: ColorConst.kBlueColor,
                                borderRadius: RadiusConst.r12,
                              ),
                              child: Center(
                                child: Text(
                                  "Get Started",
                                  style: GoogleFonts.nunitoSans(
                                    color: ColorConst.kWhiteColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),
                            )
                          : Container(
                              height: 60.w,
                              width: 60.w,
                              decoration: BoxDecoration(
                                color: ColorConst.kBlueColor,
                                borderRadius: RadiusConst.r12,
                              ),
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: ColorConst.kWhiteColor,
                              ),
                            ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
