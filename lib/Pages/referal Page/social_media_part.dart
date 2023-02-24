import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';
import '../../models/onBoarding_text_model.dart';

class SocialMediaPart extends StatelessWidget {
  const SocialMediaPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: ColorConst.kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: ColorConst.kBlackColor.withOpacity(.1),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: RadiusConst.r12,
              ),
              child: SizedBox(
                height: 30,
                width: 30,
                child: SvgPicture.asset(
                  ReferLinks[index]![0],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
