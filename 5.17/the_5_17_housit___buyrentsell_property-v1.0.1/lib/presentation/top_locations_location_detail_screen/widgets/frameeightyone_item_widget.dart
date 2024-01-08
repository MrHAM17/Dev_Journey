import '../models/frameeightyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class FrameeightyoneItemWidget extends StatelessWidget {
  FrameeightyoneItemWidget(
    this.frameeightyoneItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  FrameeightyoneItemModel frameeightyoneItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.only(
          top: 16.v,
          right: 10.h,
          bottom: 16.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          frameeightyoneItemModelObj.buttonFilter!,
          style: TextStyle(
            color: appTheme.blueGray80001,
            fontSize: 14.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgIconClose,
          height: 10.adaptSize,
          width: 10.adaptSize,
          margin: EdgeInsets.only(right: 19.h),
        ),
        selected: (frameeightyoneItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.deepPurpleA20033,
        shape: (frameeightyoneItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  25.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  25.h,
                ),
              ),
        onSelected: (value) {
          onSelectedChipView1?.call(value);
        },
      ),
    );
  }
}
