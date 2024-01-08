import '../models/layout4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class Layout4ItemWidget extends StatelessWidget {
  Layout4ItemWidget(
    this.layout4ItemModelObj, {
    Key? key,
    this.onSelectedChipView2,
  }) : super(
          key: key,
        );

  Layout4ItemModel layout4ItemModelObj;

  Function(bool)? onSelectedChipView2;

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
        layout4ItemModelObj.buttonCategory!,
        style: TextStyle(
          color: (layout4ItemModelObj.isSelected ?? false)
              ? appTheme.whiteA700
              : appTheme.blueGray80001,
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgClose,
        height: 18.v,
        width: 16.h,
        margin: EdgeInsets.only(right: 8.h),
      ),
      selected: (layout4ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray100,
      selectedColor: theme.colorScheme.primary,
      shape: (layout4ItemModelObj.isSelected ?? false)
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
        onSelectedChipView2?.call(value);
      },
    );
  }
}
