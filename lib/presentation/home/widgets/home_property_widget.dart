import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/presentation/shared/widgets/custom_text.dart';
import 'package:machine_test/presentation/theme/app_colors.dart';

class HomePropertyWidget extends StatelessWidget {
  const HomePropertyWidget(
      {super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          label,
          size: 13.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.lightFontAccent,
        ),
        CustomText(
          value,
          size: 13.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.iconBlueColor,
        ),
      ],
    );
  }
}
