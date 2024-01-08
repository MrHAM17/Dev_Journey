import '../models/soundused_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SoundusedItemWidget extends StatelessWidget {
  SoundusedItemWidget(
    this.soundusedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SoundusedItemModel soundusedItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.v,
      width: 121.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: soundusedItemModelObj?.image,
            height: 200.v,
            width: 121.h,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.center,
          ),
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(2.h),
            decoration: IconButtonStyleHelper.radiusTL12,
            alignment: Alignment.center,
            child: CustomImageView(
              imagePath: ImageConstant.imgOverflowMenuOnerrorcontainer,
            ),
          ),
        ],
      ),
    );
  }
}
