import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/colors.dart';

class ImageSourceContainer extends StatelessWidget {
  final String icon;
  final void Function()? onTap;
  final String sourceText;

  const ImageSourceContainer({super.key, 
    required this.icon,
    required this.onTap,
    required this.sourceText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 130.h,
        width: 335.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 50,
              color: AppColors.dropshadowColor,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
            SizedBox(height: 10.h),
            Text(
              sourceText,
              style: TextStyle(fontSize: 14.sp, fontFamily: 'BentonSans Bold'),
            ),
          ],
        ),
      ),
    );
  }
}
