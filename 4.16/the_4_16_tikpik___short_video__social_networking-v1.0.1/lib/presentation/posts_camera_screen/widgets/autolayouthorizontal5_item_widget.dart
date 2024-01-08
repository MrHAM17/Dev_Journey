import '../models/autolayouthorizontal5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class Autolayouthorizontal5ItemWidget extends StatelessWidget {
  Autolayouthorizontal5ItemWidget(
    this.autolayouthorizontal5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Autolayouthorizontal5ItemModel autolayouthorizontal5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 7.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          autolayouthorizontal5ItemModelObj.m!.value,
          style: TextStyle(
            color: appTheme.gray500,
            fontSize: 14.fSize,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected:
            (autolayouthorizontal5ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray80099,
        selectedColor: appTheme.gray80099,
        shape: (autolayouthorizontal5ItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray500.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
        onSelected: (value) {
          autolayouthorizontal5ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
