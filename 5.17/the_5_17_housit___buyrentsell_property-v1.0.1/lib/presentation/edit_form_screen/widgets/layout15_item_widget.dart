import '../models/layout15_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class Layout15ItemWidget extends StatelessWidget {
  Layout15ItemWidget(
    this.layout15ItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  Layout15ItemModel layout15ItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 19.v,
        right: 25.h,
        bottom: 19.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        layout15ItemModelObj.buttonCategory!,
        style: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 10.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgClose,
        height: 18.v,
        width: 16.h,
        margin: EdgeInsets.only(right: 8.h),
      ),
      selected: (layout15ItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.primary,
      selectedColor: theme.colorScheme.primary,
      shape: (layout15ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.whiteA700.withOpacity(0.6),
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
        onSelectedChipView1?.call(value);
      },
    );
  }
}
