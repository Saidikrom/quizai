import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';

class CustomSettingPart1 extends StatefulWidget {
  final String text;
  final String icon;
  const CustomSettingPart1({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  State<CustomSettingPart1> createState() => _CustomSettingPart1State();
}

class _CustomSettingPart1State extends State<CustomSettingPart1> {
  bool values = false;
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
            CupertinoSwitch(
              activeColor: ColorConst.kBlueLighterColor,
              value: values,
              onChanged: (bool v) {
                setState(() {});
                values = v;
              },
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
