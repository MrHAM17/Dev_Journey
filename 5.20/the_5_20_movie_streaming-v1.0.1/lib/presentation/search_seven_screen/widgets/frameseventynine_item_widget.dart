import '../models/frameseventynine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class FrameseventynineItemWidget extends StatelessWidget {
  FrameseventynineItemWidget(
    this.frameseventynineItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  FrameseventynineItemModel frameseventynineItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 9.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        frameseventynineItemModelObj.tags!,
        style: TextStyle(
          color: appTheme.whiteA700.withOpacity(0.66),
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (frameseventynineItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.onSecondaryContainer,
      selectedColor: theme.colorScheme.onSecondaryContainer,
      shape: (frameseventynineItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.onSecondaryContainer.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                17.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                17.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
