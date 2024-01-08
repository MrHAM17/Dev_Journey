import '../models/widget_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  WidgetItemWidget(
    this.widgetItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WidgetItemModel widgetItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imageNotFound,
        height: 297.v,
        width: 375.h,
      ),
    );
  }
}
