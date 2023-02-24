// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Pages/HomePage/Drawer.dart';
import '../../Pages/HomePage/home_page.dart';
import '../../Pages/friend_list_page.dart';
import '../../Pages/leaderboard/leaderBoard_page.dart';
import '../../Pages/History_page/history_page.dart';
import '../../Pages/Profile/profile_page.dart';
import '../referal Page/referral_page.dart';
import '../setting page/setting_page.dart';

import '../../core/constants/colors_const.dart';

class CustomBottomAppBar extends StatefulWidget {
  int? sentIndex;
  CustomBottomAppBar({Key? key, this.sentIndex}) : super(key: key);

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  final _advancedDrawerController = AdvancedDrawerController();

  void handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(handle: handleMenuButtonPressed),
      HistoryPage(handle: handleMenuButtonPressed),
      LeaderBoard(handle: handleMenuButtonPressed),
      const FriendListPage(),
      const ReferralPage(),
      SettingPage(),
      ProfilePage(handle: handleMenuButtonPressed),
    ];

    return AdvancedDrawer(
      backdropColor: ColorConst.kDarkBlueColor,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: Drawers(),
      child: Scaffold(
        extendBody: true,
        body: Stack(
          children: [
            widget.sentIndex == 0
                ? pages[0]
                : widget.sentIndex == 1
                    ? pages[1]
                    : widget.sentIndex == 2
                        ? pages[2]
                        : widget.sentIndex == 6
                            ? pages[6]
                            : pages[0],
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 7,
          elevation: 0,
          color: ColorConst.kBlueColor,
          shape: AutomaticNotchedShape(
            const RoundedRectangleBorder(),
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(45.r),
              ),
            ),
          ),
          child: SizedBox(
            height: 70.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.sentIndex = 0;
                    });
                  },
                  child: SizedBox(
                    height: 30.h,
                    width: 30.w,
                    child: SvgPicture.asset(
                      "assets/icons/home_icon.svg",
                      color: widget.sentIndex == 0 || widget.sentIndex == null
                          ? ColorConst.kWhiteColor
                          : ColorConst.kWhiteColor.withOpacity(.5),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.sentIndex = 1;
                    });
                  },
                  child: SizedBox(
                    height: 30.h,
                    width: 30.w,
                    child: SvgPicture.asset(
                      "assets/icons/history_icon.svg",
                      color: widget.sentIndex == 1
                          ? ColorConst.kWhiteColor
                          : ColorConst.kWhiteColor.withOpacity(.5),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50.w,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.sentIndex = 2;
                    });
                  },
                  child: SizedBox(
                    height: 30.h,
                    width: 30.w,
                    child: SvgPicture.asset(
                      "assets/icons/trophy_icon.svg",
                      color: widget.sentIndex == 2
                          ? ColorConst.kWhiteColor
                          : ColorConst.kWhiteColor.withOpacity(.5),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.sentIndex = 6;
                    });
                  },
                  child: SizedBox(
                    height: 30.h,
                    width: 30.w,
                    child: SvgPicture.asset(
                      "assets/icons/profile_icon.svg",
                      color: widget.sentIndex == 6
                          ? ColorConst.kWhiteColor
                          : ColorConst.kWhiteColor.withOpacity(.5),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: SizedBox(
          height: 80.h,
          width: 80.w,
          child: FloatingActionButton(
            backgroundColor: ColorConst.kBlueColor,
            focusColor: ColorConst.kBlueColor,
            onPressed: () {
              setState(() {});
            },
            child: const Icon(
              Icons.add,
              size: 40,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
