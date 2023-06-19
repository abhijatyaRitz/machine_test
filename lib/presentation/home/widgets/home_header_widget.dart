import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/presentation/shared/widgets/custom_text.dart';
import 'package:machine_test/presentation/theme/app_colors.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key, this.onPressed, required this.text});

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text,
          size: 20.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.darkFontAccent,
        ),
        IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.arrow_forward,
              color: AppColors.iconBlueColor,
            ))
      ],
    );
  }
}
