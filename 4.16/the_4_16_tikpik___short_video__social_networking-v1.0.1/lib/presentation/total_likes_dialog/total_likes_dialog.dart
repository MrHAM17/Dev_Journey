import 'controller/total_likes_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';

class TotalLikesDialog extends StatelessWidget {
  TotalLikesDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  TotalLikesController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.h,
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 31.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "lbl_27m_total_likes".tr,
            style: CustomTextStyles.headlineSmallPrimary,
          ),
          SizedBox(height: 17.v),
          Container(
            width: 267.h,
            margin: EdgeInsets.only(
              left: 3.h,
              right: 4.h,
            ),
            child: Text(
              "msg_jenny_wilson_received".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge!.copyWith(
                height: 1.40,
              ),
            ),
          ),
          SizedBox(height: 30.v),
          CustomElevatedButton(
            text: "lbl_ok".tr,
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16,
          ),
        ],
      ),
    );
  }
}
