// ignore_for_file: must_be_immutable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors_const.dart';
import '../../../core/constants/radius_const.dart';

class InputWidget extends StatefulWidget {
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

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  // final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5.h,
          ),
          Form(
            key: widget.formkey,
            child: SizedBox(
              width: 380.w,
              height: 80.h,
              child: TextFormField(
                controller: widget.textEditingController,
                obscureText: widget.isShow,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: widget.icon,
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
                  setState(() {});
                  if (widget.text == 'Full name') {
                    if (info!.isEmpty ) {
                      return "Please enter Full Name";
                    }
                  } else if (widget.text == 'Email') {
                    if (info!.isEmpty) {
                      return "Please enter Email";
                    } else if (!info.contains("@")) {
                      return "Please enter true email";
                    }
                  } else if (widget.text == 'Password') {
                    if (info!.isEmpty) {
                      return "Please enter password";
                    } else if (info.length < 6) {
                      return "Please enter more than 6 words";
                    }
                  } else if (widget.text == 'Confirm Password') {
                    if (info!.isEmpty) {
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
