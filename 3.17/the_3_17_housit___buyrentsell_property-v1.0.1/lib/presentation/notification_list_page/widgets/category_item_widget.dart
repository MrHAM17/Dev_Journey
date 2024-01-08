import '../models/category_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class CategoryItemWidget extends StatelessWidget {
  CategoryItemWidget(
    this.categoryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategoryItemModel categoryItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      width: 87.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 18.v,
            width: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              categoryItemModelObj.all!,
              style: CustomTextStyles.labelLargeGray100,
            ),
          ),
        ],
      ),
    );
  }
}
