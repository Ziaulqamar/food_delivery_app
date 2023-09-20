import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/config/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Logo.png',
        ),
        Column(
          children: [
            GradientText(
              'FoodNinja',
              style: TextStyle(
                fontFamily: 'Viga',
                fontSize: 40.sp,
                letterSpacing: 0.5,
              ),
              colors: const [
                AppColors.gradientGreen1,
                AppColors.gradientGreen2,
              ],
              gradientDirection: GradientDirection.ltr,
            ),
            Text(
              'Deliver Favourite Food',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 14.sp,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
