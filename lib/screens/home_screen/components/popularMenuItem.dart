import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';

class PopularMenuItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final String price;

  PopularMenuItem({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10.w,
        top: 10.h,
        bottom: 10.h,
        right: 10.w,
      ),
      height: 87.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.dropshadowColor,
            blurRadius: 50.r,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 64.h,
                width: 64.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    22.r,
                  ),
                ),
                child: Image.asset(
                  image,
                ),
              ),
              SizedBox(width: 20.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'BentonSans Medium',
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontFamily: 'BentonSans Regular',
                      fontSize: 14.sp,
                      color: AppColors.popularSubtitleColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            '\$$price',
            style: TextStyle(
              fontFamily: 'BentonSans Bold',
              fontSize: 22.sp,
              color: AppColors.popularMenuPriceColor,
            ),
          ),
        ],
      ),
    );
  }
}
