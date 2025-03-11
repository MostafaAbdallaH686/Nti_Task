import 'package:flutter/material.dart';
import 'package:projects/core/resoures_manger/utiles/app_color.dart';
import 'package:projects/core/resoures_manger/utiles/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: AppColor.greenColor,
          boxShadow: [
            BoxShadow(
              color: AppColor.greenColor.withAlpha(255),
              offset: Offset(0, 3),
              blurRadius: 7,
              spreadRadius: 1,
            ),
          ],
          borderRadius: BorderRadius.circular(18),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyle.lexendDecaLight19,
          ),
        ),
      ),
    );
    // return ElevatedButton(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: AppColor.greenColor,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(14),
    //     ),
    //     padding: EdgeInsets.symmetric(
    //       vertical: 12,
    //     ),
    //     elevation: 20,
    //     shadowColor: AppColor.greenColor,
    //   ),
    //   onPressed: onPressed,
    //   child: Text(
    //     text,
    //     style: AppTextStyle.lexendDecaLight19,
    //   ),
    // );
  }
}
