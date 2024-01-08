import '../models/frame_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

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
              imagePath: frameItemModelObj?.image,
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
                frameItemModelObj.billSullivan!,
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
