import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class SizelargetypeborderItemWidget extends StatelessWidget {
  const SizelargetypeborderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 11.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Gaming",
          style: TextStyle(
            color: appTheme.gray600,
            fontSize: 18.fSize,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray600,
            width: 2.h,
          ),
          borderRadius: BorderRadius.circular(
            22.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
