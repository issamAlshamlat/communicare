import 'package:flutter/material.dart';

class AppCustomClipper extends CustomClipper<Path> {
  final double radius;

  AppCustomClipper(this.radius);

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - radius, 0);
    path.arcToPoint(
      Offset(size.width, radius),
      radius: Radius.circular(radius),
      clockwise: true,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height - radius);
    // path.arcToPoint(
    //   Offset(radius, size.height),
    //   radius: Radius.circular(radius),
    //   clockwise: false,
    // );
    // path.lineTo(size.width - radius, size.height);
    // path.arcToPoint(
    //   Offset(size.width, size.height - radius),
    //   radius: Radius.circular(radius),
    //   clockwise: false,
    // );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
