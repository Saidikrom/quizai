import 'package:flutter/material.dart';

class RadiusConst {
  static Radius r60 = const Radius.circular(60);
  static Radius r25 = const Radius.circular(25);
  static BorderRadius r50 = BorderRadius.circular(60);
  static BorderRadius rc25 = BorderRadius.circular(25);
  static Radius r40 = const Radius.circular(40);
  static BorderRadius r5 = BorderRadius.circular(5);
  static BorderRadius r12 = BorderRadius.circular(12);
  static BorderRadius r20 = BorderRadius.circular(20);
}

class HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height * .25)
      ..lineTo(size.width, size.height * .75)
      ..lineTo(size.width * .5, size.height)
      ..lineTo(0, size.height * .75)
      ..lineTo(0, size.height * .25)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
