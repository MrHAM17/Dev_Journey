import '../models/eightythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_10_social___social_networking/core/app_export.dart';

// ignore: must_be_immutable
class EightythreeItemWidget extends StatelessWidget {
  EightythreeItemWidget(
    this.eightythreeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightythreeItemModel eightythreeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: CustomImageView(
        imagePath: eightythreeItemModelObj?.trash,
        height: 50.adaptSize,
        width: 50.adaptSize,
      ),
    );
  }
}
