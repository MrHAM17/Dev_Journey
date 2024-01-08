import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class FrameseventynineItemWidget extends StatelessWidget {
  const FrameseventynineItemWidget({Key? key})
      : super(
          key: key,
        );

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
        "Mark Love",
        style: TextStyle(
          color: appTheme.whiteA700.withOpacity(0.66),
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.onSecondaryContainer,
      selectedColor: theme.colorScheme.onSecondaryContainer,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          17.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
