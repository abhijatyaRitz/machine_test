import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/presentation/home/business_logic/profile_cubit.dart';
import 'package:machine_test/presentation/home/screens/home_tabview_screen.dart';

import 'presentation/home/business_logic/home_ui_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => HomeUiCubit(),
              ),
              BlocProvider(
                create: (context) => ProfileCubit(),
              ),
            ],
            child: MaterialApp(
              home: TabViewScreen(),
            ),
          );
        });
  }
}
