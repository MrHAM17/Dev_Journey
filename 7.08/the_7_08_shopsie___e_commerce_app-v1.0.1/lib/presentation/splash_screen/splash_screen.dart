import 'package:flutter/material.dart';
import 'package:the_7_08_shopsie___e_commerce_app/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 261.v),
          child: Column(
            children: [
              Text(
                "Shopsie",
                style: theme.textTheme.displayLarge,
              ),
              SizedBox(height: 24.v),
              Text(
                "The best way to style your life.",
                style: CustomTextStyles.bodyMediumGray600_1,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
