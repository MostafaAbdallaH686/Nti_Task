import 'package:flutter/material.dart';
import 'package:projects/core/resoures_manger/utiles/app_color.dart';
import 'package:projects/core/resoures_manger/utiles/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.height = 20,
    this.controller,
    this.validator,
    this.maxLines = 1,
  });
  final String labelText;
  final String hintText;
  final double? height;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            labelText,
            style: AppTextStyle.lexendDecaRegular9,
          ),
          SizedBox(
            height: height,
            child: TextFormField(
              maxLines: maxLines,
              controller: controller,
              validator: validator,
              style: AppTextStyle.lexendDecaExtraLight14,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.zero,
                border: outlineborder(),
                enabledBorder: outlineborder(),
                focusedBorder: outlineborder(),
                errorBorder: outlineborder(),
                disabledBorder: outlineborder(),
                hintText: hintText,
                hintStyle: AppTextStyle.lexendDecaExtraLight14,
                errorStyle: AppTextStyle.lexendDecaExtraLight14.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder outlineborder() => OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColor.whiteColor,
          width: 0,
        ),
        gapPadding: 0,
      );
}
