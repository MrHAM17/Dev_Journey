import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplashProvider(), child: SplashScreen());
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.pushNamed(
        AppRoutes.loginScreen,
      );
    });
  }

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
                      SizedBox(height: 5.v),
                      Container(
                          height: 90.adaptSize,
                          width: 90.adaptSize,
                          padding: EdgeInsets.all(19.h),
                          decoration: AppDecoration.white.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder45),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgWarning,
                              height: 41.adaptSize,
                              width: 41.adaptSize,
                              alignment: Alignment.center))
                    ]))));
  }
}
