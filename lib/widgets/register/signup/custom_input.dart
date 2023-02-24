// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors_const.dart';
import '../../../core/constants/radius_const.dart';

class InputWidget extends StatelessWidget {
  final String text;
  final Icon icon;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  final GlobalKey<FormState> formkey;
  // Map<String, String>? map;

  bool isShow;
  InputWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.textInputType,
    required this.textEditingController,
    required this.isShow,
    required this.formkey,
    // this.map,
  }) : super(key: key);
  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5.h,
          ),
          Form(
            key: formkey,
            child: SizedBox(
              width: 380.w,
              height: 80.h,
              child: TextFormField(
                controller: textEditingController,
                obscureText: isShow,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: icon,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorConst.kWhiteColor,
                      width: 2.w,
                    ),
                    borderRadius: RadiusConst.r12,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: RadiusConst.r12,
                    borderSide: BorderSide(
                      color: ColorConst.kBlackColor.withOpacity(.2),
                    ),
                  ),
                ),
                validator: (info) {
                  if (text == 'Full name') {
                    if (info!.isEmpty || info == null) {
                      return "Please enter Full Name";
                    }
                    // else if (!info.contains("@")) {
                    //   return "Please enter more than 6 word";
                    // }
                  } else if (text == 'Email') {
                    if (info!.isEmpty || info == null) {
                      return "Please enter Email";
                    } else if (!info.contains("@")) {
                      return "Please enter true email";
                    }
                  } else if (text == 'Password') {
                    if (info!.isEmpty || info == null) {
                      return "Please enter password";
                    } else if (info.length < 6) {
                      return "Please enter more than 6 words";
                    }
                  } else if (text == 'Confirm Password') {
                    if (info!.isEmpty || info == null) {
                      return "Please enter password";
                    }
                    // else if (!info.contains("@")) {
                    //   return "Please enter more than 6 word";
                    // }
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
