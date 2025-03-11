import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projects/core/fucntion/add_distance.dart';
import 'package:projects/core/fucntion/app_navigator.dart';
import 'package:projects/core/resoures_manger/utiles/app_constant._distance.dart';
import 'package:projects/core/resoures_manger/utiles/app_icons.dart';
import 'package:projects/core/resoures_manger/utiles/app_image.dart';
import 'package:projects/core/resoures_manger/utiles/app_text_style.dart';
import 'package:projects/core/widget/custom_button.dart';
import 'package:projects/feature/presentation/name_screen/views/name_screen.dart';

class StrartScreen extends StatelessWidget {
  const StrartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppConstantDistance.horizontalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AddDistance.heightDistance(90),
              Image.asset(
                AppImage.kStartScreenLogo,
                width: 250,
                height: 342.86,
                fit: BoxFit.fill,
              ),
              AddDistance.heightDistance(60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome To",
                    style: AppTextStyle.lexendDecaRegular24,
                  ),
                  Text(
                    "Do It !",
                    style: AppTextStyle.lexendDecaRegular24,
                  ),
                ],
              ),
              AddDistance.heightDistance(40),
              Text(
                "Ready to conquer your tasks? Let's Do It together.",
                style: AppTextStyle.lexendDecaMedium16,
                textAlign: TextAlign.center,
              ),
              AddDistance.heightDistance(55),
              CustomButton(
                text: "Let’s Start",
                onPressed: () {
                  AppNavigator.pushReplacement(context, NameScreen());
                },
              ),
              AddDistance.heightDistance(55),
            ],
          ),
        ),
      ),
    );
  }
}
