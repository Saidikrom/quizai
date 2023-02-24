// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../core/constants/colors_const.dart';
import '../core/constants/radius_const.dart';

class SquareButtun extends StatelessWidget {
  final String icon;
  Function? handle;
  final Color color;
  final Color shColor;
  SquareButtun(
      {Key? key,
      required this.icon,
      this.handle,
      required this.color,
      required this.shColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        handle!();
      },
      child: Container(
        height: 40.w,
        width: 40.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: RadiusConst.r12,
          boxShadow: [
            BoxShadow(
              color: shColor,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: SvgPicture.asset(
          icon,
        ),
      ),
    );
  }
}
