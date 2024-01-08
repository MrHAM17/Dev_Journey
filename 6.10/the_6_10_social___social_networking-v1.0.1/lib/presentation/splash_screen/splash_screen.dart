import 'notifier/splash_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_10_social___social_networking/core/app_export.dart';

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
            backgroundColor: appTheme.deepPurpleA200,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgSocialMedia1,
                          height: 120.adaptSize,
                          width: 120.adaptSize),
                      SizedBox(height: 20.v),
                      Text("lbl_social".tr,
                          style: theme.textTheme.displaySmall),
                      SizedBox(height: 5.v)
                    ]))));
  }
}
