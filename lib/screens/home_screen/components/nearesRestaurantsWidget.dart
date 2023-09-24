import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';

class NearestRestaurantsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Nearest Restaurant',
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
