import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppbarTitleButton extends StatelessWidget {
  AppbarTitleButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

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
        child: CustomElevatedButton(
          height: 32.v,
          width: 133.h,
          text: "lbl_add_sound".tr,
          leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
              imagePath:
                  ImageConstant.imgCategoriesmusicSongComponentadditionalIcons,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.fillGray,
        ),
      ),
    );
  }
}
