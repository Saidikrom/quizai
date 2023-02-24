import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/radius_const.dart';
import 'custom_setting1.dart';
import 'custom_setting2.dart';

class TripleContainer2 extends StatelessWidget {
  final bool? isTrue;
  final String? routeName;
  final double height;
  final double width;
  final Color color;
  const TripleContainer2({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    this.isTrue,
    this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height.h,
        width: MediaQuery.of(context).size.width.w - width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: RadiusConst.rc25,
        ),
        child: isTrue!
            ? SafeArea(
                child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CustomSettingPart1(
                      text: "Sound",
                      icon: "assets/images/speaker_image.png",
                    ),
                    CustomSettingPart2(
                      text: "English",
                      icon: "assets/images/global_image.png",
                      text2: "English",
                    ),
                    CustomSettingPart2(
                      text: "Categories",
                      icon: "assets/images/graduation_image.png",
                      text2: "select",
                    ),
                    CustomSettingPart1(
                      text: "Animation",
                      icon: "assets/images/rocket_icon.png",
                    ),
                    CustomSettingPart1(
                      text: "Random Opponents",
                      icon: "assets/images/flash_image.png",
                    ),
                    CustomSettingPart1(
                      text: "Notification",
                      icon: "assets/images/bell_image.png",
                    ),
                  ],
                ),
              ))
            : null);
  }
}
