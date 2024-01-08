import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class LogoutBottomsheet extends StatelessWidget {
  const LogoutBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray1001.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame,
            height: 3.v,
            width: 38.h,
          ),
          SizedBox(height: 27.v),
          Text(
            "Logout",
            style: CustomTextStyles.headlineSmallOnPrimaryContainer,
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 25.v),
          Text(
            "Are you sure you want to log out?",
            style: CustomTextStyles.titleLargePrimary,
          ),
          SizedBox(height: 22.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: "Cancel",
                  margin: EdgeInsets.only(right: 6.h),
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  text: "Yes, Logout",
                  margin: EdgeInsets.only(left: 6.h),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.v),
        ],
      ),
    );
  }
}
