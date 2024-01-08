import '../models/widget1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class Widget1ItemWidget extends StatelessWidget {
  Widget1ItemWidget(
    this.widget1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Widget1ItemModel widget1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imageNotFound,
        height: 296.v,
        width: 375.h,
      ),
    );
  }
}
