import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class ChannelfourItemWidget extends StatelessWidget {
  const ChannelfourItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgBackgroundImage,
          height: 56.adaptSize,
          width: 56.adaptSize,
          radius: BorderRadius.circular(
            4.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 17.v,
            bottom: 19.v,
          ),
          child: Text(
            "K TV",
            style: CustomTextStyles.titleMediumWhiteA700Medium,
          ),
        ),
      ],
    );
  }
}
