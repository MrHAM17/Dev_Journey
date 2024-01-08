import '../models/aladdin_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class AladdinItemWidget extends StatelessWidget {
  AladdinItemWidget(
    this.aladdinItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AladdinItemModel aladdinItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 124.h,
      child: CustomImageView(
        imagePath: aladdinItemModelObj?.aladdin,
        height: 178.v,
        width: 124.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
