import '../controller/card_details_controller.dart';
import '../models/carddetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CarddetailsItemWidget extends StatelessWidget {
  CarddetailsItemWidget(
    this.carddetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CarddetailsItemModel carddetailsItemModelObj;

  var controller = Get.find<CardDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.white,
      child: Row(
        children: [
          Obx(
            () => CustomIconButton(
              height: 56.adaptSize,
              width: 56.adaptSize,
              padding: EdgeInsets.all(16.h),
              decoration: IconButtonStyleHelper.fillOnPrimary,
              child: CustomImageView(
                imagePath: carddetailsItemModelObj.cart!.value,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    carddetailsItemModelObj.shopping!.value,
                    style: CustomTextStyles.titleMedium18,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    carddetailsItemModelObj.time!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 15.v,
              right: 8.h,
              bottom: 18.v,
            ),
            child: Obx(
              () => Text(
                carddetailsItemModelObj.price!.value,
                style: CustomTextStyles.titleMediumRed700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
