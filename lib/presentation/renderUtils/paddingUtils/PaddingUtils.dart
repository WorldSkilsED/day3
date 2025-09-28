import 'package:flutter/cupertino.dart';

class PaddingUtils {

 static Widget paddingHorizontal(double horizontal, Widget child) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal),
      child: child,
    );
  }
  static Widget paddingTop(double value) {
   return SizedBox(height: value,);
  }
}