import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizai/Pages/Register/signUp/triple_container_widget.dart';
import 'package:quizai/services/api_services.dart';

import '../../../core/constants/colors_const.dart';
import '../../../core/constants/radius_const.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/register/signup/custom_input.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController fullName = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController confirm = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey();

  GlobalKey<FormState> _formKey1 = GlobalKey();

  GlobalKey<FormState> _formKey2 = GlobalKey();

  GlobalKey<FormState> _formKey3 = GlobalKey();

  void _submit() {
    if (_formKey.currentState!.validate()) {
    } else if (_formKey1.currentState!.validate()) {
    } else if (_formKey2.currentState!.validate()) {
    } else if (_formKey3.currentState!.validate()) {}
  }

  void showErrorDialog(String message) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text("ERROR"),
            content: Text(message),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Text("OK"),
              )
            ],
          );
        });
  }

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
                children: [
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
                    text: "Register New Account",
                    text1: "Already have an account? ",
                    text2: "Sign In",
                    routeName: "/signIn",
                    height: 250,
                    width: 0,
                    color: Color(0xff293fcc),
                    isTrue: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 500.h,
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
                        text: "Full name",
                        textEditingController: fullName,
                        icon: Icon(
                          CupertinoIcons.person,
                          color: ColorConst.kBlackColor.withOpacity(.5),
                          size: 30,
                        ),
                        textInputType: TextInputType.text,
                      ),
                      InputWidget(
                        formkey: _formKey1,
                        isShow: false,
                        textEditingController: email,
                        text: "Email",
                        icon: Icon(
                          Icons.email_outlined,
                          color: ColorConst.kBlackColor.withOpacity(.5),
                          size: 30,
                        ),
                        textInputType: TextInputType.emailAddress,
                      ),
                      InputWidget(
                        formkey: _formKey2,
                        isShow: true,
                        text: "Password",
                        textEditingController: password,
                        icon: Icon(
                          CupertinoIcons.lock,
                          color: ColorConst.kBlackColor.withOpacity(.5),
                          size: 30,
                        ),
                        textInputType: TextInputType.visiblePassword,
                      ),
                      InputWidget(
                        formkey: _formKey3,
                        textEditingController: confirm,
                        isShow: true,
                        text: "Confirm Password",
                        icon: Icon(
                          CupertinoIcons.lock,
                          color: ColorConst.kBlackColor.withOpacity(.5),
                          size: 30,
                        ),
                        textInputType: TextInputType.visiblePassword,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 250.h),
                // child: CustomButton(
                //   ed: fullName,
                //   text: "Sign Up",
                // ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      _submit();

                      Auth(userName: fullName.text)
                          .signup(email.text, password.text, context);
                    },
                    child: Container(
                      width: 350.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                          color: ColorConst.kBlueColor,
                          borderRadius: RadiusConst.r12),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.nunitoSans(
                            color: ColorConst.kWhiteColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
