import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 45.h,
        width: 45.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff144E5A).withOpacity(0.2),
              offset: const Offset(11, 28),
              blurRadius: 50,
              spreadRadius: 0,
            ),
          ],
        ),
        child: SvgPicture.asset(
          'assets/icons/notificationIcon.svg',
          fit: BoxFit.none,
        ),
      ),
    );
  }
}
