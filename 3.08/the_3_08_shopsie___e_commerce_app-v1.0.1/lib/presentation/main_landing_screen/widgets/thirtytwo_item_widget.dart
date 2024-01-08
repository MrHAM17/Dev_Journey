import '../models/thirtytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class ThirtytwoItemWidget extends StatelessWidget {
  ThirtytwoItemWidget(
    this.thirtytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtytwoItemModel thirtytwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: thirtytwoItemModelObj?.outerwear,
          height: 386.v,
          width: 358.h,
        ),
        SizedBox(height: 26.v),
        Text(
          thirtytwoItemModelObj.outerwear1!,
          style: CustomTextStyles.titleMediumBold,
        ),
        SizedBox(height: 6.v),
        Text(
          thirtytwoItemModelObj.raincoatsSweaters!,
          style: CustomTextStyles.bodySmallBluegray400,
        ),
      ],
    );
  }
}
