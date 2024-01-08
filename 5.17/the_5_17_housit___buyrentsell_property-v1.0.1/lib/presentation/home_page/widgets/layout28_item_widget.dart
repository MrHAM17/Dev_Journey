import '../models/layout28_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class Layout28ItemWidget extends StatelessWidget {
  Layout28ItemWidget(
    this.layout28ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout28ItemModel layout28ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder28,
      ),
      width: 89.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: layout28ItemModelObj?.bali,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 10.v,
              bottom: 12.v,
            ),
            child: Text(
              layout28ItemModelObj.bali1!,
              style: CustomTextStyles.titleSmallMedium,
            ),
          ),
        ],
      ),
    );
  }
}
