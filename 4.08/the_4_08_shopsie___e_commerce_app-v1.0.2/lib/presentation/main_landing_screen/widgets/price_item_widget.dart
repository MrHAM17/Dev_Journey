import '../controller/main_landing_controller.dart';
import '../models/price_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class PriceItemWidget extends StatelessWidget {
  PriceItemWidget(
    this.priceItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PriceItemModel priceItemModelObj;

  var controller = Get.find<MainLandingController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: priceItemModelObj.circleImage!.value,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 8.v,
            bottom: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  priceItemModelObj.price!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 8.v),
              Obx(
                () => Text(
                  priceItemModelObj.cottonBlackDress!.value,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
