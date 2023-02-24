import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';

class ListRating extends StatelessWidget {
  const ListRating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 10.h,
      ),
      child: Container(
        height: 80.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: ColorConst.kWhiteColor,
          borderRadius: RadiusConst.r12,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "4",
                    style: GoogleFonts.nunitoSans(
                        color: ColorConst.kBlueColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1598343672916-de13ab0636ed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Kyle Hawkins",
                        style: GoogleFonts.nunitoSans(
                            color: ColorConst.kBlueGrayColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                "5230",
                style: GoogleFonts.nunitoSans(
                    color: ColorConst.kBlueSecondaryColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
