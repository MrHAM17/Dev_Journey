import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class QuestionanswerItemWidget extends StatelessWidget {
  const QuestionanswerItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse15,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  30.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 10.v,
                  bottom: 6.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Benny Spanbauer",
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "What is your favorite fruit?",
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 81.h,
            top: 7.v,
            bottom: 7.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIconlyBoldHeart,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 5.v),
              Text(
                "736",
                style: CustomTextStyles.labelLargeErrorContainer,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
