import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCalenderScreen extends StatelessWidget {
  const HomeCalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Calender Screen'),
          20.verticalSpace,
          Text('Tap profile picture to open Profile page'),
        ],
      )),
    );
  }
}
