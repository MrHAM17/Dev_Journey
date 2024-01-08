import '../models/following1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Following1ItemWidget extends StatelessWidget {
  Following1ItemWidget(
    this.following1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Following1ItemModel following1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 231.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage83,
                height: 80.adaptSize,
                width: 80.adaptSize,
                radius: BorderRadius.circular(
                  40.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 17.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_jenny_wigington".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "lbl_2_798_followers".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CustomOutlinedButton(
          height: 32.v,
          width: 92.h,
          text: "lbl_following".tr,
          margin: EdgeInsets.symmetric(vertical: 24.v),
          buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
          buttonTextStyle: CustomTextStyles.titleSmallPrimary,
        ),
      ],
    );
  }
}