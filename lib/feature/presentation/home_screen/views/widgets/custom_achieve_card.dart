import 'package:flutter/material.dart';
import 'package:projects/core/fucntion/add_distance.dart';
import 'package:projects/core/resoures_manger/utiles/app_color.dart';
import 'package:projects/core/resoures_manger/utiles/app_text_style.dart';

class CustomAchieveCard extends StatelessWidget {
  const CustomAchieveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 22),
      decoration: BoxDecoration(
        color: AppColor.greenColor,
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your today’s tasks",
                style: AppTextStyle.lexendDecaRegular14,
              ),
              Text(
                "almost done!",
                style: AppTextStyle.lexendDecaRegular14,
              ),
            ],
          ),
          AddDistance.heightDistance(20),
          SizedBox(
            height: 51,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "80",
                      style: AppTextStyle.lexendDecaMedium40,
                    ),
                    Text(
                      "%",
                      style: AppTextStyle.lexendDecaRegular24.copyWith(
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          14,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 18),
                    ),
                    child: Text(
                      "View Tasks",
                      style: AppTextStyle.lexendDecaRegular15,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
