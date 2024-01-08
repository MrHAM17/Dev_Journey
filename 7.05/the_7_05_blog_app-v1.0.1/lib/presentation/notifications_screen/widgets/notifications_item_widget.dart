import 'package:flutter/material.dart';
import 'package:the_7_05_blog_app/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  const NotificationsItemWidget({Key? key})
      : super(
          key: key,
        );

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
                    text: "Bezaleel Nwabia ",
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: "clapped for\n",
                    style: CustomTextStyles.bodyMediumGray600_1,
                  ),
                  TextSpan(
                    text:
                        "7 things you need to know about flutter state Management ",
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: "5 Nov",
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
