import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/config/colors.dart';
import 'package:food_delivery_app/screens/set_location/set_location.dart';
import 'package:food_delivery_app/widgets/background.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_back_button.dart';
import '../../../widgets/custom_gradient_button.dart';
import '../controller/upload_profile_controller.dart';

class PreviewProfilePicture extends StatelessWidget {
  const PreviewProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    UploadProfilePictureController controller =
        Get.put(UploadProfilePictureController());
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
              'Upload Your Profile\nPicture',
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
            SizedBox(height: 60.h),
            Center(
              child: SizedBox(
                height: 245.h,
                width: 245.w,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 245.h,
                        width: 245.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.r),
                          color: AppColors.gradientGreen1,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10.w,
                      top: 10.h,
                      child: Container(
                        height: 31.h,
                        width: 31.w,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.close,
                          size: 20.sp,
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
                    Get.to(const SetLocation());
                  },
                  text: 'Next'),
            ),
          ],
        ),
      ),
    );
  }
}
