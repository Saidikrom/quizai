import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizai/Pages/Register/signUp/triple_container_widget.dart';
import 'package:quizai/services/api_services.dart';

import '../../../core/constants/colors_const.dart';
import '../../../core/constants/radius_const.dart';
import '../../../widgets/register/signup/custom_input.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isChecked = false;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<FormState> _formKey1 = GlobalKey();

  void _submit() {
    if (_formKey.currentState!.validate()) {
    } else if (_formKey1.currentState!.validate()) {}
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
                    text: "Sign In",
                    text1: "Don't have an account? ",
                    text2: "Sign Up",
                    routeName: "/signUp",
                    height: 250,
                    width: 0,
                    color: Color(0xff293fcc),
                    isTrue: true,
                    // switchs: switchMode,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 240.h,
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
                        textEditingController: email,
                        isShow: false,
                        text: "Email",
                        icon: Icon(
                          Icons.email_outlined,
                          color: ColorConst.kBlackColor.withOpacity(.5),
                          size: 30,
                        ),
                        textInputType: TextInputType.emailAddress,
                      ),
                      InputWidget(
                        formkey: _formKey1,
                        textEditingController: password,
                        isShow: true,
                        text: "Password",
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
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          checkColor: Colors.white,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      Text(
                        "Remember me",
                        style: GoogleFonts.nunitoSans(),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/forgot");
                    },
                    child: Text(
                      "Forgot password?",
                      style: GoogleFonts.nunitoSans(
                          color: ColorConst.kBlueSecondaryColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {});
                  Auth().signIn(email.text, password.text, context);
                },
                child: Container(
                  width: 350.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                      color: ColorConst.kBlueColor,
                      borderRadius: RadiusConst.r12),
                  child: Center(
                    child: Text(
                      "Sign In",
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
          ],
        ),
      ),
    );
  }
}
