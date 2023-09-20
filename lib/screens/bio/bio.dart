import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/screens/payment_method/payment_method.dart';
import 'package:food_delivery_app/widgets/customTextField.dart';
import 'package:food_delivery_app/widgets/custom_gradient_button.dart';
import 'package:get/get.dart';

import '../../widgets/background.dart';

class Bio extends StatelessWidget {
  const Bio({super.key});

  @override
  Widget build(BuildContext context) {
    SizedBox spacing = SizedBox(height: 20.h);
    return Background(
      svg: 'assets/svg/background.svg',
      stretched: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Text(
              'Fill in your bio to get started',
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
            spacing,
            const CustomTextField(hintText: 'First Name'),
            spacing,
            const CustomTextField(hintText: 'Last Name'),
            spacing,
            const CustomTextField(hintText: 'Mobile Number'),
            const Spacer(),
            Center(
              child: CustomGradientButton(
                  ontap: () {
                    Get.to(const PaymentMethods());
                  },
                  text: 'Next'),
            ),
          ],
        ),
      ),
    );
  }
}
