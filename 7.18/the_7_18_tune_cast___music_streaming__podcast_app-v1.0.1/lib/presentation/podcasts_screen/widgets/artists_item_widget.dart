import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class ArtistsItemWidget extends StatelessWidget {
  const ArtistsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage34,
              height: 160.adaptSize,
              width: 160.adaptSize,
              radius: BorderRadius.circular(
                80.h,
              ),
            ),
            SizedBox(height: 25.v),
            Text(
              "Dr. Death",
              style: CustomTextStyles.titleMedium_1,
            ),
          ],
        ),
      ),
    );
  }
}
