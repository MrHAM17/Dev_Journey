import 'package:flutter/material.dart';
import 'package:the_7_05_blog_app/core/app_export.dart';
import 'package:the_7_05_blog_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class IntereststopicsItemWidget extends StatelessWidget {
  const IntereststopicsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgBlogThumbnail,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(
            5.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 9.v,
            bottom: 9.v,
          ),
          child: Text(
            "Art",
            style: CustomTextStyles.bodyMediumOnPrimary,
          ),
        ),
        Spacer(),
        CustomElevatedButton(
          height: 34.v,
          width: 90.h,
          text: "Follow",
          margin: EdgeInsets.symmetric(vertical: 3.v),
          buttonTextStyle: theme.textTheme.titleSmall!,
        ),
      ],
    );
  }
}
