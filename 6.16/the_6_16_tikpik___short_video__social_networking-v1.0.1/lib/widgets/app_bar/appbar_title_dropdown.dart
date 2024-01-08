import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class AppbarTitleDropdown extends StatelessWidget {
  AppbarTitleDropdown({
    Key? key,
    required this.hintText,
    required this.items,
    required this.onTap,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  List<SelectionPopupModel> items;

  Function(SelectionPopupModel) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 152.h,
        icon: Container(
          margin: EdgeInsets.only(left: 9.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowdownGray900,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        hintText: "lbl_all_activity".tr,
        items: items,
        onChanged: (value) {
          onTap(value!);
        },
      ),
    );
  }
}
