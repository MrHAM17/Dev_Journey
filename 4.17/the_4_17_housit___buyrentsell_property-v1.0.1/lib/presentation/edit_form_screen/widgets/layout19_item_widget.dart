import '../models/layout19_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class Layout19ItemWidget extends StatelessWidget {
  Layout19ItemWidget(
    this.layout19ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout19ItemModel layout19ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 19.v,
          right: 26.h,
          bottom: 19.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          layout19ItemModelObj.buttonCategory!.value,
          style: TextStyle(
            color: (layout19ItemModelObj.isSelected?.value ?? false)
                ? appTheme.blueGray80001
                : appTheme.whiteA700,
            fontSize: 10.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 18.v,
          width: 15.h,
          margin: EdgeInsets.only(right: 9.h),
        ),
        selected: (layout19ItemModelObj.isSelected?.value ?? false),
        backgroundColor: theme.colorScheme.primary,
        selectedColor: appTheme.gray100,
        shape: (layout19ItemModelObj.isSelected?.value ?? false)
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
          layout19ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
