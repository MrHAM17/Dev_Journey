import '../models/mainlanding_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class MainlandingItemWidget extends StatelessWidget {
  MainlandingItemWidget(
    this.mainlandingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MainlandingItemModel mainlandingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: mainlandingItemModelObj?.image,
      height: 58.v,
      width: 80.h,
    );
  }
}
