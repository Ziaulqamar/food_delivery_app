import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/custom_gradient_button.dart';

class OnboardingScreen extends StatelessWidget {
  final String picture;
  final String title;
  final String title1;
  final String subtitle;
  final void Function()? ontap;
  const OnboardingScreen({super.key, 
    required this.picture,
    required this.title,
    required this.title1,
    required this.subtitle,
    required this.ontap,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: SvgPicture.asset(picture),
            ),
            Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.sp,
                    fontFamily: "BentonSans Medium",
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  title1,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.sp,
                    fontFamily: "BentonSans Medium",
                  ),
                ),
                SizedBox(height: 30.h),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: "BentonSans Book",
                  ),
                ),
              ],
            ),
            CustomGradientButton(
              text: 'Next',
              ontap: ontap,
            ),
          ],
        ),
      ),
    );
  }
}
