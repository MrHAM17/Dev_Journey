import '../models/widget2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class Widget2ItemWidget extends StatelessWidget {
  Widget2ItemWidget(
    this.widget2ItemModelObj, {
    Key? key,
    this.onSelectedChipView2,
  }) : super(
          key: key,
        );

  Widget2ItemModel widget2ItemModelObj;

  Function(bool)? onSelectedChipView2;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 18.v,
        right: 19.h,
        bottom: 18.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        widget2ItemModelObj.buttonCategory!,
        style: TextStyle(
          color: appTheme.blueGray80001,
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgClose,
        height: 18.v,
        width: 15.h,
        margin: EdgeInsets.only(right: 8.h),
      ),
      selected: (widget2ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray100,
      selectedColor: appTheme.gray100,
      shape: (widget2ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray80001.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                25.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                25.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView2?.call(value);
      },
    );
  }
}
