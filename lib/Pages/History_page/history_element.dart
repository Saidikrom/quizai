import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';

class HistoryElement extends StatelessWidget {
  final String imgUrl;
  final String text1;
  final String text2;
  const HistoryElement({
    Key? key,
    required this.imgUrl,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 300,
          height: 80,
          decoration: BoxDecoration(
            color: const Color(0xfff9f9fc),
            borderRadius: RadiusConst.r20,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  imgUrl,
                  height: 40.h,
                  width: 40.w,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: GoogleFonts.nunitoSans(
                        color: ColorConst.kBlackColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      text2,
                      style: GoogleFonts.nunitoSans(
                        color: ColorConst.kBlackColor.withOpacity(.5),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
