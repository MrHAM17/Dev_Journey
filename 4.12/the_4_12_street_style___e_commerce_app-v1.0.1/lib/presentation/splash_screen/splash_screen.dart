import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 23.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgGraphicElements,
                          height: 126.v,
                          width: 269.h),
                      SizedBox(height: 33.v),
                      Text("lbl_street_style".tr,
                          style: CustomTextStyles.displaySmallGray700)
                    ]))));
  }
}
