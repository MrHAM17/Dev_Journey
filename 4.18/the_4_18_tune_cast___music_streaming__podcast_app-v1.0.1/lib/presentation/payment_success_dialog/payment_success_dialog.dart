import 'controller/payment_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';

class PaymentSuccessDialog extends StatelessWidget {
  PaymentSuccessDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentSuccessController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.h,
      padding: EdgeInsets.all(32.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder48,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          _buildUser(),
          SizedBox(height: 29.v),
          CustomElevatedButton(
            text: "lbl_ok".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUser() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      child: Column(
        children: [
          SizedBox(
            height: 180.v,
            width: 185.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 141.adaptSize,
                    width: 141.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 45.h,
                      vertical: 48.v,
                    ),
                    decoration: AppDecoration.fillGreen.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder70,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserWhiteA700,
                      height: 43.v,
                      width: 49.h,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorGreen300,
                  height: 180.v,
                  width: 185.h,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 34.v),
          Text(
            "msg_congratulations".tr,
            style: CustomTextStyles.headlineSmallGreen500,
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: 253.h,
            child: Text(
              "msg_you_have_successfully".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLarge16.copyWith(
                height: 1.40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
