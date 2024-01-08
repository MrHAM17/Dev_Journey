import '../controller/favorite_controller.dart';
import '../models/favorite_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class FavoriteItemWidget extends StatelessWidget {
  FavoriteItemWidget(
    this.favoriteItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FavoriteItemModel favoriteItemModelObj;

  var controller = Get.find<FavoriteController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: favoriteItemModelObj.boxTee!.value,
            height: 180.v,
            width: 175.h,
            radius: BorderRadius.circular(
              30.h,
            ),
          ),
        ),
        SizedBox(height: 14.v),
        Obx(
          () => Text(
            favoriteItemModelObj.boxTee1!.value,
            style: CustomTextStyles.titleMediumGray60001,
          ),
        ),
      ],
    );
  }
}
