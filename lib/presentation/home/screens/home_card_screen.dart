import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCardScreen extends StatelessWidget {
  const HomeCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Card Screen'),
          20.verticalSpace,
          Text('Tap profile picture to open Profile page'),
        ],
      )),
    );
  }
}
