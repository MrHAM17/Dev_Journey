import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PostsaddsoundsItemWidget extends StatelessWidget {
  const PostsaddsoundsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 80.adaptSize,
          width: 80.adaptSize,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage15,
                height: 80.adaptSize,
                width: 80.adaptSize,
                radius: BorderRadius.circular(
                  16.h,
                ),
                alignment: Alignment.center,
              ),
              CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                padding: EdgeInsets.all(2.h),
                decoration: IconButtonStyleHelper.radiusTL12,
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: ImageConstant.imgOverflowMenuOnerrorcontainer,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 2.v,
            bottom: 5.v,
          ),
          child: Column(
            children: [
              Text(
                "As It Was",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 9.v),
              Text(
                "Harry Styles",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "01:00",
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 31.v),
          child: Text(
            "65.1M",
            style: CustomTextStyles.titleSmallSemiBold,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgBookmarkPrimary24x24,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 21.h,
            top: 28.v,
            bottom: 28.v,
          ),
        ),
      ],
    );
  }
}
