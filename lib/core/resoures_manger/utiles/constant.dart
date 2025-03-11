import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projects/core/resoures_manger/utiles/app_color.dart';
import 'package:projects/core/resoures_manger/utiles/app_icons.dart';
import 'package:projects/feature/presentation/add_note/views/widgets/task_group_model_add.dart';
import 'package:projects/feature/presentation/home_screen/views/widgets/custom_in_progress_card_model.dart';
import 'package:projects/feature/presentation/home_screen/views/widgets/task_group_model.dart';

List<CustomInProgressCardModel> kListOfInProgress = [
  CustomInProgressCardModel(
      title: "Work Task",
      colorTitle: AppColor.whiteColor,
      subTitle: "Add New Features",
      colorSubTitle: AppColor.whiteColor,
      icon: AppIcons.kWorkLogo,
      colorIcon: AppColor.whiteColor,
      backGroundColorIcon: AppColor.lightgreenColor,
      backGroundColor: AppColor.blackColor),
  CustomInProgressCardModel(
      title: "Personal Task",
      colorTitle: AppColor.grayColor,
      subTitle: "Improve my English skills by trying to speek",
      colorSubTitle: AppColor.grayColor,
      icon: AppIcons.kPersonalLogo,
      colorIcon: AppColor.lightWhite,
      backGroundColorIcon: AppColor.lightgreenColor,
      backGroundColor: AppColor.lightWhite),
  CustomInProgressCardModel(
      title: "Home Task",
      colorTitle: AppColor.grayColor,
      subTitle: "Add new feature for Do It app and commit it",
      colorSubTitle: AppColor.blackTextColor,
      icon: AppIcons.kHomeLogo,
      colorIcon: AppColor.whiteColor,
      backGroundColorIcon: AppColor.redColor,
      backGroundColor: AppColor.lightRedColor),
];

List<TaskGroupModel> kListTaskGroupModel = [
  TaskGroupModel(
    title: "Personal Task",
    icon: AppIcons.kPersonalLogo,
    color: AppColor.greenColor,
    background: AppColor.lightgreenColor.withValues(
      alpha: 0.15,
    ),
    count: 5,
  ),
  TaskGroupModel(
    title: "Home Task",
    icon: AppIcons.kHomeLogo,
    color: AppColor.redColor,
    background: AppColor.redColor.withValues(
      alpha: 0.15,
    ),
    count: 3,
  ),
  TaskGroupModel(
    title: "Work Task",
    icon: AppIcons.kWorkLogo,
    color: AppColor.whiteColor,
    background: AppColor.blackColor,
    count: 1,
  ),
];

bool isFirstTime = true;
String name = "";

List<TaskGroupModelAdd> kListOfTaskGroupModel = [
  TaskGroupModelAdd(
    title: "Home",
    log: Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColor.redColor.withValues(
          alpha: 0.15,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: SvgPicture.asset(
        AppIcons.kHomeLogo,
        width: 12,
        height: 12,
        colorFilter: ColorFilter.mode(AppColor.redColor, BlendMode.srcIn),
      ),
    ),
  ),
  TaskGroupModelAdd(
    title: "Work",
    log: Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColor.blackColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: SvgPicture.asset(
        AppIcons.kWorkLogo,
        width: 12,
        height: 12,
        colorFilter: ColorFilter.mode(AppColor.whiteColor, BlendMode.srcIn),
      ),
    ),
  ),
  TaskGroupModelAdd(
    title: "person",
    log: Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColor.greenColor.withValues(
          alpha: 0.15,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: SvgPicture.asset(
        AppIcons.kPersonalLogo,
        width: 12,
        height: 12,
        colorFilter: ColorFilter.mode(AppColor.greenColor, BlendMode.srcIn),
      ),
    ),
  ),
];
