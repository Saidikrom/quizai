import 'package:flutter/material.dart';
import 'package:quizai/Pages/Auth/auth_page.dart';
import 'package:quizai/Pages/HomePage/home_page.dart';
import 'package:quizai/Pages/Notification/notification_page.dart';
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
      case "/home":
        return MaterialPageRoute(builder: (ctx) => HomePage());
      case "/bottom":
        return MaterialPageRoute(builder: (ctx) => CustomBottomAppBar());
      case "/notification":
        return MaterialPageRoute(builder: (ctx) => const NotificationPage());
      case "/leaderboard":
        return MaterialPageRoute(builder: (ctx) => LeaderBoard());
      case "/auth":
        return MaterialPageRoute(builder: (ctx) => const AuthPage());
    }
    return null;
  }
}
