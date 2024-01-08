import '../models/followartists_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class FollowartistsItemWidget extends StatelessWidget {
  FollowartistsItemWidget(
    this.followartistsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FollowartistsItemModel followartistsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: followartistsItemModelObj?.theWeeknd,
          height: 80.adaptSize,
          width: 80.adaptSize,
          radius: BorderRadius.circular(
            40.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 28.v,
            bottom: 29.v,
          ),
          child: Text(
            followartistsItemModelObj.artistName!,
            style: theme.textTheme.titleMedium,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesVerified,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 4.h,
            top: 28.v,
            bottom: 29.v,
          ),
        ),
        Spacer(),
        CustomElevatedButton(
          height: 32.v,
          width: 73.h,
          text: "lbl_follow".tr,
          margin: EdgeInsets.symmetric(vertical: 24.v),
          buttonStyle: CustomButtonStyles.fillPrimaryTL16,
          buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
        ),
      ],
    );
  }
}
