import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/screens/signup/signup.dart';
import '/screens/onboarding_screens/controller/onboarding_screen_controller.dart';
import '../../widgets/onboarding_screen.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingScreenController controller =
        Get.put(OnboardingScreenController());
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: controller.pageController,
      children: [
        OnboardingScreen(
          picture: 'assets/svg/onboarding_Illustartion.svg',
          title: 'Find your  Comfort',
          title1: 'Food here',
          subtitle:
              'Here you can find a chef or dish for every\n taste and color. Enjoy!',
          ontap: () {
            controller.pageController.animateToPage(
              1,
              curve: Curves.decelerate,
              duration: const Duration(
                milliseconds: 700,
              ),
            );
          },
        ),
        OnboardingScreen(
          picture: 'assets/svg/onboarding_Illustartion_1.svg',
          title: 'Food Ninja is Where Your',
          title1: 'Comfort Food Lives',
          subtitle: 'Enjoy fast and smooth food delivery at\nyour doorstep',
          ontap: () {
            Get.to(const Signup());
          },
        ),
      ],
    );
  }
}
