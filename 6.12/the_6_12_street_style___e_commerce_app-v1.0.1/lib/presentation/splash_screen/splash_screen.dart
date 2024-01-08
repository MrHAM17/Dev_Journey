import 'notifier/splash_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_12_street_style___e_commerce_app/core/app_export.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends ConsumerState<SplashScreen> {
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
