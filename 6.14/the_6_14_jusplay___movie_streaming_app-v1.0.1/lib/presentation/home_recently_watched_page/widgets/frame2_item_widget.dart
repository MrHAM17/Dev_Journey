import '../models/frame2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class Frame2ItemWidget extends StatelessWidget {
  Frame2ItemWidget(
    this.frame2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame2ItemModel frame2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 124.h,
      child: CustomImageView(
        imagePath: frame2ItemModelObj?.aladdin,
        height: 178.v,
        width: 124.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
