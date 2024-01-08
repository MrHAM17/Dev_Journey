import '../models/stream_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_10_social___social_networking/core/app_export.dart';

// ignore: must_be_immutable
class StreamItemWidget extends StatelessWidget {
  StreamItemWidget(
    this.streamItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StreamItemModel streamItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: streamItemModelObj?.eighteen,
      height: 540.v,
      width: 21.h,
      radius: BorderRadius.circular(
        10.h,
      ),
    );
  }
}
