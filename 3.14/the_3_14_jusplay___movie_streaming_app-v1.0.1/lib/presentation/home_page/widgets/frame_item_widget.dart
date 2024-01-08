import '../models/frame_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';

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
      width: 124.h,
      child: CustomImageView(
        imagePath: frameItemModelObj?.aladdin,
        height: 178.v,
        width: 124.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
