import '../models/framefive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_11_hired___job_search/core/app_export.dart';

// ignore: must_be_immutable
class FramefiveItemWidget extends StatelessWidget {
  FramefiveItemWidget(
    this.framefiveItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  FramefiveItemModel framefiveItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 6.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        framefiveItemModelObj.fulltime!,
        style: TextStyle(
          color: appTheme.blueGray400,
          fontSize: 12.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (framefiveItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray100,
      selectedColor: appTheme.gray100,
      shape: (framefiveItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray400.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}