import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/core/constant/constant.dart';
import 'package:projects/core/fucntion/add_distance.dart';
import 'package:projects/core/fucntion/app_navigator.dart';
import 'package:projects/core/resoures_manger/utiles/app_constant._distance.dart';
import 'package:projects/core/resoures_manger/utiles/app_image.dart';
import 'package:projects/core/widget/custom_button.dart';
import 'package:projects/core/widget/custom_text_form_field.dart';
import 'package:projects/feature/Regester/models/user_model.dart';
import 'package:projects/feature/presentation/home_screen/views/home_screen.dart';
import 'package:projects/feature/presentation/name_screen/mange/name_cubit.dart';
import 'package:projects/feature/presentation/name_screen/mange/name_state.dart';
import 'package:projects/feature/presentation/name_screen/repo/name_repo.dart';

class NameScreen extends StatefulWidget {
  NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  TextEditingController _textEditingController = name.isEmpty
      ? TextEditingController()
      : TextEditingController(text: name);
  double height = 20;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NameCubit(),
      child: BlocBuilder<NameCubit, NameState>(builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Form(
              key: _globalKey,
              autovalidateMode: _autovalidateMode,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    AppImage.kPrimaryImage,
                    height: 446,
                    fit: BoxFit.fill,
                  ),
                  AddDistance.heightDistance(60),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppConstantDistance.horizontalPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomTextFormField(
                          controller: NameCubit.get(context).name,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please enter validate name";
                            } else {
                              return null;
                            }
                          },
                          labelText: "Your Name",
                          hintText: "type your name here",
                          height: height,
                        ),
                        AddDistance.heightDistance(62),
                        BlocConsumer<NameCubit, NameState>(
                            listener: (context, state) {
                          if (state is NameSucessState) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          }
                        }, builder: (context, state) {
                          if (state is NameLoadingState) {
                            return CircularProgressIndicator(
                              backgroundColor: Colors.blue,
                            );
                          } else {
                            return Column(
                              children: [
                                CustomButton(
                                    text: "Save",
                                    onPressed: () {
                                      NameCubit.get(context).update();
                                    }),
                                state is NameSucessState
                                    ? Text("Success")
                                    : state is NameErrorState
                                        ? Text(state.error)
                                        : const SizedBox()
                              ],
                            );
                          }
                        }),
                        // CustomButton(
                        //   text: "Save",
                        //   onPressed: () {
                        //     if (_globalKey.currentState!.validate()) {
                        //       name = _textEditingController.text;
                        //       AppNavigator.pushReplacement(
                        //           context,
                        //           HomeScreen(
                        //               // name: _textEditingController.text,
                        //               ));
                        //     } else {
                        //       _autovalidateMode = AutovalidateMode.always;
                        //       height = 40;
                        //       setState(() {});
                        //     }
                        //   },
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
