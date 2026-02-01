import 'package:flutter/cupertino.dart';

class ScreenSize {
  const ScreenSize._();

  static double getWidth(BuildContext context, {double percent = 100}) =>
      MediaQuery.of(context).size.width * percent / 100;

  static double getHeight(BuildContext context, {double percent = 100}) =>
      MediaQuery.of(context).size.height * percent / 100;
}
