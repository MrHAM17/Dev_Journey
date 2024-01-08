import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbuttonFive extends StatelessWidget {
  AppbarTrailingIconbuttonFive({
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
          height: 50.adaptSize,
          width: 50.adaptSize,
          decoration: IconButtonStyleHelper.outlineGray,
          child: CustomImageView(
            imagePath: ImageConstant.imgIonNotificationsOutline,
          ),
        ),
      ),
    );
  }
}
