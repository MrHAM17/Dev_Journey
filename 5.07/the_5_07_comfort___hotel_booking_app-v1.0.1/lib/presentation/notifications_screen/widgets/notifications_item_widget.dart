import '../models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';

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
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.blueGray900,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Container(
        height: 112.v,
        width: 380.h,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.outlineBlackC.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 12.h,
                  bottom: 16.v,
                ),
                child: Text(
                  notificationsItemModelObj.youHaveCanceled!,
                  style: CustomTextStyles.titleSmallGray40001,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: notificationsItemModelObj?.image,
                    height: 80.v,
                    width: 83.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 18.v,
                      bottom: 39.v,
                    ),
                    child: Text(
                      notificationsItemModelObj.hotelBookingCanceled!,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
