import 'package:flutter/material.dart';

abstract class AppNavigator {
  static void push(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => screen,
      ),
    );
  }

  static void pushReplacement(BuildContext context, Widget screen) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => screen,
      ),
    );
  }

  static void pop(BuildContext context) {
    Navigator.pop(
      context,
    );
  }
}
