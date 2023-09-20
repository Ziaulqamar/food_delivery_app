import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/screens/upload_profile_picture/upload_profile_picture.dart';
import 'package:food_delivery_app/widgets/custom_gradient_button.dart';
import 'package:get/get.dart';

import '../../widgets/background.dart';
import '../../widgets/custom_back_button.dart';
import 'components/payment_method_container.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

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
            CustomBackButton(onTap: () {
              Get.back();
            }),
            SizedBox(height: 20.h),
            Text(
              'Payment Method',
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
            PaymentMethodsContainer(
              icon: 'assets/svg/paypal.svg',
              onTap: () {},
            ),
            spacing,
            PaymentMethodsContainer(
              icon: 'assets/svg/visa.svg',
              onTap: () {},
            ),
            spacing,
            PaymentMethodsContainer(
              icon: 'assets/svg/payoneer.svg',
              onTap: () {},
            ),
            const Spacer(),
            Center(
              child: CustomGradientButton(
                  ontap: () {
                    Get.to(const UploadProfilePicture());
                  },
                  text: 'Next'),
            ),
          ],
        ),
      ),
    );
  }
}
