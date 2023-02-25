// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants/colors_const.dart';
import '../core/constants/radius_const.dart';

class CustomButton extends StatelessWidget {

  final String text;
  Map<String, String>? map;
  TextEditingController? ed;
  // final GlobalKey<FormState> formkey;
  CustomButton({
    Key? key,
    required this.text,
    this.ed,
    this.map,
    // required this.formkey
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
           void _submit() {
          }
        },
        child: Container(
          width: 350.w,
          height: 60.h,
          decoration: BoxDecoration(
              color: ColorConst.kBlueColor, borderRadius: RadiusConst.r12),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.nunitoSans(
                color: ColorConst.kWhiteColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
