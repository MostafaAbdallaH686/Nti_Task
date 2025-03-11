import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/core/resoures_manger/utiles/app_color.dart';
import 'package:projects/feature/presentation/add_note/mange/addtask_cubit.dart';
import 'package:projects/feature/presentation/home_screen/views/home_screen.dart';
import 'package:projects/feature/presentation/home_screen/views/home_screen_test.dart';
import 'package:projects/feature/presentation/home_screen/views/register.dart';
import 'package:projects/feature/presentation/login/log_screen.dart';
import 'package:projects/feature/presentation/name_screen/mange/name_cubit.dart';
import 'package:projects/feature/presentation/start_screen/views/strart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      theme: ThemeData(
        fontFamily: "Lexend Deca",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: AppColor.scaffoldBackground,
        appBarTheme: AppBarTheme(backgroundColor: AppColor.scaffoldBackground),
        useMaterial3: true,
      ),
      home: StrartScreen(),
    );
  }
}
