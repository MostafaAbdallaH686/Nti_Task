import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/core/constant/constant.dart';
import 'package:projects/core/widget/custom_text_form_field.dart';
import 'package:projects/feature/Regester/manger/register_cubit/register_cubit.dart';
import 'package:projects/feature/Regester/manger/register_cubit/register_state.dart';
import 'package:projects/feature/Regester/models/user_model.dart';
import 'package:projects/feature/presentation/login/log_screen.dart';

class Register extends StatelessWidget {
  Register({super.key});
  final TextEditingController name = TextEditingController();
  final TextEditingController age = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Register")),
        body: Column(
          children: [
            CustomTextFormField(
              controller: name,
              labelText: "name",
              hintText: '',
            ),
            CustomTextFormField(
              controller: age,
              labelText: "age",
              hintText: '',
            ),
            CustomTextFormField(
              controller: email,
              labelText: "email",
              hintText: '',
            ),
            CustomTextFormField(
              controller: password,
              labelText: "pass",
              hintText: '',
            ),
            BlocConsumer<RegisterCubit, RegisterState>(
                listener: (context, state) {
              if (state is RegisterSucessState)
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogScreen()));
            }, builder: (context, state) {
              if (state is RegisterLoadingState) {
                return CircularProgressIndicator();
              } else {
                return Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          RegisterCubit.get(context).register(UserModel(
                              name: name.text,
                              email: email.text,
                              password: password.text,
                              age: int.tryParse(age.text) ?? -1));
                        },
                        child: Text("save")),
                    state is RegisterSucessState
                        ? Text("Success")
                        : state is RegisterErrorState
                            ? Text(state.error)
                            : const SizedBox()
                  ],
                );
              }
            }),
          ],
        ),
      ),
    );
    // Scaffold(
    //   appBar: AppBar(centerTitle: true, title: Text("Register")),
    //   body: Column(
    //     children: [
    //       CustomTextFormField(
    //         labelText: "name",
    //         hintText: '',
    //       ),
    //       CustomTextFormField(
    //         labelText: "age",
    //         hintText: '',
    //       ),
    //       CustomTextFormField(
    //         labelText: "email",
    //         hintText: '',
    //       ),
    //       CustomTextFormField(
    //         labelText: "pass",
    //         hintText: '',
    //       ),
    //       TextButton(onPressed: () {}, child: Text("save")),
    //     ],
    //   ),
    // );
  }
}
