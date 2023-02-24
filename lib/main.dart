// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final queryData = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    final height = queryData.size.height;
    final width = queryData.size.width;
    return ScreenUtilInit(
      designSize: Size(width, height),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext, context) {
        return MaterialApp(
          title: "Quiza",
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Routes.instance.onGenerateRoute,
          initialRoute: "/onBoarding",
        );
      },
    );
  }
}
