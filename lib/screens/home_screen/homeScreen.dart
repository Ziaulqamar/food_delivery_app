import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/config/colors.dart';
import 'package:food_delivery_app/widgets/background.dart';

import 'components/notificationButton.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      svg: 'assets/svg/background.svg',
      stretched: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Find Your\nFavourite Food',
                  style: TextStyle(
                    fontSize: 31.sp,
                    fontFamily: 'BentonSans Bold',
                  ),
                ),
                const NotificationButton(),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 30.h,
                  width: 100.w,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: AppColors.customOrange,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
