import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizai/Pages/Register/signUp/triple_container_widget.dart';
import '../../../core/constants/colors_const.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/register/signup/custom_input.dart';

class ForgotPassword extends StatelessWidget {
   ForgotPassword({super.key});
    final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children:  [
                  TripleContainer(
                    height: 300,
                    width: 100,
                    color: Color(0xff556bf2),
                    isTrue: false,
                  ),
                  TripleContainer(
                    height: 280,
                    width: 50,
                    color: Color(0xff364dd9),
                    isTrue: false,
                  ),
                  TripleContainer(
                    text: "Forgot Password",
                    text1: "Forgot your Password? Don't Worry",
                    height: 250,
                    width: 0,
                    color: Color(0xff293fcc),
                    isTrue: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150.h,
              width: 429.w,
              child: ListView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                // shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Column(
                    children: [
                      InputWidget(
                        formkey: _formKey,
                        isShow: false,
                        text: "Email",
                        textEditingController: email,
                        icon: Icon(
                          Icons.email_outlined,
                          color: ColorConst.kBlackColor.withOpacity(.5),
                          size: 30,
                        ),
                        textInputType: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
             CustomButton(
              text: "Recover Password",
            )
          ],
        ),
      ),
    );
  }
}
