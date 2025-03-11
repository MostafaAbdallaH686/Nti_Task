import 'package:flutter/material.dart';

abstract class AddDistance {
  static Widget heightDistance(double value) {
    return SizedBox(
      height: value,
    );
  }

  static Widget widthDistance(double value) {
    return SizedBox(
      width: value,
    );
  }
}
