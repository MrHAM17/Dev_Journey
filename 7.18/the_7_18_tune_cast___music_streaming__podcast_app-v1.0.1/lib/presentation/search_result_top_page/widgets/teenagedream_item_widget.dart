import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TeenagedreamItemWidget extends StatelessWidget {
  const TeenagedreamItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage53,
          height: 80.adaptSize,
          width: 80.adaptSize,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 18.v,
            bottom: 16.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Teenage Dream",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 8.v),
              Text(
                "Katy Perry",
                style: theme.textTheme.labelLarge,
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
              imagePath: ImageConstant.imgOverflowMenuOnprimarycontainer,
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
