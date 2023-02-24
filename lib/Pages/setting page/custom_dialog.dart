import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';

class CustomDialog extends StatefulWidget {
  final String text2;
  const CustomDialog({
    super.key,
    required this.text2,
  });

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width.w,
        decoration: BoxDecoration(
          color: ColorConst.kBlue9Color,
          borderRadius: RadiusConst.r12,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.text2,
                    style: GoogleFonts.nunitoSans(
                        color: ColorConst.kWhiteColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Radio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.text2,
                    style: GoogleFonts.nunitoSans(
                        color: ColorConst.kWhiteColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Radio(
                    value: 2,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
