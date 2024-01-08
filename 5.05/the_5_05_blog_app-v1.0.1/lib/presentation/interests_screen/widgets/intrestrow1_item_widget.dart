import '../models/intrestrow1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';

// ignore: must_be_immutable
class Intrestrow1ItemWidget extends StatelessWidget {
  Intrestrow1ItemWidget(
    this.intrestrow1ItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  Intrestrow1ItemModel intrestrow1ItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 9.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        intrestrow1ItemModelObj.chips!,
        style: TextStyle(
          color: (intrestrow1ItemModelObj.isSelected ?? false)
              ? appTheme.whiteA700
              : appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (intrestrow1ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.whiteA700,
      selectedColor: theme.colorScheme.primary,
      shape: (intrestrow1ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                19.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray600,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                19.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
