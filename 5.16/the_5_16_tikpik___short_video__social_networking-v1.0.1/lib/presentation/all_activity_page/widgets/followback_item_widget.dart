import '../models/followback_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class FollowbackItemWidget extends StatelessWidget {
  FollowbackItemWidget(
    this.followbackItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FollowbackItemModel followbackItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: followbackItemModelObj?.charoletteHanlin,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  30.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      followbackItemModelObj.charoletteHanlin1!,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      followbackItemModelObj.information!,
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: followbackItemModelObj?.charoletteHanlin2,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            12.h,
          ),
          margin: EdgeInsets.only(left: 36.h),
        ),
      ],
    );
  }
}
