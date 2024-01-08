import 'package:flutter/material.dart';
import 'package:the_7_12_street_style___e_commerce_app/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

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
                width: 269.h,
              ),
              SizedBox(height: 33.v),
              Text(
                "Street Style",
                style: CustomTextStyles.displaySmallGray700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
