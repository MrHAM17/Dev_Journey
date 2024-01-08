import '../models/options2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';

// ignore: must_be_immutable
class Options2ItemWidget extends StatelessWidget {
  Options2ItemWidget(
    this.options2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Options2ItemModel options2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          options2ItemModelObj.freeWiFi!.value,
          style: TextStyle(
            color: theme.colorScheme.primaryContainer,
            fontSize: 14.fSize,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (options2ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray50,
        selectedColor: appTheme.gray50,
        shape: (options2ItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray50.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueGray500,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              ),
        onSelected: (value) {
          options2ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
