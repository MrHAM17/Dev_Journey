import 'package:flutter/material.dart';
import 'package:the_7_05_blog_app/core/app_export.dart';

// ignore: must_be_immutable
class Intrestrow1ItemWidget extends StatelessWidget {
  const Intrestrow1ItemWidget({Key? key})
      : super(
          key: key,
        );

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
        "Art",
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.whiteA700,
      selectedColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.gray600,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          19.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
