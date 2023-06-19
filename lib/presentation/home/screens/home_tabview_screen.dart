import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/presentation/home/screens/home_calender_screen.dart';
import 'package:machine_test/presentation/home/screens/home_card_screen.dart';
import 'package:machine_test/presentation/home/screens/home_feed_screen.dart';
import 'package:machine_test/presentation/home/screens/home_notifications_screen.dart';
import 'package:machine_test/presentation/shared/widgets/custom_text.dart';
import 'package:machine_test/presentation/theme/app_colors.dart';
import 'package:badges/badges.dart' as badges;

class TabViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeFeedScreen(),
    const HomeCardScreen(),
    const HomeCalenderScreen(),
    const HomeNotificationScreen(),
  ];

  final navBarUiBool = [true, false, false, false];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == 0
                    ? AppColors.activeIconAccent
                    : Colors.transparent,
              ),
              child: Icon(Icons.home,
                  color: _currentIndex == 0
                      ? Colors.white
                      : AppColors.activeIconAccent),
            ),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == 1
                    ? AppColors.activeIconAccent
                    : Colors.transparent,
              ),
              child: Icon(
                Icons.card_membership_outlined,
                color: _currentIndex == 1
                    ? Colors.white
                    : AppColors.activeIconAccent,
              ),
            ),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == 2
                    ? AppColors.activeIconAccent
                    : Colors.transparent,
              ),
              child: Icon(Icons.calendar_month,
                  color: _currentIndex == 2
                      ? Colors.white
                      : AppColors.activeIconAccent),
            ),
            label: 'Page 3',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == 3
                    ? AppColors.activeIconAccent
                    : Colors.transparent,
              ),
              child: badges.Badge(
                badgeContent: CustomText(
                  '3',
                  size: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                child: Icon(Icons.notifications,
                    color: _currentIndex == 3
                        ? Colors.white
                        : AppColors.activeIconAccent),
              ),
            ),
            label: 'Page 4',
          ),
        ],
      ),
    );
  }
}
