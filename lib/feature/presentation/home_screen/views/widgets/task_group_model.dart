import 'package:flutter/material.dart';

class TaskGroupModel {
  final String title;
  final Color background;
  final Color color;
  final String icon;
  final int count;

  TaskGroupModel(
      {required this.title,
      required this.background,
      required this.color,
      required this.icon,
      required this.count});
}
