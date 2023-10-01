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
import 'components/popularMenuItem.dart';
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
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 40.h),
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
                SizedBox(
                  height: 477.h,
                  child: SingleChildScrollView(
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
                            Container(
                              height: 184.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.dropshadowColor,
                                    blurRadius: 50.r,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                              ),
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
                                    image:
                                        'assets/images/healthyRestaurant.png',
                                    restaurantName: 'Healthy Food',
                                    restaurantTime: '8 Mins',
                                  ),
                                  RestaurantCard(
                                    image:
                                        'assets/images/goodFoodRestaurant.png',
                                    restaurantName: 'Good Food',
                                    restaurantTime: '12 Mins',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20.h),
                            restaurantsWidget(title: 'Popular Menu'),
                            SizedBox(height: 20.h),
                            PopularMenuItem(
                              image: 'assets/images/greenNoodles.png',
                              title: 'Green Noodles',
                              subtitle: 'Noodle Home',
                              price: '15',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 10.h),
                width: double.infinity,
                height: 74.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.dropshadowColor,
                      blurRadius: 50.r,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 44.h,
                      width: 105.w,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.gradientGreen1.withOpacity(0.1),
                            AppColors.gradientGreen2.withOpacity(0.1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/Iconly/Bulk/Home.svg'),
                          Text('Home'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
