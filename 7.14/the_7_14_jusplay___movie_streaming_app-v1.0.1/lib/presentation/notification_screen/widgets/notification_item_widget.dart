import 'package:flutter/material.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  const NotificationItemWidget({Key? key})
      : super(
          key: key,
        );

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
                    "let's get 100% cashback valid only 6 hours",
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "10 minutes ago",
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
