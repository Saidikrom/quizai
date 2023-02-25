// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Pages/Profile/personal_info_part.dart';
import '../../widgets/top_part_win_icon.dart';
import 'badges_container.dart';

class ProfilePage extends StatelessWidget {
  Function? handle;
  ProfilePage({
    super.key,
    this.handle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 900.h,
            width: 470.w,
            child: Stack(
              children: [
                TopPartWithIcon(
                  text: "Profile",
                  handle: handle,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 80.h),
                  child: SafeArea(
                    child: Column(
                      children: [
                        const PersonalInfoPart(
                          imgUrl:
                              "https://images.unsplash.com/photo-1598343672916-de13ab0636ed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80",
                          name: "Liza Carter",
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const Badges(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
