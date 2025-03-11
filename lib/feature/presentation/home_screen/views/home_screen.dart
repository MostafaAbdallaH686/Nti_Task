import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projects/core/constant/constant.dart';
import 'package:projects/core/fucntion/add_distance.dart';
import 'package:projects/core/fucntion/app_navigator.dart';
import 'package:projects/core/resoures_manger/utiles/app_icons.dart';
import 'package:projects/core/resoures_manger/utiles/app_image.dart';
import 'package:projects/core/resoures_manger/utiles/app_text_style.dart';
import 'package:projects/core/widget/custom_app_bar_with_image.dart';
import 'package:projects/feature/presentation/add_note/views/add_note_screen.dart';
import 'package:projects/feature/presentation/edit/views/edit.dart';
import 'package:projects/feature/presentation/home_screen/views/home_screen_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });
  // final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AddDistance.heightDistance(20),
              CustomAppBarWithImage(
                onTapImage: () => AppNavigator.pushReplacement(
                  context,
                  Edit(),
                ),
                trailing: InkWell(
                  onTap: () {
                    AppNavigator.pushReplacement(context, AddNoteScreen());
                  },
                  child: SvgPicture.asset(
                    AppIcons.kAddIcon,
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              AddDistance.heightDistance(
                34,
              ),
              // HomeScreenData(),
              isFirstTime ? HomeScreeNoData() : HomeScreenData(),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreeNoData extends StatelessWidget {
  const HomeScreeNoData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddDistance.heightDistance(50),
        Text(
          "There are no tasks yet,\nPress the button\nTo add New Task ",
          textAlign: TextAlign.center,
          style: AppTextStyle.lexendDecaLight16,
        ),
        AddDistance.heightDistance(40),
        Image.asset(AppImage.kHomeScreenNoData),
      ],
    );
  }
}
