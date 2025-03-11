import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projects/core/fucntion/add_distance.dart';
import 'package:projects/core/fucntion/app_navigator.dart';
import 'package:projects/core/resoures_manger/utiles/app_color.dart';
import 'package:projects/core/resoures_manger/utiles/app_icons.dart';
import 'package:projects/core/resoures_manger/utiles/app_text_style.dart';
import 'package:projects/core/widget/custom_app_bar_with_image.dart';
import 'package:projects/feature/presentation/name_screen/views/name_screen.dart';
import 'package:projects/feature/presentation/setting/views/setting_screen.dart';

class Edit extends StatelessWidget {
  const Edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AddDistance.heightDistance(19),
            CustomAppBarWithImage(),
            AddDistance.heightDistance(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                spacing: 20,
                children: [
                  InkWell(
                    onTap: () =>
                        AppNavigator.pushReplacement(context, NameScreen()),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        leading: SvgPicture.asset(AppIcons.kProfile),
                        title: Text(
                          "Update Profile",
                          style: AppTextStyle.lexendDecaLight16,
                        ),
                        trailing: SvgPicture.asset(
                          AppIcons.kArrowGo,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        AppNavigator.pushReplacement(context, SettingScreen()),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        leading: SvgPicture.asset(AppIcons.kSetting),
                        title: Text(
                          "Settings",
                          style: AppTextStyle.lexendDecaLight16,
                        ),
                        trailing: SvgPicture.asset(
                          AppIcons.kArrowGo,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
