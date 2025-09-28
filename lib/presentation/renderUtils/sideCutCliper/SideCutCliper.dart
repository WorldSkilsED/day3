import 'package:flutter/material.dart';

class SideCutClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    final mainRect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      const Radius.circular(20),
    );
    path.addRRect(mainRect);

    // Параметры впадины
    const cutWidth = 15.0;
    const cutHeight = 70.0;
    final cutTop = (size.height - cutHeight) / 2.4;
    final cutBottom = cutTop + cutHeight;

    final cutPath = Path();
    cutPath.moveTo(0, cutTop);

    cutPath.quadraticBezierTo(
      cutWidth * 0.6, cutTop + 19,
      cutWidth * 0.3, cutTop + 9,
    );

    cutPath.cubicTo(
      cutWidth, cutTop + cutHeight * 0.4,
      cutWidth, cutBottom - cutHeight * 0.4,
      cutWidth * 0.6, cutBottom - 15,
    );

    cutPath.quadraticBezierTo(
      cutWidth * 0.3, cutBottom - 9,
      0, cutBottom,
    );

    cutPath.close();

    return Path.combine(
      PathOperation.difference,
      Path()..addRRect(mainRect),
      cutPath,
    );
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
