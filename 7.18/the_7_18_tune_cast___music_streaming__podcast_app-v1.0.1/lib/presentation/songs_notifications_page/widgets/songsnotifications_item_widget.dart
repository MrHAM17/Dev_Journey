import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SongsnotificationsItemWidget extends StatelessWidget {
  const SongsnotificationsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage80x80,
          height: 80.adaptSize,
          width: 80.adaptSize,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 2.v,
            bottom: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Today",
                    style: CustomTextStyles.labelLargeBold,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Text(
                      "|",
                      style: CustomTextStyles.labelLargeBold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "04:36 mins",
                      style: CustomTextStyles.labelLargeBold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Text(
                "BREAK MY SOUL",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 10.v),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      "Beyonce",
                      style: CustomTextStyles.labelLargeBold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 11.h,
                      top: 1.v,
                    ),
                    child: Text(
                      "|",
                      style: CustomTextStyles.labelLargeBold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "Album",
                      style: CustomTextStyles.labelLargeBold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(2.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconlyBoldPlay,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVectorGray90001,
          height: 13.v,
          width: 3.h,
          margin: EdgeInsets.only(
            left: 28.h,
            top: 33.v,
            bottom: 33.v,
          ),
        ),
      ],
    );
  }
}
