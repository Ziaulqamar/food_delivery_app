import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  final void Function()? onTap;
  const CustomBackButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffF9A84D).withOpacity(0.25),
          borderRadius: BorderRadius.circular(15.r),
        ),
        width: 45.w,
        height: 45.h,
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color(0xffDA6317),
        ),
      ),
    );
  }
}
