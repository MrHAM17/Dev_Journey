import '../controller/stream_controller.dart';
import '../models/stream_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_10_social___social_networking/core/app_export.dart';

// ignore: must_be_immutable
class StreamItemWidget extends StatelessWidget {
  StreamItemWidget(
    this.streamItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StreamItemModel streamItemModelObj;

  var controller = Get.find<StreamController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: streamItemModelObj.eighteen!.value,
        height: 540.v,
        width: 21.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
