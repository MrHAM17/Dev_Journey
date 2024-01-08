import '../models/discover_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_12_street_style___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class DiscoverItemWidget extends StatelessWidget {
  DiscoverItemWidget(
    this.discoverItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DiscoverItemModel discoverItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillLightGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80.h,
            margin: EdgeInsets.only(
              top: 32.v,
              bottom: 64.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_shirt".tr,
                    style: CustomTextStyles.titleMediumGray50001,
                  ),
                  TextSpan(
                    text: "lbl_sleeve".tr,
                    style: CustomTextStyles.headlineMediumBlack900,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomImageView(
            imagePath: discoverItemModelObj?.shirtSleeve,
            height: 181.v,
            width: 116.h,
            margin: EdgeInsets.only(left: 102.h),
          ),
        ],
      ),
    );
  }
}
