import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class Frame4ItemWidget extends StatelessWidget {
  const Frame4ItemWidget({Key? key})
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
          horizontal: 16.h,
          vertical: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "S",
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontSize: 14.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray200,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            7.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
