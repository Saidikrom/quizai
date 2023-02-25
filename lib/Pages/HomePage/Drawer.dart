// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizai/Pages/BottomNavigationBar/Custom_BottoAppBar.dart';
import 'package:quizai/Pages/friend_list_page.dart';
import 'package:quizai/Pages/referal%20Page/referral_page.dart';
import 'package:quizai/Pages/setting%20page/setting_page.dart';
import 'package:quizai/models/onBoarding_text_model.dart';

import '../../core/constants/colors_const.dart';

class Drawers extends StatelessWidget {
  const Drawers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(left: 20.w),
        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                        color: Colors.black26,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1598343672916-de13ab0636ed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80"))),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Saidikromkhon",
                    style: GoogleFonts.nunitoSans(
                      color: ColorConst.kWhiteColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w),
                height: 1.h,
                width: 300,
                color: ColorConst.kBlueColor.withOpacity(.5),
              ),
              SizedBox(
                height: 20.h,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomBottomAppBar(
                        sentIndex: 0,
                      ),
                    ),
                  );
                },
                leading: SvgPicture.asset(
                  MenuItems[0]![0],
                  color: ColorConst.kWhiteColor.withOpacity(.5),
                ),
                title: Text(
                  MenuItems[0]![1],
                  style: GoogleFonts.nunitoSans(
                    color: ColorConst.kWhiteColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomBottomAppBar(
                        sentIndex: 1,
                      ),
                    ),
                  );
                },
                leading: SvgPicture.asset(
                  MenuItems[1]![0],
                  color: ColorConst.kWhiteColor.withOpacity(.5),
                ),
                title: Text(
                  MenuItems[1]![1],
                  style: GoogleFonts.nunitoSans(
                    color: ColorConst.kWhiteColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomBottomAppBar(
                        sentIndex: 2,
                      ),
                    ),
                  );
                },
                leading: SvgPicture.asset(
                  MenuItems[2]![0],
                  color: ColorConst.kWhiteColor.withOpacity(.5),
                ),
                title: Text(
                  MenuItems[2]![1],
                  style: GoogleFonts.nunitoSans(
                    color: ColorConst.kWhiteColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FriendListPage()),
                  );
                },
                leading: SvgPicture.asset(
                  MenuItems[3]![0],
                  color: ColorConst.kWhiteColor.withOpacity(.5),
                ),
                title: Text(
                  MenuItems[3]![1],
                  style: GoogleFonts.nunitoSans(
                    color: ColorConst.kWhiteColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReferralPage()),
                  );
                },
                leading: SvgPicture.asset(
                  MenuItems[4]![0],
                  color: ColorConst.kWhiteColor.withOpacity(.5),
                ),
                title: Text(
                  MenuItems[4]![1],
                  style: GoogleFonts.nunitoSans(
                    color: ColorConst.kWhiteColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SettingPage()),
                  );
                },
                leading: SvgPicture.asset(
                  MenuItems[5]![0],
                  color: ColorConst.kWhiteColor.withOpacity(.5),
                ),
                title: Text(
                  MenuItems[5]![1],
                  style: GoogleFonts.nunitoSans(
                    color: ColorConst.kWhiteColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.only(left: 10.w),
                height: 1.h,
                width: 300,
                color: ColorConst.kBlueColor.withOpacity(.5),
              ),
              ListTile(
                onTap: () {},
                leading: SvgPicture.asset(
                  "assets/icons/power_button_icon.svg",
                  color: ColorConst.kWhiteColor.withOpacity(.5),
                ),
                title: Text(
                  'Log Out',
                  style: GoogleFonts.nunitoSans(
                    color: ColorConst.kWhiteColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
