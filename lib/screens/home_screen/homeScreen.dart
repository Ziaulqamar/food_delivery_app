import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/config/colors.dart';
import 'package:food_delivery_app/screens/congrats_screen/congrats_screen.dart';
import 'package:food_delivery_app/widgets/background.dart';
import 'package:get/get.dart';

import 'components/filterButton.dart';
import 'components/homeScreenCustomTextField.dart';
import 'components/notificationButton.dart';
import 'components/promotionalCardWidget.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      svg: 'assets/svg/background.svg',
      stretched: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
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
            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeScreenCustomTextField(),
                CustomFilterButton(),
              ],
            ),
            SizedBox(height: 20.h),
            PromotionalCardWidget(),
          ],
        ),
      ),
    );
  }
}
