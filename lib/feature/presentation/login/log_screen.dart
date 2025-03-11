import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/core/widget/custom_text_form_field.dart';
import 'package:projects/feature/presentation/login/manger/cubit/login_cubit.dart';
import 'package:projects/feature/presentation/login/manger/login_state.dart';
import 'package:projects/feature/presentation/login/model/user_model_login.dart';

class LogScreen extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Login")),
        body: Column(
          children: [
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
            BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
              print(state.toString());
            }, builder: (context, state) {
              if (state is LoginLoadingState) {
                return CircularProgressIndicator();
              } else {
                return Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          LoginCubit.get(context).login(UserModelLogin(
                            email: email.text,
                            password: password.text,
                          ));
                        },
                        child: Text("Login")),
                  ],
                );
              }
            }),
          ],
        ),
      ),
    );
  }
}
