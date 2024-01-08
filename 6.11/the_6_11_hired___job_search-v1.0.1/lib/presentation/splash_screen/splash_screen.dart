import 'notifier/splash_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_11_hired___job_search/core/app_export.dart';

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
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgClarityEmployeeSolid,
                          height: 102.adaptSize,
                          width: 102.adaptSize),
                      SizedBox(height: 24.v),
                      Text("lbl_hired".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 5.v)
                    ]))));
  }
}
