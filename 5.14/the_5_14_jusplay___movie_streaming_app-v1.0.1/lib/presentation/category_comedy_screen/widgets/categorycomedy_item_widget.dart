import '../models/categorycomedy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class CategorycomedyItemWidget extends StatelessWidget {
  CategorycomedyItemWidget(
    this.categorycomedyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategorycomedyItemModel categorycomedyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: categorycomedyItemModelObj?.rectangle,
      height: 140.v,
      width: 102.h,
      radius: BorderRadius.circular(
        10.h,
      ),
    );
  }
}
