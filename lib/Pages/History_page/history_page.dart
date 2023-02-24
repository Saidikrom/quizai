import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';
import '../../models/onBoarding_text_model.dart';
import '../../widgets/top_part_win_icon.dart';
import 'history_element.dart';

class HistoryPage extends StatelessWidget {
  Function? handle;
  HistoryPage({super.key, this.handle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 930.h,
              width: 470.w,
              child: Stack(
                children: [
                  TopPartWithIcon(
                    text: "History",
                    handle: handle,
                  ),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 80.h,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: HistoryItem.length * 100,
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
                                  itemCount: HistoryItem.length,
                                  itemBuilder: (ctx, i) {
                                    return HistoryElement(
                                      imgUrl: HistoryItem[i]![0],
                                      text1: HistoryItem[i]![1],
                                      text2: HistoryItem[i]![2],
                                    );
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
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
