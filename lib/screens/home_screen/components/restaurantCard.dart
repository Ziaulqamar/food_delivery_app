import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';

class RestaurantCard extends StatelessWidget {
  final String image;
  final String restaurantName;
  final String restaurantTime;
  RestaurantCard({
    required this.image,
    required this.restaurantName,
    required this.restaurantTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184.h,
      width: 147.w,
      margin: EdgeInsets.only(right: 20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.r),
        boxShadow: [
          BoxShadow(
            blurRadius: 50,
            offset: const Offset(12, 26),
            color: AppColors.dropshadowColor,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 73.h,
            width: 96.w,
            child: Image.asset(
              image,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            restaurantName,
            style: TextStyle(
              fontFamily: 'BentonSans Bold',
              fontSize: 16.sp,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            restaurantTime,
            style: TextStyle(
              fontFamily: 'BentonSans Book',
              fontSize: 13.sp,
            ),
          ),
        ],
      ),
    );
  }
}
