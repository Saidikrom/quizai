// ignore_for_file: constant_identifier_names, body_might_complete_normally_nullable

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../core/constants/colors_const.dart';
import '../../core/constants/radius_const.dart';
import '../../services/api_services.dart';
import '../../widgets/show_error_dialog.dart';
import 'triple_container_widget.dart';

enum AuthMode { Register, Login, Forgot }

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController fullName = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController confirm = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();

  AuthMode authMode = AuthMode.Register;
  bool isChecked = false;
  var isLoading = false;

  void switchAuthMode(bool isForgot) {
    if (authMode == AuthMode.Login) {
      setState(() {
        if (isForgot) {
          authMode = AuthMode.Forgot;
        } else {
          authMode = AuthMode.Register;
        }
      });
    } else if (authMode == AuthMode.Register) {
      setState(() {
        authMode = AuthMode.Login;
      });
    }
  }

  Future<void> _submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        isLoading = true;
      });
      try {
        if (authMode == AuthMode.Register) {
          await Provider.of<Auth>(context, listen: false)
              .signup(email.text, password.text);
        } else {
          if (authMode == AuthMode.Login) {
            await Provider.of<Auth>(context, listen: false)
                .signIn(email.text, password.text);
          }
        }
      } on HttpException catch (error) {
        var errorMessage = "sorry error occured";
        if (error.message.contains("EMAIL_EXISTS")) {
          errorMessage = "Email already exist";
        } else if (error.message.contains("INVALID_EMAIL")) {
          errorMessage = "Please enter valid email";
        } else if (error.message.contains("WEAK_PASSWORD")) {
          errorMessage = "simple password";
        } else if (error.message.contains("EMAIL_NOT_FOUND")) {
          errorMessage = "user not ound";
        } else if (error.message.contains("INVALID_PASSWORD")) {
          errorMessage = "Password is not true";
        }
        showErrorDialog(context, errorMessage);
      } catch (e) {
        var errorMessage = "sorry errors occured";
        showErrorDialog(context, errorMessage);
      }
      setState(() {
        isLoading = false;
      });
    }
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
              height: 260.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  TripleContainer(
                    height: 255.h,
                    width: 100.w,
                    color: const Color(0xff556bf2),
                    isTrue: false,
                  ),
                  TripleContainer(
                    height: 240.h,
                    width: 50.w,
                    color: const Color(0xff364dd9),
                    isTrue: false,
                  ),
                  TripleContainer(
                    text: authMode == AuthMode.Register
                        ? "Register New Account"
                        : authMode != AuthMode.Forgot
                            ? "Sign In"
                            : "Forgot Password",
                    text1: authMode == AuthMode.Register
                        ? "Already have an account? "
                        : authMode != AuthMode.Forgot
                            ? "Don't have an account? "
                            : "Forgot your Password? Don't Worry",
                    text2: authMode == AuthMode.Login
                        ? "Sign Up"
                        : authMode != AuthMode.Forgot
                            ? "Sign In"
                            : null,
                    routeName: "/signIn",
                    switchs: switchAuthMode,
                    height: 220.h,
                    width: 0.w,
                    color: const Color(0xff293fcc),
                    isTrue: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: authMode == AuthMode.Register
                  ? 500.h
                  : authMode != AuthMode.Forgot
                      ? 350.h
                      : 200.h,
              width: 429.w,
              child: ListView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                // shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        authMode == AuthMode.Register
                            ? Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 7.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Full Name",
                                      style: GoogleFonts.nunitoSans(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    SizedBox(
                                      width: 380.w,
                                      height: 80.h,
                                      child: TextFormField(
                                          controller: fullName,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              CupertinoIcons.person,
                                              color: ColorConst.kBlackColor
                                                  .withOpacity(.5),
                                              size: 30,
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ColorConst.kWhiteColor,
                                                width: 2.w,
                                              ),
                                              borderRadius: RadiusConst.r12,
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: RadiusConst.r12,
                                              borderSide: BorderSide(
                                                color: ColorConst.kBlackColor
                                                    .withOpacity(.2),
                                              ),
                                            ),
                                          ),
                                          validator: (fullname) {
                                            if (fullname!.isEmpty) {
                                              return "Please enter Full Name";
                                            }
                                          }),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(
                                height: 10.h,
                              ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 7.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5.w,
                              ),
                              SizedBox(
                                width: 380.w,
                                height: 80.h,
                                child: TextFormField(
                                    controller: email,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.email_outlined,
                                        color: ColorConst.kBlackColor
                                            .withOpacity(.5),
                                        size: 30,
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: ColorConst.kWhiteColor,
                                          width: 2.w,
                                        ),
                                        borderRadius: RadiusConst.r12,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: RadiusConst.r12,
                                        borderSide: BorderSide(
                                          color: ColorConst.kBlackColor
                                              .withOpacity(.2),
                                        ),
                                      ),
                                    ),
                                    validator: (emails) {
                                      if (emails!.isEmpty) {
                                        return "Please enter Email";
                                      } else if (!emails.contains("@")) {
                                        return "Please enter true email";
                                      }
                                    }),
                              ),
                            ],
                          ),
                        ),
                        authMode != AuthMode.Forgot
                            ? Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 7.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Password",
                                      style: GoogleFonts.nunitoSans(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    SizedBox(
                                      width: 380.w,
                                      height: 80.h,
                                      child: TextFormField(
                                          controller: password,
                                          obscureText: true,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              CupertinoIcons.lock,
                                              color: ColorConst.kBlackColor
                                                  .withOpacity(.5),
                                              size: 30,
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ColorConst.kWhiteColor,
                                                width: 2.w,
                                              ),
                                              borderRadius: RadiusConst.r12,
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: RadiusConst.r12,
                                              borderSide: BorderSide(
                                                color: ColorConst.kBlackColor
                                                    .withOpacity(.2),
                                              ),
                                            ),
                                          ),
                                          validator: (passwords) {
                                            if (passwords!.isEmpty) {
                                              return "Please enter password";
                                            } else if (passwords.length < 6) {
                                              return "Please enter more than 6 words";
                                            }
                                          }),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(
                                height: 10.h,
                              ),
                        authMode == AuthMode.Register
                            ? Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 7.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Confirm Password",
                                      style: GoogleFonts.nunitoSans(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    SizedBox(
                                      width: 380.w,
                                      height: 80.h,
                                      child: TextFormField(
                                          controller: confirm,
                                          obscureText: true,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              CupertinoIcons.lock,
                                              color: ColorConst.kBlackColor
                                                  .withOpacity(.5),
                                              size: 30,
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ColorConst.kWhiteColor,
                                                width: 2.w,
                                              ),
                                              borderRadius: RadiusConst.r12,
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: RadiusConst.r12,
                                              borderSide: BorderSide(
                                                color: ColorConst.kBlackColor
                                                    .withOpacity(.2),
                                              ),
                                            ),
                                          ),
                                          validator: (confirmed) {
                                            if (confirmed!.isEmpty) {
                                              return "Please enter password";
                                            } else if (password.text !=
                                                confirmed) {
                                              return "Password isn't the same";
                                            }
                                          }),
                                    ),
                                  ],
                                ),
                              )
                            : authMode != AuthMode.Forgot
                                ? Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                            switchAuthMode(true);
                                            // Navigator.of(context)
                                            //     .pushNamed("/forgot");
                                          },
                                          child: Text(
                                            "Forgot password?",
                                            style: GoogleFonts.nunitoSans(
                                                color: ColorConst
                                                    .kBlueSecondaryColor),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : const SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 250.h),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {});
                      _submit();

                      // Auth(userName: fullName.text)
                      //     .signup(email.text, password.text, context)
                      //     .then((_) {
                      //   setState(() {
                      //     !isLoading;
                      //   });
                      // });
                      // !isLoading;
                    },
                    child: Container(
                      width: 350.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                          color: ColorConst.kBlueColor,
                          borderRadius: RadiusConst.r12),
                      child: Center(
                        child: Text(
                          authMode == AuthMode.Register
                              ? isLoading
                                  ? "Loading..."
                                  : "Sign Up"
                              : authMode != AuthMode.Forgot
                                  ? isLoading
                                      ? "Loading..."
                                      : "Log In"
                                  : isLoading
                                      ? "Loading..."
                                      : 'Recover Password',
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
