import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';

class restaurantsWidget extends StatelessWidget {
  final String title;
  restaurantsWidget({required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'BentonSans Bold',
            fontSize: 15.sp,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            'View More',
            style: TextStyle(
              fontFamily: 'BentonSans Book',
              fontSize: 12.sp,
              color: AppColors.customTextOrange,
            ),
          ),
        ),
      ],
    );
  }
}
