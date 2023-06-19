import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:machine_test/presentation/home/business_logic/home_ui_cubit.dart';
import 'package:machine_test/presentation/home/business_logic/profile_cubit.dart';
import 'package:machine_test/presentation/home/screens/home_profile_screen.dart';
import 'package:machine_test/presentation/home/widgets/home_header_widget.dart';
import 'package:machine_test/presentation/shared/widgets/custom_text.dart';
import 'package:machine_test/presentation/theme/app_assets.dart';
import 'package:machine_test/presentation/theme/app_colors.dart';

class HomeFeedScreen extends StatefulWidget {
  const HomeFeedScreen({super.key});

  @override
  State<HomeFeedScreen> createState() => _HomeFeedScreenState();
}

class _HomeFeedScreenState extends State<HomeFeedScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _profileList = [
    {'name': 'Michael Simpson', 'date': 'Dec 8', 'time': '8.30 AM'},
    {'name': 'Kate Brown', 'date': 'Nov 2', 'time': '9.35 AM'},
    {'name': 'Hugh Jackman', 'date': 'Jan 18', 'time': '1.23 AM'},
    {'name': 'Ryan Reynolds', 'date': 'Apr 22', 'time': '11.11 AM'},
    {'name': 'Samurai Jack', 'date': 'Sep 1', 'time': '4.00 AM'},
    {'name': 'Darth Vader', 'date': 'Jul 22', 'time': '1.44 PM'},
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeUiCubit, HomeUiState>(
      builder: (context, state) {
        return Scaffold(
          key: _scaffoldKey,
          endDrawer: Drawer(
            child: ListView(
              children: const [
                ListTile(
                  title: Text('Dev: Abhijatya Johri'),
                ),
                ListTile(
                  title: Text('Mob: 7982283903'),
                ),
                ListTile(
                  title: Text('Email: abhijatyaritz@gmail.com'),
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  30.verticalSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeProfileScreen())),
                              child: CircleAvatar(
                                child: Image.asset(AppAssets.defaultAvatar),
                              ),
                            ),
                            10.horizontalSpace,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  'Welcome Back',
                                  size: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.lightFontAccent,
                                ),
                                CustomText(
                                  'Jessy',
                                  size: 22.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.darkFontAccent,
                                ),
                              ],
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () =>
                                  _scaffoldKey.currentState!.openEndDrawer(),
                              child: SvgPicture.asset(
                                AppAssets.sandwichIcon,
                                height: 30.h,
                                color: AppColors.darkFontAccent,
                              ),
                            ),
                          ],
                        ),
                        50.verticalSpace,
                        const HomeHeaderWidget(text: 'Upcoming consultations')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 190,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: _profileList.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            InkWell(
                              onTap: () {
                                context
                                    .read<HomeUiCubit>()
                                    .selectedIndex(index);
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                  vertical: 20.h,
                                ),
                                decoration: BoxDecoration(
                                  color: state.index == index
                                      ? AppColors.darkBlueAccent
                                      : AppColors.lightBlueAccent,
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          child: Image.asset(
                                              AppAssets.defaultAvatar),
                                        ),
                                        20.horizontalSpace,
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            CustomText(
                                              _profileList[index]['time']!,
                                              size: 12.sp,
                                              fontWeight: FontWeight.w700,
                                              color: state.index == index
                                                  ? Colors.white
                                                  : AppColors.activeIconAccent,
                                            ),
                                            CustomText(
                                              _profileList[index]['date']!,
                                              size: 12.sp,
                                              fontWeight: FontWeight.w700,
                                              color: state.index == index
                                                  ? Colors.white
                                                  : AppColors.iconBlueColor,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    18.verticalSpace,
                                    SizedBox(
                                      width: 60.w,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        _profileList[index]['name']!,
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            color: state.index == index
                                                ? Colors.white
                                                : AppColors.darkFontAccent,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    15.verticalSpace,
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w, vertical: 10.h),
                                      decoration: BoxDecoration(
                                        color: state.index == index
                                            ? AppColors.activeIconAccent
                                            : Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50.r),
                                      ),
                                      child: CustomText(
                                        state.index == index
                                            ? 'Join the Call'
                                            : 'Wait for Call',
                                        size: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: state.index == index
                                            ? Colors.white
                                            : AppColors.darkFontAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            10.horizontalSpace,
                          ],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Column(
                      children: [
                        const HomeHeaderWidget(
                          text: 'Patient Profiles',
                        ),
                        BlocBuilder<ProfileCubit, ProfileState>(
                          builder: (context, state) {
                            return SizedBox(
                              height: 100,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: AppColors.activeIconAccent,
                                    child: IconButton(
                                      icon: const Center(
                                          child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                      onPressed: () {
                                        context
                                            .read<ProfileCubit>()
                                            .increment();
                                      },
                                    ),
                                  ),
                                  10.horizontalSpace,
                                  Expanded(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: ListView.builder(
                                        physics: const ClampingScrollPhysics(),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: state.count,
                                        itemBuilder: (context, index) {
                                          return Row(
                                            children: [
                                              CircleAvatar(
                                                child: Image.asset(
                                                    AppAssets.defaultAvatar),
                                              ),
                                              15.horizontalSpace,
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: AppColors.activeIconAccent,
                                    child: IconButton(
                                      icon: const Center(
                                          child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      )),
                                      onPressed: () {
                                        setState(() {
                                          if (state.count > 0) {
                                            context
                                                .read<ProfileCubit>()
                                                .decrement();
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        5.horizontalSpace,
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 10.h),
                          decoration: BoxDecoration(
                            color: AppColors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 10.h),
                                decoration: BoxDecoration(
                                  color: AppColors.darkBlueAccent,
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                                child: CustomText(
                                  'Last enquiries',
                                  size: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              50.horizontalSpace,
                              CustomText(
                                'Reports',
                                size: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColors.iconBlueColor,
                              ),
                            ],
                          ),
                        ),
                        20.horizontalSpace,
                        20.verticalSpace,
                        Row(
                          children: [
                            Container(
                              height: 50.h,
                              width: 3.w,
                              color: AppColors.activeIconAccent,
                            ),
                            20.horizontalSpace,
                            CircleAvatar(
                              child: Image.asset(AppAssets.defaultAvatar),
                            ),
                            10.horizontalSpace,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  'Anna Kowalsky',
                                  size: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.darkFontAccent,
                                ),
                                CustomText(
                                  '7 views',
                                  size: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.activeIconAccent,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
