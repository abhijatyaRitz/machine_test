import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/presentation/home/widgets/home_property_widget.dart';
import 'package:machine_test/presentation/shared/widgets/custom_text.dart';
import 'package:machine_test/presentation/theme/app_assets.dart';
import 'package:machine_test/presentation/theme/app_colors.dart';

class HomeProfileScreen extends StatefulWidget {
  const HomeProfileScreen({super.key});

  @override
  State<HomeProfileScreen> createState() => _HomeProfileScreenState();
}

class _HomeProfileScreenState extends State<HomeProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              20.verticalSpace,
              Row(
                children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back,
                        color: AppColors.iconBlueColor,
                      )),
                  60.horizontalSpace,
                  CustomText('Profile Details',
                      size: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkFontAccent)
                ],
              ),
              20.verticalSpace,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
                decoration: BoxDecoration(
                  color: AppColors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeProfileScreen())),
                      child: CircleAvatar(
                        child: Image.asset(AppAssets.defaultAvatar),
                      ),
                    ),
                    10.horizontalSpace,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          'Jessy Simpson',
                          size: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.darkFontAccent,
                        ),
                        5.verticalSpace,
                        CustomText(
                          'Male',
                          size: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.lightFontAccent,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              30.verticalSpace,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                decoration: BoxDecoration(
                  color: AppColors.darkBlueAccent,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          'Share your',
                          size: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                        5.verticalSpace,
                        CustomText(
                          'patient profile',
                          size: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    70.horizontalSpace,
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        color: AppColors.activeIconAccent,
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      child: CustomText(
                        'Share profile',
                        size: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              25.verticalSpace,
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  'Patient Details',
                  size: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.darkFontAccent,
                ),
              ),
              20.verticalSpace,
              HomePropertyWidget(label: 'Name', value: 'Jessy'),
              18.verticalSpace,
              HomePropertyWidget(label: 'Surname', value: 'Simpson'),
              18.verticalSpace,
              HomePropertyWidget(
                  label: 'Date of Birth', value: 'July 16, 1990 (30y)'),
              18.verticalSpace,
              HomePropertyWidget(label: 'City', value: 'London'),
              18.verticalSpace,
              HomePropertyWidget(label: 'Country', value: 'United Kingdom'),
              25.verticalSpace,
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  'Shared Profile',
                  size: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.darkFontAccent,
                ),
              ),
              20.verticalSpace,
              Row(
                children: [
                  5.horizontalSpace,
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      color: AppColors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          'Dec 8',
                          size: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.darkFontAccent,
                        ),
                        CustomText(
                          '8.30 AM',
                          size: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.iconBlueColor,
                        ),
                      ],
                    ),
                  ),
                  20.horizontalSpace,
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
      ),
    );
  }
}
