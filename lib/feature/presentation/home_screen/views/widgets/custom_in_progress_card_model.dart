import 'package:flutter/material.dart';

class CustomInProgressCardModel {
  final String title;
  final Color colorTitle;
  final String subTitle;
  final Color colorSubTitle;
  final String icon;
  final Color colorIcon;
  final Color backGroundColorIcon;
  final Color backGroundColor;

  CustomInProgressCardModel({
    required this.title,
    required this.colorTitle,
    required this.subTitle,
    required this.colorSubTitle,
    required this.icon,
    required this.colorIcon,
    required this.backGroundColorIcon,
    required this.backGroundColor,
  });
}
