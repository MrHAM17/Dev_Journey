import '../models/frametwentyfour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_06_helthio___telehealth/core/app_export.dart';

// ignore: must_be_immutable
class FrametwentyfourItemWidget extends StatelessWidget {
  FrametwentyfourItemWidget(
    this.frametwentyfourItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  FrametwentyfourItemModel frametwentyfourItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 16.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        frametwentyfourItemModelObj.covidNineteen!,
        style: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: (frametwentyfourItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.primary,
      selectedColor: theme.colorScheme.primary,
      shape: (frametwentyfourItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.whiteA700.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
