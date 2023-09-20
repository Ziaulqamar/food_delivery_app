import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/config/colors.dart';

class CustomGradientButton extends StatelessWidget {
  final void Function()? ontap;
  final double width;
  final double height;
  final String text;
  const CustomGradientButton({super.key, 
    required this.ontap,
    required this.text,
    this.height = 57,
    this.width = 160,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          gradient: const LinearGradient(
            colors: [
              AppColors.gradientGreen1,
              AppColors.gradientGreen2,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            fontFamily: "BentonSans Bold",
          ),
        ),
      ),
    );
  }
}
