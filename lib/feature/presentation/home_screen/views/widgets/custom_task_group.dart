import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projects/core/resoures_manger/utiles/app_color.dart';
import 'package:projects/core/resoures_manger/utiles/app_text_style.dart';

class CustomTaskGroup extends StatelessWidget {
  const CustomTaskGroup({
    super.key,
    required this.title,
    required this.background,
    required this.color,
    required this.icon,
    required this.count,
  });
  final String title;
  final Color background;
  final Color color;
  final String icon;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 6,
          ),
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(
              4,
            ),
          ),
          child: SvgPicture.asset(
            icon,
            width: 19,
            height: 19,
            colorFilter: ColorFilter.mode(
              color,
              BlendMode.srcIn,
            ),
          ),
        ),
        title: Text(
          title,
          style: AppTextStyle.lexendDecaLight14,
        ),
        trailing: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 3,
            vertical: 1,
          ),
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(
              4,
            ),
          ),
          child: Text(
            "$count",
            style: AppTextStyle.lexendDecaLight14.copyWith(
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
