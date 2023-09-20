// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/config/colors.dart';
import 'package:food_delivery_app/screens/login/login.dart';
import 'package:food_delivery_app/screens/signup/controller/signup_controller.dart';
import 'package:food_delivery_app/screens/bio/bio.dart';
import 'package:food_delivery_app/widgets/background.dart';
import 'package:food_delivery_app/widgets/gradient_icons.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../../widgets/customTextField.dart';
import '../../widgets/custom_gradient_button.dart';
import '../../widgets/forgot_password_text.dart';
import '../../widgets/logo.dart';
import 'components/custom_checbox.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController controller = Get.put(SignupController());
    return Background(
      stretched: true,
      svg: 'assets/svg/Pattern.svg',
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              const Logo(),
              SizedBox(height: 40.h),
              Text(
                'Sign Up For Free',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'BentonSans Bold',
                ),
              ),
              SizedBox(height: 30.h),
              Column(
                children: [
                  const CustomTextField(
                    prefixIcon: GradientIcon(
                      icon: (IconlyBold.profile),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.gradientGreen1,
                          AppColors.gradientGreen2
                        ],
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                      ),
                      size: 26,
                    ),
                    hintText: 'Username',
                  ),
                  SizedBox(height: 15.h),
                  const CustomTextField(
                    prefixIcon: GradientIcon(
                      icon: (IconlyBold.message),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.gradientGreen1,
                          AppColors.gradientGreen2
                        ],
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                      ),
                      size: 26,
                    ),
                    hintText: 'Email',
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    prefixIcon: const GradientIcon(
                      icon: (IconlyBold.lock),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.gradientGreen1,
                          AppColors.gradientGreen2
                        ],
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                      ),
                      size: 26,
                    ),
                    hintText: 'Password',
                    suffixIcon: Icon(
                      IconlyBold.show,
                      size: 26.sp,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      SignedInCheckBox(
                        title: 'Keep Me Signed In',
                        controller: controller,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      EmailMeCheckBox(
                        title: 'Email Me About Special Pricing',
                        controller: controller,
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h),
                  CustomGradientButton(
                    ontap: () {
                      Get.to(const Bio());
                    },
                    text: 'Create Account',
                  ),
                  SizedBox(height: 20.h),
                  ForgotPasswordText(
                    text: 'Already have an account?',
                    ontap: () {
                      Get.to(const Login());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
