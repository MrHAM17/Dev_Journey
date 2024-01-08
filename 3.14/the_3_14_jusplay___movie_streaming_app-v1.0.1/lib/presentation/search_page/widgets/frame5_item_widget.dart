import '../models/frame5_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class Frame5ItemWidget extends StatelessWidget {
  Frame5ItemWidget(
    this.frame5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame5ItemModel frame5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 98.h,
      child: CustomImageView(
        imagePath: frame5ItemModelObj?.rectangle,
        height: 135.v,
        width: 98.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
