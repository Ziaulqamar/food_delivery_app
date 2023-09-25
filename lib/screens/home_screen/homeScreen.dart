import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/config/colors.dart';
import 'package:food_delivery_app/screens/congrats_screen/congrats_screen.dart';
import 'package:food_delivery_app/widgets/background.dart';
import 'package:get/get.dart';

import 'components/filterButton.dart';
import 'components/homeScreenCustomTextField.dart';
import 'components/nearesRestaurantsWidget.dart';
import 'components/notificationButton.dart';
import 'components/promotionalCardWidget.dart';
import 'components/restaurantCard.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      svg: 'assets/svg/background.svg',
      stretched: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Find Your\nFavourite Food',
                  style: TextStyle(
                    fontSize: 31.sp,
                    fontFamily: 'BentonSans Bold',
                  ),
                ),
                const NotificationButton(),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeScreenCustomTextField(),
                CustomFilterButton(),
              ],
            ),
            SizedBox(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  PromotionalCardWidget(),
                  SizedBox(height: 20.h),
                  Column(
                    children: [
                      restaurantsWidget(title: 'Nearest Restaurants'),
                      SizedBox(height: 20.h),
                      SizedBox(
                        height: 184.h,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            RestaurantCard(
                              image: 'assets/images/veganRestaurant.png',
                              restaurantName: 'Vegan Resto',
                              restaurantTime: '12 Mins',
                            ),
                            RestaurantCard(
                              image: 'assets/images/healthyRestaurant.png',
                              restaurantName: 'Healthy Food',
                              restaurantTime: '8 Mins',
                            ),
                            RestaurantCard(
                              image: 'assets/images/goodFoodRestaurant.png',
                              restaurantName: 'Good Food',
                              restaurantTime: '12 Mins',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      restaurantsWidget(title: 'Popular Menu'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
