import '../models/favorite_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_12_street_style___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class FavoriteItemWidget extends StatelessWidget {
  FavoriteItemWidget(
    this.favoriteItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FavoriteItemModel favoriteItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: favoriteItemModelObj?.boxTee,
          height: 180.v,
          width: 175.h,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        SizedBox(height: 14.v),
        Text(
          favoriteItemModelObj.boxTee1!,
          style: CustomTextStyles.titleMediumGray60001,
        ),
      ],
    );
  }
}
