import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  const FrameItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage31,
              height: 160.adaptSize,
              width: 160.adaptSize,
              radius: BorderRadius.circular(
                28.h,
              ),
            ),
            SizedBox(height: 9.v),
            SizedBox(
              width: 150.h,
              child: Text(
                "610: Bill Sullivan | Pleased to Meet ...",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMedium_1.copyWith(
                  height: 1.40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
