import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../config/colors.dart';

class ForgotPasswordText extends StatelessWidget {
  final String text;
  final void Function()? ontap;
  const ForgotPasswordText({super.key, 
    required this.ontap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: GradientText(
        text,
        style: TextStyle(
          fontFamily: 'BentonSans Medium',
          fontSize: 12.sp,
          decoration: TextDecoration.underline,
        ),
        colors: const [
          AppColors.gradientGreen1,
          AppColors.gradientGreen2,
        ],
        gradientDirection: GradientDirection.ltr,
      ),
    );
  }
}
