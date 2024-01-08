import 'notifier/splash_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_08_shopsie___e_commerce_app/core/app_export.dart';

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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 261.v),
                child: Column(children: [
                  Text("lbl_shopsie".tr, style: theme.textTheme.displayLarge),
                  SizedBox(height: 24.v),
                  Text("msg_the_best_way_to".tr,
                      style: CustomTextStyles.bodyMediumGray600_1),
                  SizedBox(height: 5.v)
                ]))));
  }
}
