
import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:basketball_points/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import the necessary package

void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child:  const ScreenUtilInit(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ),
      ),
    );
  }
}
