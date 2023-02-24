// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizai/models/colors_model.dart';
import 'package:quizai/models/onBoarding_text_model.dart';
import '../../core/constants/colors_const.dart';
import 'categories_topics_part.dart';
import 'home_page_top_part.dart';
import 'listed_buttons_part.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  Function()? handle;
  HomePage({
    super.key,
    this.handle,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? activeIndex;
  @override
  Widget build(BuildContext context) {
    // const apiKey = "AIzaSyCe0AduwKFXWGa-LyAdy1IRBt-SGuM0_LM";

    Future<void> signup() async {
      final url = Uri.parse(
          "https://quizai-295bc-default-rtdb.firebaseio.com/auth.json");

      final response = await http.post(
        url,
        body: jsonEncode(
          {
            "email": "email",
            "password": "password",
            "returnSecureToken": true,
          },
        ),
      );
      print(jsonDecode(response.body));
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 420.h,
              child: Stack(
                children: [
                  HomePageTop(
                    handle: widget.handle,
                  ),
                  Positioned(
                    top: 200,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 160.h,
                      child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return CreatePart(
                              color1: colorM[index]![0],
                              color2: colorM[index]![1],
                              text1: Quizes[index]![0],
                              text2: Quizes[index]![1],
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose Categories",
                    style: GoogleFonts.nunitoSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      signup();
                    },
                    child: Text(
                      "See All",
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w600,
                          color: ColorConst.kBlueSecondaryColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 300,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, i) {
                    return SizedBox(
                      height: 200.h,
                      child: Stack(
                        children: [
                          i % 2 == 0
                              ? Positioned(
                                  bottom: 30,
                                  child: CategoryTopics(
                                    imgurl: Categories[i]![0],
                                    text: Categories[i]![1],
                                    color1: int.parse(Categories[i]![2]),
                                    color2: int.parse(Categories[i]![3]),
                                  ),
                                )
                              : CategoryTopics(
                                  imgurl: Categories[i]![0],
                                  text: Categories[i]![1],
                                  color1: int.parse(Categories[i]![2]),
                                  color2: int.parse(Categories[i]![3]),
                                ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
