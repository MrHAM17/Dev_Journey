import '../models/weeklyranking_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class WeeklyrankingItemWidget extends StatelessWidget {
  WeeklyrankingItemWidget(
    this.weeklyrankingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WeeklyrankingItemModel weeklyrankingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse12,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 8.v,
            bottom: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                weeklyrankingItemModelObj.tynishaObey!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 4.v),
              Text(
                weeklyrankingItemModelObj.distance!,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomOutlinedButton(
          height: 32.v,
          width: 92.h,
          text: "lbl_following".tr,
          margin: EdgeInsets.symmetric(vertical: 14.v),
          buttonTextStyle: CustomTextStyles.titleSmallPrimary,
        ),
      ],
    );
  }
}
