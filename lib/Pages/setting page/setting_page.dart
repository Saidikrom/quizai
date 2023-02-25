
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizai/core/constants/colors_const.dart';
import 'package:quizai/widgets/top_back_button.dart';

import 'tripple_container2.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kDarkBlueColor,
      body: SingleChildScrollView(
        child: Column(children: [
          TopBackButton(
            text: "Setting",
            width: 100,
            color: ColorConst.kBlue8Color,
            shColor: ColorConst.kBlackColor,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height.h,
              width: MediaQuery.of(context).size.width.w - 40,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  TripleContainer2(
                    height: 610,
                    width: 120,
                    color: ColorConst.kBlue9Color.withOpacity(.2),
                    isTrue: false,
                  ),
                  TripleContainer2(
                    height: 590,
                    width: 80,
                    color: ColorConst.kBlue9Color.withOpacity(.5),
                    isTrue: false,
                  ),
                  TripleContainer2(
                    height: 570,
                    width: 0,
                    color: ColorConst.kBlue9Color,
                    isTrue: true,
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}
