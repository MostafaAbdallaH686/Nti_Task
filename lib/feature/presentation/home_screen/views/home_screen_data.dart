import 'package:flutter/material.dart';
import 'package:projects/core/constant/constant.dart';
import 'package:projects/core/fucntion/add_distance.dart';
import 'package:projects/core/resoures_manger/utiles/app_color.dart';
import 'package:projects/core/resoures_manger/utiles/app_text_style.dart';
import 'package:projects/feature/presentation/home_screen/views/widgets/custom_achieve_card.dart';
import 'package:projects/feature/presentation/home_screen/views/widgets/custom_in_progress_card.dart';
import 'package:projects/feature/presentation/home_screen/views/widgets/custom_task_group.dart';

class HomeScreenData extends StatelessWidget {
  const HomeScreenData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomAchieveCard(),
          AddDistance.heightDistance(
            26,
          ),
          Row(
            children: [
              Text(
                "In Progress",
                style: AppTextStyle.lexendDecaLight14,
              ),
              AddDistance.widthDistance(25),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                decoration: BoxDecoration(
                  color: AppColor.lightgreenColor.withValues(
                    alpha: 0.15,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "5",
                  style: AppTextStyle.lexendDecaRegular12.copyWith(
                    color: AppColor.greenColor,
                  ),
                ),
              ),
            ],
          ),
          AddDistance.heightDistance(23),
          SizedBox(
            height: 90,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomInProgressCard(
                model: kListOfInProgress[index],
              ),
              separatorBuilder: (context, index) =>
                  AddDistance.widthDistance(10),
              itemCount: 3,
            ),
          ),
          AddDistance.heightDistance(23),
          Text(
            "Task Group",
            style: AppTextStyle.lexendDecaLight14,
          ),
          AddDistance.heightDistance(23),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => SizedBox(
              height: 63,
              child: CustomTaskGroup(
                title: kListTaskGroupModel[index].title,
                icon: kListTaskGroupModel[index].icon,
                color: kListTaskGroupModel[index].color,
                background: kListTaskGroupModel[index].background,
                count: kListTaskGroupModel[index].count,
              ),
            ),
            separatorBuilder: (context, index) =>
                AddDistance.heightDistance(10),
            itemCount: 3,
          ),
          AddDistance.heightDistance(20),
        ],
      ),
    );
  }
}
