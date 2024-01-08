import '../models/productcarousel_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class ProductcarouselItemWidget extends StatelessWidget {
  ProductcarouselItemWidget(
    this.productcarouselItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcarouselItemModel productcarouselItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle11,
      height: 289.v,
      width: 390.h,
    );
  }
}
