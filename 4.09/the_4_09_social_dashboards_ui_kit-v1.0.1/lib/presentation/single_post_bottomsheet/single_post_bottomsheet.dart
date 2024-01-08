import 'controller/single_post_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';

class SinglePostBottomsheet extends StatelessWidget {
  SinglePostBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  SinglePostController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 168.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgIndicatorOnLight,
        height: 5.v,
        width: 38.h,
        alignment: Alignment.center,
      ),
    );
  }
}
