import '../models/layout6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class Layout6ItemWidget extends StatelessWidget {
  Layout6ItemWidget(
    this.layout6ItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  Layout6ItemModel layout6ItemModelObj;

  Function(bool)? onSelectedChipView1;

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
        layout6ItemModelObj.buttonCategory!,
        style: TextStyle(
          color: (layout6ItemModelObj.isSelected ?? false)
              ? appTheme.blueGray80001
              : appTheme.whiteA700,
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgClose,
        height: 18.v,
        width: 15.h,
        margin: EdgeInsets.only(right: 9.h),
      ),
      selected: (layout6ItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.primary,
      selectedColor: appTheme.gray100,
      shape: (layout6ItemModelObj.isSelected ?? false)
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
        onSelectedChipView1?.call(value);
      },
    );
  }
}
