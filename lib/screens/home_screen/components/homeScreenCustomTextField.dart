import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/colors.dart';

class HomeScreenCustomTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 260.w,
      child: TextField(
        style: const TextStyle(color: AppColors.customOrange),
        cursorColor: AppColors.customOrange,
        decoration: InputDecoration(
          fillColor: AppColors.customOrange.withOpacity(0.1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide.none,
          ),
          filled: true,
          hintText: 'What do you want to order?',
          prefixIcon: SvgPicture.asset(
            'assets/icons/searchIcon.svg',
            fit: BoxFit.none,
          ),
          hintStyle: TextStyle(
            color: AppColors.searchbarHintTextColor.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
