import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Pages/Notification/top_part.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';
import 'notification_list_part.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
               const TopPart(),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 80.h,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 10 * 100,
                          width: MediaQuery.of(context).size.width.w,
                          decoration: BoxDecoration(
                            color: ColorConst.kWhiteColor,
                            borderRadius: RadiusConst.r20,
                            boxShadow: [
                              BoxShadow(
                                color: ColorConst.kBlackColor.withOpacity(.3),
                                spreadRadius: 3,
                                blurRadius: 50,
                                offset: const Offset(0, 50),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 10,
                                itemBuilder: (ctx, i) {
                                  return const NotificationList();
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
