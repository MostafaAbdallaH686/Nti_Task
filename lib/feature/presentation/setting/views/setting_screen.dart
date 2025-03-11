import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projects/core/fucntion/app_navigator.dart';
import 'package:projects/core/resoures_manger/utiles/app_color.dart';
import 'package:projects/core/resoures_manger/utiles/app_icons.dart';
import 'package:projects/core/resoures_manger/utiles/app_text_style.dart';
import 'package:projects/feature/presentation/home_screen/views/home_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool valueSwitch = true;
  bool valueCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Settings",
          style: AppTextStyle.lexendDecaLight19.copyWith(
            color: AppColor.blackTextColor,
          ),
        ),
        leading: InkWell(
          onTap: () {
            AppNavigator.pushReplacement(context, HomeScreen());
          },
          child: SvgPicture.asset(
            AppIcons.kArrowBack,
            width: 21,
            height: 21,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notification",
                  style: AppTextStyle.lexendDecaLight20,
                ),
                SizedBox(
                  width: 80,
                  height: 50,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Switch(
                      value: valueSwitch,
                      activeColor: AppColor.whiteColor,
                      activeTrackColor: AppColor.greenColor,
                      onChanged: (value) {
                        valueSwitch = value;
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Enable Cloud",
                  style: AppTextStyle.lexendDecaLight20,
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Checkbox(
                      activeColor: AppColor.greenColor,
                      value: valueCheck,
                      onChanged: (value) {
                        valueCheck = value!;
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
