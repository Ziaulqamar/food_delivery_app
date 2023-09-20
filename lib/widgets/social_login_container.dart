import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SocialLoginContainer extends StatelessWidget {
  final String text;
  final String socialIcon;
  const SocialLoginContainer({super.key, 
    required this.text,
    required this.socialIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.25,
      borderRadius: BorderRadius.circular(15.r),
      child: Container(
        height: 55.h,
        width: 150.w,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffF4F4F4),
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(socialIcon),
            SizedBox(width: 15.w),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'BentonSans Medium',
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
