import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/screens/upload_profile_picture/components/profile_picture_preview.dart';
import 'package:food_delivery_app/screens/upload_profile_picture/controller/upload_profile_controller.dart';

import 'package:food_delivery_app/widgets/custom_gradient_button.dart';
import 'package:get/get.dart';

import '../../widgets/background.dart';
import '../../widgets/custom_back_button.dart';
import 'components/image_source_container.dart';

class UploadProfilePicture extends StatelessWidget {
  const UploadProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    UploadProfilePictureController controller =
        Get.put(UploadProfilePictureController());
    SizedBox spacing = SizedBox(height: 20.h);
    return Background(
      svg: 'assets/svg/background.svg',
      stretched: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBackButton(onTap: () {
              Get.back();
            }),
            SizedBox(height: 20.h),
            Text(
              'Upload Your Profile\nPicture',
              style: TextStyle(
                fontSize: 25.sp,
                fontFamily: 'BentonSans Bold',
                color: const Color(0xff09051C),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'This data will be displayed in your account\nprofile for security',
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: 'BentonSans Book',
                color: const Color(0xff09051C),
              ),
            ),
            spacing,
            ImageSourceContainer(
              icon: 'assets/svg/galleryIcon.svg',
              sourceText: 'From Gallery',
              onTap: () {
                controller.getFromGallery();
              },
            ),
            spacing,
            ImageSourceContainer(
              icon: 'assets/svg/cameraIcon.svg',
              sourceText: 'From Camera',
              onTap: () {
                controller.getFromCamera();
              },
            ),
            const Spacer(),
            Center(
              child: CustomGradientButton(
                  ontap: () {
                    if (controller.pickedImage == null) {
                      print('pickedImage is null');
                      // const SnackBar(
                      //   content: Text('Kindly pick image to continue'),
                      //   backgroundColor: Colors.red,
                      // );
                      return;
                    } else {
                      Get.to(const PreviewProfilePicture());
                    }
                  },
                  text: 'Next'),
            ),
          ],
        ),
      ),
    );
  }
}
