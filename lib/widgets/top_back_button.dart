import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants/colors_const.dart';
import 'custom_square_button.dart';

class TopBackButton extends StatelessWidget {
  final Color color;
  final Color shColor;
  final int width;
  final String text;
  const TopBackButton({
    Key? key,
    required this.text,
    required this.width,
    required this.color,
    required this.shColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void pop() {
      Navigator.pop(context);
    }

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SquareButtun(
              icon: "assets/icons/arrow_back_icon.svg",
              handle: pop,
              color: color,
              shColor: shColor,
            ),
            SizedBox(
              width: width.w,
            ),
            Text(
              text,
              style: GoogleFonts.nunitoSans(
                  color: ColorConst.kWhiteColor,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
