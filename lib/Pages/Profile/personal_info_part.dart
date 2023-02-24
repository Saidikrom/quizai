import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';
import 'followers_part.dart';
import 'profile_image.dart';

class PersonalInfoPart extends StatelessWidget {
  final String name;
  final String imgUrl;
  const PersonalInfoPart({
    Key? key,
    required this.imgUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.h,
      width: MediaQuery.of(context).size.width.w,
      decoration: BoxDecoration(
        color: ColorConst.kWhiteColor,
        borderRadius: RadiusConst.r20,
        boxShadow: [
          BoxShadow(
            color: ColorConst.kBlackColor.withOpacity(.2),
            spreadRadius: 0,
            blurRadius: 40,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 120.h,
            width: 120.w,
            child: ProfileImage(imgUrl: imgUrl),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            name,
            style: GoogleFonts.nunitoSans(
              color: const Color.fromARGB(255, 4, 0, 43),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          const FollowersPart()
        ],
      ),
    );
  }
}
