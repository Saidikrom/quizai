// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors_const.dart';
import '../../../core/constants/radius_const.dart';

class TripleContainer extends StatelessWidget {
  final bool? isTrue;
  final String? routeName;
  final double height;
  final double width;
  final Color color;
  final String? text;
  final String? text1;
  final String? text2;
  Function(bool isForgot)? switchs;
  TripleContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    this.switchs,
    this.isTrue,
    this.routeName,
    this.text,
    this.text1,
    this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: MediaQuery.of(context).size.width - width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            bottomLeft: RadiusConst.r25,
            bottomRight: RadiusConst.r25,
          ),
        ),
        child: isTrue!
            ? SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       SizedBox(
                        height: 10.h,
                      ),
                      SvgPicture.asset(
                        "assets/images/quizai.svg",
                        height: 70.h,
                        width: 70.w,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        text!,
                        style: GoogleFonts.nunitoSans(
                            color: ColorConst.kWhiteColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 25.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text(
                            text1!,
                            style: GoogleFonts.nunitoSans(
                                color: ColorConst.kWhiteColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.sp),
                          ),
                          text2 == null
                              ? Column()
                              : GestureDetector(
                                  onTap: () {
                                    // Navigator.of(context).pushNamed(routeName!);
                                    switchs!(false);
                                  },
                                  child: Text(
                                    text2!,
                                    style: GoogleFonts.nunitoSans(
                                        color: ColorConst.kBlueSecondaryColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15.sp),
                                  ),
                                ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            : null);
  }
}
