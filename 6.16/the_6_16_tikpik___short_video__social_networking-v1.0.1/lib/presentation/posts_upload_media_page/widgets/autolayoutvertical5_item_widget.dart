import '../models/autolayoutvertical5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class Autolayoutvertical5ItemWidget extends StatelessWidget {
  Autolayoutvertical5ItemWidget(
    this.autolayoutvertical5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Autolayoutvertical5ItemModel autolayoutvertical5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 121.adaptSize,
      width: 121.adaptSize,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: autolayoutvertical5ItemModelObj?.image,
            height: 121.adaptSize,
            width: 121.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: autolayoutvertical5ItemModelObj?.checkmark,
            height: 20.adaptSize,
            width: 20.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 10.v,
              right: 10.h,
            ),
          ),
        ],
      ),
    );
  }
}
