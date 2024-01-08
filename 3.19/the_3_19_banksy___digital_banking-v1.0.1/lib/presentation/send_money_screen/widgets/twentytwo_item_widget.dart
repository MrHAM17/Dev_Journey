import '../models/twentytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_19_banksy___digital_banking/core/app_export.dart';

// ignore: must_be_immutable
class TwentytwoItemWidget extends StatelessWidget {
  TwentytwoItemWidget(
    this.twentytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwentytwoItemModel twentytwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: twentytwoItemModelObj?.belgeman,
          height: 48.adaptSize,
          width: 48.adaptSize,
          radius: BorderRadius.circular(
            24.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 3.v,
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                twentytwoItemModelObj.jenningsChamplin!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 3.v),
              Text(
                twentytwoItemModelObj.jenningsChamplin1!,
                style: CustomTextStyles.bodySmallOnPrimaryContainer,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgCheckmarkGray400,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 12.v),
        ),
      ],
    );
  }
}