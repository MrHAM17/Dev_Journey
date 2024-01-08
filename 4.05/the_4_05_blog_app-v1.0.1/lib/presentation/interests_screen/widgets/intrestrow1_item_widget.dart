import '../models/intrestrow1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_05_blog_app/core/app_export.dart';

// ignore: must_be_immutable
class Intrestrow1ItemWidget extends StatelessWidget {
  Intrestrow1ItemWidget(
    this.intrestrow1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Intrestrow1ItemModel intrestrow1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 9.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          intrestrow1ItemModelObj.chips!.value,
          style: TextStyle(
            color: (intrestrow1ItemModelObj.isSelected?.value ?? false)
                ? appTheme.whiteA700
                : appTheme.black900,
            fontSize: 14.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (intrestrow1ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.whiteA700,
        selectedColor: theme.colorScheme.primary,
        shape: (intrestrow1ItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  19.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray600,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  19.h,
                ),
              ),
        onSelected: (value) {
          intrestrow1ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
