import '../models/layout22_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class Layout22ItemWidget extends StatelessWidget {
  Layout22ItemWidget(
    this.layout22ItemModelObj, {
    Key? key,
    this.onSelectedChipView4,
  }) : super(
          key: key,
        );

  Layout22ItemModel layout22ItemModelObj;

  Function(bool)? onSelectedChipView4;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 19.v,
        right: 24.h,
        bottom: 19.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        layout22ItemModelObj.buttonCategory!,
        style: TextStyle(
          color: (layout22ItemModelObj.isSelected ?? false)
              ? appTheme.whiteA700
              : appTheme.blueGray80001,
          fontSize: 10.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgClose,
        height: 18.v,
        width: 15.h,
        margin: EdgeInsets.only(right: 16.h),
      ),
      selected: (layout22ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray100,
      selectedColor: theme.colorScheme.primary,
      shape: (layout22ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
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
        onSelectedChipView4?.call(value);
      },
    );
  }
}
