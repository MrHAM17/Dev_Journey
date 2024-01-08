import '../models/flashsale_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_01_e_commerce/core/app_export.dart';

// ignore: must_be_immutable
class FlashsaleItemWidget extends StatelessWidget {
  FlashsaleItemWidget(
    this.flashsaleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FlashsaleItemModel flashsaleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      width: 141.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: flashsaleItemModelObj?.image,
            height: 109.adaptSize,
            width: 109.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 105.h,
            child: Text(
              flashsaleItemModelObj.fSNikeAirMax!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            flashsaleItemModelObj.price!,
            style: CustomTextStyles.labelLargePrimary,
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              Text(
                flashsaleItemModelObj.price1!,
                style: CustomTextStyles.bodySmall10.copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  flashsaleItemModelObj.offer!,
                  style: theme.textTheme.labelMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
