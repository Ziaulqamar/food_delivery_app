import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/config/colors.dart';
import 'package:food_delivery_app/widgets/gradient_icons.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final GradientIcon? prefixIcon;
  final Icon? suffixIcon;
  const CustomTextField({super.key, 
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            blurRadius: 50,
            color: AppColors.dropshadowColor,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffF4F4F4),
            ),
            borderRadius: BorderRadius.circular(15.r),
          ),
          fillColor: Colors.white,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintStyle: TextStyle(
              color: const Color(0xff3B3B3B).withOpacity(0.4),
              fontFamily: 'BentonSans Regular'),
        ),
      ),
    );
  }
}
