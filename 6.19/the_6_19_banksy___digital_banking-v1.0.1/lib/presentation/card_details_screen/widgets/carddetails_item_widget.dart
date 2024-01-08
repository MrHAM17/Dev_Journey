import '../models/carddetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CarddetailsItemWidget extends StatelessWidget {
  CarddetailsItemWidget(
    this.carddetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CarddetailsItemModel carddetailsItemModelObj;

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
          CustomIconButton(
            height: 56.adaptSize,
            width: 56.adaptSize,
            padding: EdgeInsets.all(16.h),
            decoration: IconButtonStyleHelper.fillOnPrimary,
            child: CustomImageView(
              imagePath: carddetailsItemModelObj?.cart,
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
                Text(
                  carddetailsItemModelObj.shopping!,
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 3.v),
                Text(
                  carddetailsItemModelObj.time!,
                  style: theme.textTheme.bodyMedium,
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
            child: Text(
              carddetailsItemModelObj.price!,
              style: CustomTextStyles.titleMediumRed700,
            ),
          ),
        ],
      ),
    );
  }
}
