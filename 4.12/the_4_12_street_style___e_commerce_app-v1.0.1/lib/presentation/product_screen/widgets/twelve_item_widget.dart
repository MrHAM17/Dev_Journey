import '../controller/product_controller.dart';
import '../models/twelve_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class TwelveItemWidget extends StatelessWidget {
  TwelveItemWidget(
    this.twelveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwelveItemModel twelveItemModelObj;

  var controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: twelveItemModelObj.image!.value,
        height: 400.v,
        width: 335.h,
        radius: BorderRadius.circular(
          30.h,
        ),
        margin: EdgeInsets.only(right: 390.h),
      ),
    );
  }
}
