import '../models/switchaccount_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class SwitchaccountItemWidget extends StatelessWidget {
  SwitchaccountItemWidget(
    this.switchaccountItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SwitchaccountItemModel switchaccountItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 208.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: switchaccountItemModelObj?.andrewAinsley,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  30.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      switchaccountItemModelObj.name!,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      switchaccountItemModelObj.information!,
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: switchaccountItemModelObj?.andrewAinsley1,
          height: 28.adaptSize,
          width: 28.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 16.v),
        ),
      ],
    );
  }
}
