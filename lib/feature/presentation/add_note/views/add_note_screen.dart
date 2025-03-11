import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projects/core/constant/constant.dart';
import 'package:projects/core/fucntion/add_distance.dart';
import 'package:projects/core/fucntion/app_navigator.dart';
import 'package:projects/core/resoures_manger/utiles/app_color.dart';
import 'package:projects/core/resoures_manger/utiles/app_icons.dart';
import 'package:projects/core/resoures_manger/utiles/app_text_style.dart';
import 'package:projects/core/widget/custom_button.dart';
import 'package:projects/core/widget/custom_text_form_field.dart';
import 'package:projects/feature/presentation/add_note/mange/addtask_cubit.dart';
import 'package:projects/feature/presentation/add_note/mange/addtask_state.dart';
import 'package:projects/feature/presentation/add_note/model/addtask_model.dart';
import 'package:projects/feature/presentation/add_note/views/widgets/task_group_model_add.dart';
import 'package:projects/feature/presentation/home_screen/views/home_screen.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final TextEditingController description = TextEditingController();

  final TextEditingController taskname = TextEditingController();
  final TextEditingController taskgroupname = TextEditingController();

  TaskGroupModelAdd? taskGroupModelAdd;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddtaskCubit(),
      child: BlocBuilder<AddtaskCubit, AddtaskState>(builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Add Task",
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
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                spacing: 20,
                children: [
                  AddDistance.heightDistance(40),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: taskGroupModelAdd == null ? 16 : 7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Task Group",
                          style: AppTextStyle.lexendDecaRegular9,
                        ),
                        SizedBox(
                          height: taskGroupModelAdd == null ? 20 : 40,
                          child: DropdownButton<TaskGroupModelAdd>(
                            isExpanded: true,
                            hint: Text(
                              "Select task group",
                              style: AppTextStyle.lexendDecaLight14,
                            ),
                            underline: SizedBox(),
                            dropdownColor: AppColor.whiteColor,
                            borderRadius: BorderRadius.circular(12),
                            value: taskGroupModelAdd,
                            items: kListOfTaskGroupModel.map((toElement) {
                              return DropdownMenuItem(
                                value: toElement,
                                child: SizedBox(
                                  child: ListTile(
                                    leading: toElement.log,
                                    title: Text(
                                      toElement.title,
                                      style: AppTextStyle.lexendDecaLight16,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (value) {
                              taskGroupModelAdd = value;
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomTextFormField(
                    controller: taskname,
                    labelText: "Task Name",
                    hintText: "Enter task name",
                  ),
                  CustomTextFormField(
                    controller: description,
                    labelText: "Description",
                    hintText: "Enter task description . . . ",
                    maxLines: null,
                    height: null,
                  ),
                  BlocConsumer<AddtaskCubit, AddtaskState>(
                      listener: (context, state) {
                    if (state is AddTaskSucessState) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }
                  }, builder: (context, state) {
                    if (state is AddTaskLoadingState) {
                      return CircularProgressIndicator(
                        backgroundColor: Colors.blue,
                      );
                    } else {
                      return Column(
                        children: [
                          CustomButton(
                            text: "Save",
                            onPressed: () {
                              isFirstTime = false;
                              AddtaskCubit.get(context).addtask(AddtaskModel(
                                addicon: taskGroupModelAdd!.log,
                                description: description.text,
                                taskname: taskname.text,
                                taskgroupname: taskgroupname.text,
                              ));
                            },
                          ),
                          // state is AddTaskSucessState
                          //     ? Text("")
                          //     : state is AddTaskErrorState
                          //         ? Text(state.error)
                          //         : const SizedBox()
                        ],
                      );
                    }
                  }),
                  // CustomButton(
                  //   text: "Save",
                  //   onPressed: () {
                  //     isFirstTime = false;
                  //     AppNavigator.pushReplacement(context, HomeScreen());
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
