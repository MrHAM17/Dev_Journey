import '../models/layout17_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class Layout17ItemWidget extends StatelessWidget {
  Layout17ItemWidget(
    this.layout17ItemModelObj, {
    Key? key,
    this.onSelectedChipView2,
  }) : super(
          key: key,
        );

  Layout17ItemModel layout17ItemModelObj;

  Function(bool)? onSelectedChipView2;

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
        layout17ItemModelObj.buttonCategory!,
        style: TextStyle(
          color: (layout17ItemModelObj.isSelected ?? false)
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
        width: 16.h,
        margin: EdgeInsets.only(right: 8.h),
      ),
      selected: (layout17ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray100,
      selectedColor: theme.colorScheme.primary,
      shape: (layout17ItemModelObj.isSelected ?? false)
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
