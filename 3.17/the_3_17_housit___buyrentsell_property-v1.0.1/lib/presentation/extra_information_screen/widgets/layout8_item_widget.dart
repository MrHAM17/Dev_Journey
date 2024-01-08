import '../models/layout8_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Layout8ItemWidget extends StatelessWidget {
  Layout8ItemWidget(
    this.layout8ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout8ItemModel layout8ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 7.v),
            child: Text(
              layout8ItemModelObj.bedroom!,
              style: CustomTextStyles.labelLargeSemiBold,
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 30.adaptSize,
            width: 30.adaptSize,
            child: CustomImageView(
              imagePath: ImageConstant.imgCloseOnprimarycontainer,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 8.v,
              bottom: 2.v,
            ),
            child: Text(
              layout8ItemModelObj.text!,
              style: CustomTextStyles.titleMedium16,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.h),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgCloseOnprimarycontainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
