import '../models/seelive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class SeeliveItemWidget extends StatelessWidget {
  SeeliveItemWidget(
    this.seeliveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeeliveItemModel seeliveItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlay,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  seeliveItemModelObj.darylNehls!,
                  style: CustomTextStyles.titleSmallOnErrorContainerBold,
                ),
                SizedBox(height: 3.v),
                Text(
                  seeliveItemModelObj.woohoooo!,
                  style: CustomTextStyles.labelLargeGray300,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
