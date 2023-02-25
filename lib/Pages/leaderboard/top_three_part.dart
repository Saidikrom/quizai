// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';
import '../../widgets/custom_square_button.dart';
import 'Rating_part.dart';
import 'local_global_friends_part.dart';

class TopThree extends StatelessWidget {
  Function? handle;
  TopThree({
    Key? key,
    this.handle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void notification() {
      Navigator.of(context).pushNamed("/notification");
    }

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 44),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SquareButtun(
                icon: "assets/icons/widget_icon.svg",
                handle: handle,
                color: ColorConst.kBlue7Color,
                shColor: ColorConst.kBlueShadowColor,
              ),
              Text(
                "Leaderboard",
                style: GoogleFonts.nunitoSans(
                    color: ColorConst.kWhiteColor,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700),
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
          height: 10.h,
        ),
        const LocalGlobalFriends(),
        SizedBox(
          height: 230,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              RatingBadge(
                color: ColorConst.kOrangeColor,
                name: "Dutton",
                rating: "5620",
                number: "2",
              ),
              Positioned(
                bottom: 20,
                left: 120,
                child: RatingBadge(
                  color: ColorConst.kGreenColor,
                  name: "Liza Carter",
                  rating: "8832",
                  number: "1",
                ),
              ),
              Positioned(
                left: 240,
                child: RatingBadge(
                  color: ColorConst.kBlueSecondaryColor,
                  rating: "5230",
                  name: "Dutton",
                  number: "3",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
