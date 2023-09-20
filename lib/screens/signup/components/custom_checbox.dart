import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../config/colors.dart';
import '../controller/signup_controller.dart';

class CustomCheckbox extends StatelessWidget {
  final void Function()? onTap;
  final bool isChecked;
  const CustomCheckbox({super.key, 
    required this.onTap,
    required this.isChecked,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 18.h,
        width: 18.w,
        decoration: BoxDecoration(
          border: isChecked == false
              ? null
              : Border.all(color: Colors.grey.shade400),
          gradient: LinearGradient(
            colors: isChecked
                ? [Colors.grey.shade300, Colors.grey.shade300]
                : [AppColors.gradientGreen1, AppColors.gradientGreen2],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          shape: BoxShape.circle,
        ),
        child: isChecked == false
            ? SvgPicture.asset(
                'assets/icons/check.svg',
                color: Colors.white,
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}

class SignedInCheckBox extends StatelessWidget {
  final String title;
  const SignedInCheckBox({super.key, 
    required this.title,
    required this.controller,
  });

  final SignupController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          CustomCheckbox(
            onTap: () {
              controller.isSignedInChecked.value =
                  !controller.isSignedInChecked.value;
            },
            isChecked: controller.isSignedInChecked.value,
          ),
          SizedBox(width: 10.w),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'BentonSans Book',
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}

class EmailMeCheckBox extends StatelessWidget {
  final String title;
  const EmailMeCheckBox({super.key, 
    required this.title,
    required this.controller,
  });

  final SignupController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          CustomCheckbox(
            onTap: () {
              controller.isEmailMeChecked.value =
                  !controller.isEmailMeChecked.value;
            },
            isChecked: controller.isEmailMeChecked.value,
          ),
          SizedBox(width: 10.w),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'BentonSans Book',
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
