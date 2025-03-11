import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/core/constant/constant.dart';
import 'package:projects/core/resoures_manger/utiles/app_image.dart';
import 'package:projects/core/resoures_manger/utiles/app_text_style.dart';
import 'package:projects/feature/presentation/name_screen/mange/name_cubit.dart';
import 'package:projects/feature/presentation/name_screen/mange/name_state.dart';

class CustomAppBarWithImage extends StatelessWidget {
  const CustomAppBarWithImage({super.key, this.onTapImage, this.trailing});
  final void Function()? onTapImage;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NameCubit(),
      child: ListTile(
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
              AppImage.kPrimaryImage,
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: Text(
          "Hello!",
          style: AppTextStyle.lexendDecaLight12,
        ),
        subtitle: BlocConsumer<NameCubit, NameState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Text(
              NameCubit.get(context).nameRepo.userModel!.name,
              style: AppTextStyle.lexendDecaLight16,
            );
          },
        ),
        trailing: trailing,
      ),
    );
  }
}
