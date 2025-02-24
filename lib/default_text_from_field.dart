import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projects/appimages.dart';

class DefaultTextFromField extends StatelessWidget {
  const DefaultTextFromField({
    super.key,
    this.icon,
    this.label,
  });
  final Widget? icon;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, left: 15, top: 15),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        maxLines: null,
        decoration: InputDecoration(
          icon: icon,
          labelText: label,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
