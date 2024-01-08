import 'package:flutter/material.dart';
import 'package:the_7_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SixtysevenItemWidget extends StatelessWidget {
  const SixtysevenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.h,
      child: CustomIconButton(
        height: 49.v,
        width: 48.h,
        padding: EdgeInsets.all(15.h),
        decoration: IconButtonStyleHelper.outlineBlueGrayF,
        child: CustomImageView(
          imagePath: ImageConstant.imgClose,
        ),
      ),
    );
  }
}
