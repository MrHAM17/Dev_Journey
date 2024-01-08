import '../controller/shop_controller.dart';
import '../models/shop_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class ShopItemWidget extends StatelessWidget {
  ShopItemWidget(
    this.shopItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ShopItemModel shopItemModelObj;

  var controller = Get.find<ShopController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: shopItemModelObj.surgeShort!.value,
            height: 237.v,
            width: 175.h,
            radius: BorderRadius.circular(
              30.h,
            ),
          ),
        ),
        SizedBox(height: 15.v),
        Obx(
          () => Text(
            shopItemModelObj.surgeShort1!.value,
            style: theme.textTheme.titleMedium,
          ),
        ),
        SizedBox(height: 5.v),
        Obx(
          () => Text(
            shopItemModelObj.price!.value,
            style: CustomTextStyles.titleMediumGray50001_1,
          ),
        ),
      ],
    );
  }
}
