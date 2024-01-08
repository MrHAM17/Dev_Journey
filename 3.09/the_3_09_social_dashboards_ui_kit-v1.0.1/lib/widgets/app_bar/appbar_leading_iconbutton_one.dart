import 'package:flutter/material.dart';
import 'package:the_3_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_3_09_social_dashboards_ui_kit/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbuttonOne extends StatelessWidget {
  AppbarLeadingIconbuttonOne({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 38.adaptSize,
          width: 38.adaptSize,
          decoration: IconButtonStyleHelper.outlineBlueGrayTL12,
          child: CustomImageView(
            imagePath: ImageConstant.imgButtonIcon,
          ),
        ),
      ),
    );
  }
}
