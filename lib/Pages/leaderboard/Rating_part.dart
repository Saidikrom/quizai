// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';

class RatingBadge extends StatelessWidget {
  final Color color;
  final String name;
  final String rating;
  final String number;
  const RatingBadge({
    Key? key,
    required this.color,
    required this.name,
    required this.rating,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      width: 200.w,
      child: Stack(
        children: [
          SvgPicture.asset(
            "assets/icons/rating_icon.svg",
            color: color,
            height: 200.h,
            width: 250.w,
          ),
          Positioned(
            top: 42.5.h,
            left: 42.5.w,
            child: Container(
              height: 95.h,
              width: 95.w,
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1598343672916-de13ab0636ed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80",
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 40.h,
            left: 30.w,
            child: Container(
              height: 40.h,
              width: 40.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow,
              ),
              child: Center(
                child: Text(
                  number,
                  style: GoogleFonts.nunitoSans(
                      color: Colors.red,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
          Positioned(
            top: 150.h,
            left: 65.w,
            child: Text(
              rating,
              style: GoogleFonts.nunitoSans(
                  color: ColorConst.kWhiteColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Positioned(
            top: 200.h,
            left: 40.w,
            child: Container(
              alignment: Alignment.center,
              height: 20,
              width: 100,
              child: Text(
                name,
                style: GoogleFonts.nunitoSans(
                    color: ColorConst.kBlueSecondaryColor,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
