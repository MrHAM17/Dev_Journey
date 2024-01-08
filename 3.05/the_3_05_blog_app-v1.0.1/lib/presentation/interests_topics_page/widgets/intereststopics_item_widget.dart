import '../models/intereststopics_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_05_blog_app/core/app_export.dart';
import 'package:the_3_05_blog_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class IntereststopicsItemWidget extends StatelessWidget {
  IntereststopicsItemWidget(
    this.intereststopicsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  IntereststopicsItemModel intereststopicsItemModelObj;

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
            intereststopicsItemModelObj.easyToUse!,
            style: CustomTextStyles.bodyMediumOnPrimary,
          ),
        ),
        Spacer(),
        CustomElevatedButton(
          height: 34.v,
          width: 90.h,
          text: "lbl_follow".tr,
          margin: EdgeInsets.symmetric(vertical: 3.v),
          buttonTextStyle: theme.textTheme.titleSmall!,
        ),
      ],
    );
  }
}
