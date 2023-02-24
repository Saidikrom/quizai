import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';

class CategoryTopics extends StatelessWidget {
  final String text;
  final String imgurl;
  final int color1;
  final int color2;
  const CategoryTopics({
    Key? key,
    required this.color1,
    required this.color2,
    required this.imgurl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 200.h,
        width: 150.w,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100.h,
                width: 150.w,
                decoration: BoxDecoration(
                  color: ColorConst.kWhiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: ColorConst.kBlackColor.withOpacity(.1),
                      spreadRadius: 3,
                      blurRadius: 20,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  borderRadius: RadiusConst.r12,
                ),
              ),
            ),
            Positioned(
              right: 20.w,
              top: 40.h,
              child: SizedBox(
                height: 100.h,
                width: 100.w,
                child: Image.asset(imgurl),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(text,
                    style: GoogleFonts.nunitoSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: <Color>[
                              Color(color1),
                              Color(color2),
                            ],
                          ).createShader(
                             const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
