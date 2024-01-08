import '../models/frame3_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class Frame3ItemWidget extends StatelessWidget {
  Frame3ItemWidget(
    this.frame3ItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  Frame3ItemModel frame3ItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 8.v,
        right: 8.h,
        bottom: 8.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        frame3ItemModelObj.tabs!,
        style: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgClock,
        height: 16.adaptSize,
        width: 16.adaptSize,
        margin: EdgeInsets.only(right: 4.h),
      ),
      selected: (frame3ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray900,
      selectedColor: appTheme.gray900,
      shape: (frame3ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.whiteA700.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                17.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                17.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
