import '../models/layout11_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class Layout11ItemWidget extends StatelessWidget {
  Layout11ItemWidget(
    this.layout11ItemModelObj, {
    Key? key,
    this.onSelectedChipView3,
  }) : super(
          key: key,
        );

  Layout11ItemModel layout11ItemModelObj;

  Function(bool)? onSelectedChipView3;

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
        layout11ItemModelObj.buttonCategory!,
        style: TextStyle(
          color: (layout11ItemModelObj.isSelected ?? false)
              ? appTheme.blueGray80001
              : appTheme.gray100,
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgClose,
        height: 18.v,
        width: 15.h,
        margin: EdgeInsets.only(right: 8.h),
      ),
      selected: (layout11ItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.primary,
      selectedColor: appTheme.gray100,
      shape: (layout11ItemModelObj.isSelected ?? false)
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
        onSelectedChipView3?.call(value);
      },
    );
  }
}
