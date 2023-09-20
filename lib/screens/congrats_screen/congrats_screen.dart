import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/config/colors.dart';
import 'package:food_delivery_app/screens/home_screen/homeScreen.dart';
import 'package:food_delivery_app/widgets/background.dart';
import 'package:get/get.dart';

import '../../widgets/custom_gradient_button.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      svg: 'assets/svg/congratsScreenPattern.svg',
      stretched: true,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(
              'assets/svg/congrats.svg',
            ),
            Container(
              margin: EdgeInsets.only(top: 30.h),
              alignment: Alignment.center,
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    'Congrats!',
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gradientGreen1,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Your Profile Is Ready To Use',
                    style: TextStyle(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Center(
              child: CustomGradientButton(
                  ontap: () {
                    Get.to(const Homescreen());
                  },
                  text: 'Try Order'),
            ),
          ],
        ),
      ),
    );
  }
}
