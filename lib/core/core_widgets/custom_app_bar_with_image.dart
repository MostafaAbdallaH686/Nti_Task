import 'package:flutter/material.dart';
import 'package:projects/core/constant/constant.dart';
import 'package:projects/core/resoures_manger/utiles/app_text_style.dart';

class CustomAppBarWithImage extends StatelessWidget {
  const CustomAppBarWithImage({super.key, this.onTapImage, this.trailing});
  final void Function()? onTapImage;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: InkWell(
        onTap: onTapImage,
        child: Container(
          height: 60,
          width: 60,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            "D:\bloc_ed\Nti_Task\assets\icons\plastflag.png",
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Text(
        "Hello!",
        style: AppTextStyle.lexendDecaLight12,
      ),
      subtitle: Text(
        name,
        style: AppTextStyle.lexendDecaLight16,
      ),
      trailing: trailing,
    );
  }
}
