import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_06_helthio___telehealth/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 130.v,
                          width: 117.h),
                      SizedBox(height: 15.v),
                      Text("lbl_helthio".tr,
                          style: theme.textTheme.displayMedium),
                      SizedBox(height: 5.v)
                    ]))));
  }
}
