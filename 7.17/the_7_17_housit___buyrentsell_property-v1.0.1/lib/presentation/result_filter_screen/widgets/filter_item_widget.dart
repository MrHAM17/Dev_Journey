import 'package:flutter/material.dart';
import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class FilterItemWidget extends StatelessWidget {
  const FilterItemWidget({Key? key})
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
        padding: EdgeInsets.only(
          top: 17.v,
          right: 10.h,
          bottom: 17.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "House",
          style: TextStyle(
            color: appTheme.blueGray80001,
            fontSize: 12.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w400,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgIconClose,
          height: 10.adaptSize,
          width: 10.adaptSize,
          margin: EdgeInsets.only(right: 15.h),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.tealA70026.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(
            25.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
