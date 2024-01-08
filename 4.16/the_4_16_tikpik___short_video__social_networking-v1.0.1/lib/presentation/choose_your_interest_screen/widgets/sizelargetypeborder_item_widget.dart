import '../models/sizelargetypeborder_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class SizelargetypeborderItemWidget extends StatelessWidget {
  SizelargetypeborderItemWidget(
    this.sizelargetypeborderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SizelargetypeborderItemModel sizelargetypeborderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
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
            sizelargetypeborderItemModelObj.sizeLargeTypeBorder!.value,
            style: TextStyle(
              color:
                  (sizelargetypeborderItemModelObj.isSelected?.value ?? false)
                      ? theme.colorScheme.onErrorContainer
                      : appTheme.gray600,
              fontSize: 18.fSize,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w700,
            ),
          ),
          selected:
              (sizelargetypeborderItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: theme.colorScheme.primary,
          shape: (sizelargetypeborderItemModelObj.isSelected?.value ?? false)
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
            sizelargetypeborderItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
