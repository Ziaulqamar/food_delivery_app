import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';

class SetLocationContainer extends StatelessWidget {
  final Widget child;
  const SetLocationContainer({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            blurRadius: 50,
            color: AppColors.dropshadowColor,
          ),
        ],
      ),
      child: child,
    );
  }
}
