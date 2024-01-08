import '../models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_10_social___social_networking/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget(
    this.notificationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationsItemModel notificationsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: notificationsItemModelObj?.image,
            height: 54.v,
            width: 52.h,
            radius: BorderRadius.circular(
              27.h,
            ),
            margin: EdgeInsets.only(bottom: 26.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 4.v,
              bottom: 28.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationsItemModelObj.kevinHasFollowed!,
                  style: CustomTextStyles.titleMediumBlack90001,
                ),
                SizedBox(height: 7.v),
                Text(
                  notificationsItemModelObj.duration!,
                  style: CustomTextStyles.bodyLargeGray600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}