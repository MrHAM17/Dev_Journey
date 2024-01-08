import '../models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_05_blog_app/core/app_export.dart';

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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnsplash93bshrwb1yq,
          height: 52.adaptSize,
          width: 52.adaptSize,
          radius: BorderRadius.circular(
            26.h,
          ),
          margin: EdgeInsets.only(bottom: 12.v),
        ),
        Expanded(
          child: Container(
            width: 230.h,
            margin: EdgeInsets.only(left: 11.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_bezaleel_nwabia".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: "lbl_clapped_for".tr,
                    style: CustomTextStyles.bodyMediumGray600_1,
                  ),
                  TextSpan(
                    text: "msg_7_things_you_need".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: "lbl_5_nov".tr,
                    style: CustomTextStyles.bodyMediumGray600_1,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ],
    );
  }
}
