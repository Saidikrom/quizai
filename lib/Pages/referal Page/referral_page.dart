import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';
import '../../widgets/top_back_button.dart';
import 'gift_container_part.dart';
import 'social_media_part.dart';

class ReferralPage extends StatelessWidget {
  const ReferralPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 480,
              child: Stack(
                children: [
                  Container(
                    height: 400.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: ColorConst.kBlueColor,
                      image: const DecorationImage(
                        opacity: .05,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/sunline_image.png",
                        ),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: RadiusConst.r40,
                        bottomRight: RadiusConst.r40,
                      ),
                    ),
                  ),
                   TopBackButton(
                    text: "Refer a Friend",
                    width: 60,
                  
                    color: ColorConst.kBlue7Color,
                    shColor: ColorConst.kBlueShadowColor,
                  ),
                  const GiftContainer(),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const SocialMediaPart()
          ],
        ),
      ),
    );
  }
}
