import 'package:flutter/material.dart' hide SearchController;
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class Frame6ItemWidget extends StatelessWidget {
  const Frame6ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 58.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgUnsplashQnuUr0o5x8,
        height: 58.adaptSize,
        width: 58.adaptSize,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
