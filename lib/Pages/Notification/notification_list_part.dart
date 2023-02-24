import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 300,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1598343672916-de13ab0636ed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80"))),
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "James Dutton",
                          style: GoogleFonts.nunitoSans(
                            color: ColorConst.kBlackColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Scored 55 in ",
                              style: GoogleFonts.nunitoSans(
                                color: ColorConst.kBlackColor.withOpacity(.5),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "Marketing Strategy",
                              style: GoogleFonts.nunitoSans(
                                color: ColorConst.kBlackColor,
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Reaction Module",
                          style: GoogleFonts.nunitoSans(
                            color: ColorConst.kBlackColor,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "2 minuts ago",
                          style: GoogleFonts.nunitoSans(
                            color: ColorConst.kBlackColor.withOpacity(.5),
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 25,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: RadiusConst.r5,
                              color: ColorConst.kBlueSecondaryColor,
                            ),
                            child: Center(
                              child: Text(
                                "Accept",
                                style: GoogleFonts.nunitoSans(
                                  color: ColorConst.kWhiteColor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: 1.h,
          width: 300.w,
          color: ColorConst.kBlackColor.withOpacity(.1),
        ),
      ],
    );
  }
}
