import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';
import 'custom_dialog.dart';

class CustomSettingPart2 extends StatefulWidget {
  final String text;
  final String text2;
  final String icon;
  const CustomSettingPart2({
    Key? key,
    required this.text,
    required this.text2,
    required this.icon,
  }) : super(key: key);

  @override
  State<CustomSettingPart2> createState() => _CustomSettingPart2State();
}

class _CustomSettingPart2State extends State<CustomSettingPart2> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  widget.icon,
                  color: ColorConst.kWhiteColor,
                  width: 30,
                  height: 30,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  widget.text,
                  style: GoogleFonts.nunitoSans(
                      color: ColorConst.kWhiteColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {});
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialog(text2: widget.text2);
                    });
              },
              child: Container(
                width: 100.w,
                height: 35.h,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 34, 45, 116),
                  borderRadius: RadiusConst.r12,
                  boxShadow: [
                    BoxShadow(
                      color: ColorConst.kBlue8Color,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.text2,
                      style: GoogleFonts.nunitoSans(
                        color: ColorConst.kWhiteColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: ColorConst.kWhiteColor,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.h),
          height: 1,
          width: MediaQuery.of(context).size.width.w,
          color: ColorConst.kBlue7Color.withOpacity(.5),
        )
      ],
    );
  }
}
