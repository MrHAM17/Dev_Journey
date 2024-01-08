import '../controller/card_added_controller.dart';
import '../models/cardadded_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';

// ignore: must_be_immutable
class CardaddedItemWidget extends StatelessWidget {
  CardaddedItemWidget(
    this.cardaddedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardaddedItemModel cardaddedItemModelObj;

  var controller = Get.find<CardAddedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.outlineBlack9000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: cardaddedItemModelObj.paypal!.value,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 7.v,
              bottom: 2.v,
            ),
            child: Obx(
              () => Text(
                cardaddedItemModelObj.paypal1!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgContrastPrimary20x20,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 6.v,
              right: 8.h,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }
}
