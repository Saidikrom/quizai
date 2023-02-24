// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Pages/leaderboard/rating_list_part.dart';
import '../../Pages/leaderboard/top_three_part.dart';
import '../../core/constants/radius_const.dart';

import '../../core/constants/colors_const.dart';

class LeaderBoard extends StatelessWidget {
  Function? handle;
  LeaderBoard({
    super.key,
    this.handle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7FC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 420.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: ColorConst.kBlueColor,
                      image: const DecorationImage(
                        opacity: .1,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/sunline_image.png",
                        ),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: RadiusConst.r40,
                        bottomRight: RadiusConst.r40,
                      )),
                ),
                TopThree(
                  handle: handle!,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 360.h,
              child: ListView.builder(
                itemCount: 25,
                itemBuilder: (ctx, i) {
                  return const ListRating();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
