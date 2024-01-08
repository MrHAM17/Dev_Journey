import 'package:flutter/material.dart';
import 'package:the_7_10_social___social_networking/core/app_export.dart';

// ignore: must_be_immutable
class StreamItemWidget extends StatelessWidget {
  const StreamItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.img18,
      height: 540.v,
      width: 21.h,
      radius: BorderRadius.circular(
        10.h,
      ),
    );
  }
}
