import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';

class Ranks extends StatelessWidget {
  final String imgUrl;
  final String text;
  final String rank;

  const Ranks({
    Key? key,
    required this.imgUrl,
    required this.text,
    required this.rank,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imgUrl,
          height: 35.h,
          width: 35.w,
        ),
        Text(
          text,
          style: GoogleFonts.nunitoSans(
            color: Colors.grey,
            fontSize: 15.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          rank,
          style: GoogleFonts.nunitoSans(
            color: ColorConst.kBlackColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
