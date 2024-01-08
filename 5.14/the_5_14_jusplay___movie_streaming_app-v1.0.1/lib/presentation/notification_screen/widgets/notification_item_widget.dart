import '../models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget(
    this.notificationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationItemModel notificationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSearchBlueGray800,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 6.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 1.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notificationItemModelObj.duration!,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    notificationItemModelObj.duration1!,
                    style: CustomTextStyles.bodySmallPrimaryContainerLight,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
