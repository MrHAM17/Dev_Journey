import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class SwitchaccountItemWidget extends StatelessWidget {
  const SwitchaccountItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 208.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse30,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  30.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Andrew Ainsley",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "andrew_aisnley",
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesCheck,
          height: 28.adaptSize,
          width: 28.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 16.v),
        ),
      ],
    );
  }
}
