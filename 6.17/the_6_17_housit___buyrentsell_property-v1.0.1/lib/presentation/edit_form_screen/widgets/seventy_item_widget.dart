import '../models/seventy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class SeventyItemWidget extends StatelessWidget {
  SeventyItemWidget(
    this.seventyItemModelObj, {
    Key? key,
    this.onSelectedChipView5,
  }) : super(
          key: key,
        );

  SeventyItemModel seventyItemModelObj;

  Function(bool)? onSelectedChipView5;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 19.v,
        right: 27.h,
        bottom: 19.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        seventyItemModelObj.buttonCategory!,
        style: TextStyle(
          color: (seventyItemModelObj.isSelected ?? false)
              ? appTheme.whiteA700
              : appTheme.blueGray80001,
          fontSize: 10.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgClose,
        height: 18.v,
        width: 15.h,
        margin: EdgeInsets.only(right: 8.h),
      ),
      selected: (seventyItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray100,
      selectedColor: theme.colorScheme.primary,
      shape: (seventyItemModelObj.isSelected ?? false)
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
        onSelectedChipView5?.call(value);
      },
    );
  }
}
