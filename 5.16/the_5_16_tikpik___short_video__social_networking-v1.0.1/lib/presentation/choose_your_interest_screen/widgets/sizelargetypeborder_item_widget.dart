import '../models/sizelargetypeborder_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class SizelargetypeborderItemWidget extends StatelessWidget {
  SizelargetypeborderItemWidget(
    this.sizelargetypeborderItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  SizelargetypeborderItemModel sizelargetypeborderItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 11.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          sizelargetypeborderItemModelObj.sizeLargeTypeBorder!,
          style: TextStyle(
            color: (sizelargetypeborderItemModelObj.isSelected ?? false)
                ? theme.colorScheme.onErrorContainer
                : appTheme.gray600,
            fontSize: 18.fSize,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
          ),
        ),
        selected: (sizelargetypeborderItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primary,
        shape: (sizelargetypeborderItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  22.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray600,
                  width: 2.h,
                ),
                borderRadius: BorderRadius.circular(
                  22.h,
                ),
              ),
        onSelected: (value) {
          onSelectedChipView1?.call(value);
        },
      ),
    );
  }
}
