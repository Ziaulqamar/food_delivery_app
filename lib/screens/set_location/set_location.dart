import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/screens/congrats_screen/congrats_screen.dart';
import 'package:food_delivery_app/widgets/background.dart';
import 'package:get/get.dart';

import '../../widgets/custom_back_button.dart';
import '../../widgets/custom_gradient_button.dart';
import 'components/setLocationWidet.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      svg: 'assets/svg/background.svg',
      stretched: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBackButton(onTap: () {
              Get.back();
            }),
            SizedBox(height: 20.h),
            Text(
              'Set Your Location',
              style: TextStyle(
                fontSize: 25.sp,
                fontFamily: 'BentonSans Bold',
                color: const Color(0xff09051C),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'This data will be displayed in your account\nprofile for security',
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: 'BentonSans Book',
                color: const Color(0xff09051C),
              ),
            ),
            SizedBox(height: 30.h),
            SetLocationContainer(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 10.h,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/locationPin.svg'),
                            SizedBox(width: 10.w),
                            Text(
                              'Your Location',
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 10.h),
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF6F6F6),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: GestureDetector(
                        child: Text(
                          'Set Location',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Center(
              child: CustomGradientButton(
                  ontap: () {
                    Get.to(CongratsScreen());
                  },
                  text: 'Next'),
            ),
          ],
        ),
      ),
    );
  }
}
