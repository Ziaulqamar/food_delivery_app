import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/colors.dart';

class PromotionalCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.gradientGreen1,
            AppColors.gradientGreen2,
          ],
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: SvgPicture.asset(
              'assets/svg/promotionCardPattern.svg',
            ),
          ),
          Positioned(
            bottom: 0,
            child: Row(
              children: [
                Image.asset('assets/images/promotionalCardImage.png'),
                SizedBox(width: 15.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Special Deal For\nOctober',
                      style: TextStyle(
                        fontFamily: 'BentonSans Bold',
                        color: Colors.white,
                        fontSize: 17.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: 82.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            fontFamily: 'BentonSans Bold',
                            fontSize: 10.sp,
                            color: AppColors.gradientGreen1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
