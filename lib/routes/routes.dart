import 'package:flutter/material.dart';
import 'package:quizai/Pages/HomePage/home_page.dart';
import 'package:quizai/Pages/Notification/notification_page.dart';
import 'package:quizai/Pages/Register/SignIn/sign_in_page.dart';
import 'package:quizai/Pages/Register/forgot%20password/forgot_password_page.dart';
import 'package:quizai/Pages/Register/signUp/sign_up_page.dart';
import 'package:quizai/Pages/leaderboard/leaderBoard_page.dart';
import 'package:quizai/Pages/onBoarding/on_boarding_page.dart';

import '../Pages/BottomNavigationBar/Custom_BottoAppBar.dart';

class Routes {
  static final Routes _instance = Routes._init();
  static Routes get instance => _instance;
  Routes._init();
  Route? onGenerateRoute(RouteSettings s) {
    switch (s.name) {
      case "/onBoarding":
        return MaterialPageRoute(builder: (ctx) => const OnBoarding());
      case "/signUp":
        return MaterialPageRoute(builder: (ctx) =>  SignUp());
      case "/signIn":
        return MaterialPageRoute(builder: (ctx) => const SignIn());
      case "/forgot":
        return MaterialPageRoute(builder: (ctx) =>  ForgotPassword());
      case "/home":
        return MaterialPageRoute(builder: (ctx) => HomePage());
      case "/bottom":
        return MaterialPageRoute(builder: (ctx) =>  CustomBottomAppBar());
      case "/notification":
        return MaterialPageRoute(builder: (ctx) => const NotificationPage());
      case "/leaderboard":
        return MaterialPageRoute(builder: (ctx) => LeaderBoard());
    }
    return null;
  }
}
