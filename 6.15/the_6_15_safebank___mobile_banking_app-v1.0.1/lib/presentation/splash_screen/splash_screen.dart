import 'notifier/splash_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_15_safebank___mobile_banking_app/core/app_export.dart';

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
            body: Container(
                width: double.maxFinite,
                padding:
                    EdgeInsets.symmetric(horizontal: 74.h, vertical: 339.v),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup17,
                          height: 32.v,
                          width: 37.h,
                          margin: EdgeInsets.only(top: 9.v, bottom: 48.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h, bottom: 39.v),
                          child: Column(children: [
                            Text("lbl_safebank".tr,
                                style: theme.textTheme.headlineMedium),
                            Text("msg_we_serve_with_faith".tr.toUpperCase(),
                                style: CustomTextStyles.labelMediumWhiteA700)
                          ]))
                    ]))));
  }
}
