import '../models/popularproduct_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PopularproductItemWidget extends StatelessWidget {
  PopularproductItemWidget(
    this.popularproductItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PopularproductItemModel popularproductItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      width: 118.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 11.v),
          CustomImageView(
            imagePath: popularproductItemModelObj?.panadol,
            height: 58.v,
            width: 56.h,
            radius: BorderRadius.circular(
              29.h,
            ),
            alignment: Alignment.center,
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              popularproductItemModelObj.panadol1!,
              style: CustomTextStyles.titleSmallOnPrimary,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              popularproductItemModelObj.pcs!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                Text(
                  popularproductItemModelObj.price!,
                  style: CustomTextStyles.titleSmallBlack900,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 42.h),
                  child: CustomIconButton(
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    child: CustomImageView(
                      imagePath: popularproductItemModelObj?.close,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
