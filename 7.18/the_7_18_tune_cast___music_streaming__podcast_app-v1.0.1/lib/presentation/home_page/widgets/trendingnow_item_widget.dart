import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class TrendingnowItemWidget extends StatelessWidget {
  const TrendingnowItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 160.adaptSize,
            width: 160.adaptSize,
            radius: BorderRadius.circular(
              24.h,
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 139.h,
            child: Text(
              "Shades of Love - Ania Szarmach",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMedium_1.copyWith(
                height: 1.40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
