import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/colors.dart';

class CustomFilterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          color: AppColors.customOrange.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: SvgPicture.asset(
          'assets/icons/filterIcon.svg',
          fit: BoxFit.none,
        ),
      ),
    );
  }
}
