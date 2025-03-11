import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/core/resoures_manger/utiles/app_text_style.dart';
import 'package:projects/feature/presentation/add_note/mange/addtask_cubit.dart';
import 'package:projects/feature/presentation/add_note/mange/addtask_state.dart';
import 'package:projects/feature/presentation/home_screen/views/widgets/custom_in_progress_card_model.dart';

class CustomInProgressCard extends StatelessWidget {
  const CustomInProgressCard({
    super.key,
    required this.model,
  });
  final CustomInProgressCardModel model;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddtaskCubit(),
      child: Container(
        width: 234,
        decoration: BoxDecoration(
          color: model.backGroundColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: ListTile(
          title: BlocConsumer<AddtaskCubit, AddtaskState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Text(
                AddtaskCubit.get(context)
                    .addtaskRepo
                    .addtaskModel!
                    .taskname
                    .toString(),
                style: AppTextStyle.lexendDecaRegular12
                    .copyWith(color: model.colorTitle),
              );
            },
          ),
          //  Text(
          //   model.title,
          //   style: AppTextStyle.lexendDecaRegular12
          //       .copyWith(color: model.colorTitle),
          // ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: BlocConsumer<AddtaskCubit, AddtaskState>(
              listener: (context, state) {},
              builder: (context, state) {
                return Text(
                  AddtaskCubit.get(context)
                      .addtaskRepo
                      .addtaskModel!
                      .description
                      .toString(),
                  style: AppTextStyle.lexendDecaLight12
                      .copyWith(color: model.colorSubTitle),
                );
              },
            ),
            //  Text(
            //   model.subTitle,
            //   style: AppTextStyle.lexendDecaLight12
            //       .copyWith(color: model.colorSubTitle),
            // ),
          ),
          trailing: Container(
            margin: EdgeInsets.only(
              bottom: 20,
            ),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: model.backGroundColorIcon,
              borderRadius: BorderRadius.circular(4),
            ),
            child: BlocConsumer<AddtaskCubit, AddtaskState>(
              listener: (context, state) {},
              builder: (context, state) {
                return AddtaskCubit.get(context)
                    .addtaskRepo
                    .addtaskModel!
                    .addicon!;
              },
            ),
            //  SvgPicture.asset(
            //   model.icon,
            //   width: 12,
            //   height: 12,
            //   colorFilter: ColorFilter.mode(model.colorIcon, BlendMode.srcIn),
            // ),
          ),
        ),
      ),
    );
  }
}
