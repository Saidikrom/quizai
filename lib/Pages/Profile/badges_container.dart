import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizai/Pages/Profile/Badge_part.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';
import 'badge_ranks_part.dart';

class Badges extends StatelessWidget {
  const Badges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290.h,
      width: MediaQuery.of(context).size.width.w,
      decoration: BoxDecoration(
        color: ColorConst.kWhiteColor,
        borderRadius: RadiusConst.r20,
        boxShadow: [
          BoxShadow(
            color: ColorConst.kBlackColor.withOpacity(.3),
            spreadRadius: 0,
            blurRadius: 40,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            height: 150.h,
            width: 380.w,
            decoration: BoxDecoration(
              color: const Color(0xfff9f9fc),
              borderRadius: RadiusConst.r20,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Badge",
                    style: GoogleFonts.nunitoSans(
                      color: const Color.fromARGB(255, 4, 0, 43),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      BadgePart(
                        imgUrl: "assets/images/trophy_icon_image.png",
                      ),
                      BadgePart(
                        imgUrl: "assets/images/badge_star_icon.png",
                      ),
                      BadgePart(
                        imgUrl: "assets/images/badge_icon.png",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            height: 90.h,
            width: 380.w,
            decoration: BoxDecoration(
              color: const Color(0xfff9f9fc),
              borderRadius: RadiusConst.r20,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Ranks(
                    imgUrl: "assets/icons/global_icon.svg",
                    text: "World Rank",
                    rank: "7,373,025",
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  const Ranks(
                    imgUrl: "assets/icons/local_icon.svg",
                    text: "Local Rank",
                    rank: "1,913",
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  const Ranks(
                    imgUrl: "assets/icons/score_icon.svg",
                    text: "Score",
                    rank: "5400",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
