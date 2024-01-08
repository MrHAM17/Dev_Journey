import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(
    this.homeItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  HomeItemModel homeItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 8.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        homeItemModelObj.home!,
        style: TextStyle(
          color: theme.colorScheme.primaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: (homeItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray50,
      selectedColor: appTheme.gray50,
      shape: (homeItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray50.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                18.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray500,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                18.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
