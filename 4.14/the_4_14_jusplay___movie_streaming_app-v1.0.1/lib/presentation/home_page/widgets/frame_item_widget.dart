import '../controller/home_controller.dart';
import '../models/frame_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 124.h,
      child: Obx(
        () => CustomImageView(
          imagePath: frameItemModelObj.aladdin!.value,
          height: 178.v,
          width: 124.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
