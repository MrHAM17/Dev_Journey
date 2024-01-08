import '../models/transactiontype_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class TransactiontypeItemWidget extends StatelessWidget {
  TransactiontypeItemWidget(
    this.transactiontypeItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  TransactiontypeItemModel transactiontypeItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 16.v,
        right: 20.h,
        bottom: 16.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        transactiontypeItemModelObj.layout!,
        style: TextStyle(
          color: (transactiontypeItemModelObj.isSelected ?? false)
              ? appTheme.blueGray80001
              : appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgClose,
        height: 18.v,
        width: 15.h,
        margin: EdgeInsets.only(right: 8.h),
      ),
      selected: (transactiontypeItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.greenA400,
      selectedColor: appTheme.gray100,
      shape: (transactiontypeItemModelObj.isSelected ?? false)
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
    );
  }
}
