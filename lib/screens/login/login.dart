import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/screens/signup/signup.dart';
import 'package:food_delivery_app/widgets/custom_gradient_button.dart';
import 'package:get/get.dart';

import '../../widgets/background.dart';
import '../../widgets/customTextField.dart';
import '../../widgets/forgot_password_text.dart';
import '../../widgets/logo.dart';
import '../../widgets/social_login_container.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    SizedBox spacing = SizedBox(height: 20.h);
    return Background(
      stretched: true,
      svg: 'assets/svg/Pattern.svg',
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Logo(),
              SizedBox(height: 40.h),
              Text(
                'Login To Your Account',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'BentonSans Bold',
                ),
              ),
              SizedBox(height: 30.h),
              Column(
                children: [
                  const CustomTextField(hintText: 'Email'),
                  SizedBox(height: 15.h),
                  const CustomTextField(hintText: 'Password'),
                  SizedBox(height: 25.h),
                  Text(
                    'Or Continue With',
                    style: TextStyle(
                      fontFamily: 'BentonSans Bold',
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocialLoginContainer(
                        text: 'Facebook',
                        socialIcon: 'assets/svg/facebook.svg',
                      ),
                      SocialLoginContainer(
                        text: 'Google',
                        socialIcon: 'assets/svg/google.svg',
                      ),
                    ],
                  ),
                  spacing,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ForgotPasswordText(
                        text: 'Forgot Password?',
                        ontap: () {},
                      ),
                      ForgotPasswordText(
                        ontap: () {
                          Get.to(const Signup());
                        },
                        text: 'Create An Account',
                      ),
                    ],
                  ),
                  SizedBox(height: 40.h),
                  CustomGradientButton(
                    ontap: () {},
                    text: 'Login',
                    width: 140,
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
